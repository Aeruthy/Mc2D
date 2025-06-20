local Module = {}
function _G.len(thing)
    return #thing
end

Module.entity = require 'McLua.server.entities'
Module.commands = require 'McLua.commands'
Module.scripting = require 'McLua.scripts'

function Module:UPDATE(dt)
    for i, v in ipairs(Module.entity.Mobs) do
        v.attr.script()
    end
end

function Module:SRAW()
    for i, v in ipairs(Module.entity.Mobs) do
        v.attr.sraw()
    end
end

return Module