-- ***************************************************************
--
-- Copyright 2019 by Sean Conner.  All Rights Reserved.
--
-- This library is free software; you can redistribute it and/or modify it
-- under the terms of the GNU Lesser General Public License as published by
-- the Free Software Foundation; either version 3 of the License, or (at your
-- option) any later version.
--
-- This library is distributed in the hope that it will be useful, but
-- WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
-- or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public
-- License for more details.
--
-- You should have received a copy of the GNU Lesser General Public License
-- along with this library; if not, see <http://www.gnu.org/licenses/>.
--
-- Comments, questions and criticisms can be sent to: sean@conman.org
--
-- ====================================================================
--
-- Validate a valid UTF-8 character.
--
-- ********************************************************************
-- luacheck: ignore 611
-- RFC-3629
--
-- Characters 192-193 and 245-255 will never appear in proper UTF-8
-- encoding.

return require "org.conman.parsers.utf8.char"
     + require "org.conman.parsers.ascii.char"
     + require "org.conman.parsers.utf8.control"
     + require "org.conman.parsers.ascii.control"
