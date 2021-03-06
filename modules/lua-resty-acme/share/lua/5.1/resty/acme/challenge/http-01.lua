local _M = {}
local mt = {__index = _M}

function _M.new(storage)
  local self = setmetatable({
    -- TODO: will this ever change?
    uri_prefix = "acme-challenge",
    storage = storage,
  }, mt)
  return self
end

local function ch_key(challenge)
  return challenge .. "#http-01"
end


function _M:register_challenge(challenge, response, _--[[domains]])
  return self.storage:set(ch_key(challenge), response, 3600)
end

function _M:cleanup_challenge(challenge, _--[[domains]])
  return self.storage:delete(ch_key(challenge))
end

function _M:serve_challenge()
  if ngx.config.subsystem ~= "http" then
    ngx.log(ngx.ERR, "http-01 challenge can't be used in ", ngx.config.subsystem, " subsystem")
    ngx.exit(500)
  end

  local uri = ngx.var.request_uri

  local captures, err =
    ngx.re.match(ngx.var.request_uri, [[\.well-known/]] .. self.uri_prefix .. "/(.+)", "jo")

  if err or not captures[1] then
    ngx.log(ngx.ERR, "error extracting token from request_uri ", err)
    ngx.exit(400)
  end

  local token = captures[1]

  ngx.log(ngx.DEBUG, "token is ", token)

  local value, err = self.storage:get(ch_key(token))

  if err then
    ngx.log(ngx.ERR, "error getting challenge response from storage ", err)
    ngx.exit(500)
  end

  if not value then
    ngx.log(ngx.WARN, "no corresponding response found for ", token)
    ngx.exit(404)
  end

  ngx.say(value)
  -- this following must be set to allow the library to be used in other openresty framework
  ngx.exit(0)
end

return _M
