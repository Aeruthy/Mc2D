_G.love = require 'love'

function love.load()
    McLua = require 'McLua'
    McLua.commands.scoreboard:ObjectiveAdd("bru", Dummy, 10)
    OP = McLua.commands.scoreboard:GlobalSee("bru")
    McLua.commands.scoreboard:ObjectiveSet("bru", 100)
    OP = McLua.commands.scoreboard:GlobalSee("bru")

    MOB = {}
    McLua.entity:SummonByPort("MainPlayer", ControllableEntityPort, MOB)
    McLua.entity:ControlMobLogic("MainPlayer", function(tick)
        McLua.scripting.input:InputChord(function()
            
        end, InputTouchOncePort, "a")
    end)
    McLua.entity:SetDrawAttribute("MainPlayer", {OutlineDrawnMode, 25, 25})
end

function love.update(tick)
    McLua:UPDATE(tick)
end

function love.draw()
    McLua:SRAW()
end