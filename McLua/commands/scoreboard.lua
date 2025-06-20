-- Score Core: ["Name", Dummy, <count>]
_G.Scoreboard = {}
Scoreboard.Scores = {}

-- Dummy Implementation
function _G.Dummy()
    return "Type:Dummy"
end

-- /scoreboard objectives add Name dummy 0
function Scoreboard:ObjectiveAdd(String, EnumType, score)
    local tempScore = {}
    tempScore[1] = String or "SCORE"
    tempScore[2] = EnumType()
    tempScore[3] = score or 0

    print("[-]: Objective " .. String .. " Created as " .. EnumType() .. ", Success.")
    table.insert(Scoreboard.Scores, tempScore)
end

-- /scoreboard global see Name
function Scoreboard:GlobalSee(name)
    for i, v in ipairs(Scoreboard.Scores) do
        if v[1] == tostring(name) then
            print("[+]: Seen Value of v[1] (" .. tostring(v[2]) .. "), Success.")
            return v[3]
        end
    end
end

-- /scoreboard players set _G score 0
function Scoreboard:ObjectiveSet(Objective, score)
     for i, v in ipairs(Scoreboard.Scores) do
        if v[1] == tostring(Objective) then
            print("[%]: Objective " .. '"' ..Objective..'"'.. " Overriden, Success.")
            v[3] = score
        end
    end
end

return Scoreboard