--- Global configuration file.
--
-- @module luchia.conf
-- @author Chad Phillips
-- @copyright 2011-2015 Chad Phillips

local _M = {}

_M.default = {}

--- The default server.
--
-- When no server object is created specifically, the default server is used.
-- @field protocol
--   Required. The protocol to use, currently only "http" is allowed.
-- @field host
--   Required. The host name, eg. "localhost" or "www.example.com".
-- @field port
--   Required. The port to use, eg. "5984".
-- @field user
--   Optional. For authentication scenarios, the user to authenticate as.
-- @field password
--   Optional. For authentication scenarios, the user's password.
-- @class table
-- @name default.server
_M.default.server = {}
_M.default.server.protocol = "http"
_M.default.server.host = "localhost"
_M.default.server.port = "5984"
_M.default.server.user = nil
_M.default.server.password = nil


--- Logging options.
--
-- @field appender
--   Where to log messages. Must be one of "console", "file", false (disables
--   logging).
-- @field level
--   Minimum level of messages to log. Must be one of "DEBUG", "INFO", "WARN",
--   "ERROR", "FATAL"
-- @field format
--   String format for logged messages.  Tokens are %date, %level, %message,
--   eg. "%level %message\n".
-- @field file
--   Full path of a file to log to if appender is set to "file", eg.
--   "/tmp/luchia.log".
-- @class table
-- @name log
_M.log = {}
_M.log.appender = "file"
_M.log.level = "DEBUG"
_M.log.format = "%level %message\n"
_M.log.file = "/tmp/luchia.log"

return _M
