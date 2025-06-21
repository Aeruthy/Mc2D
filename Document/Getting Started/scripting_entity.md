# Getting Started
Get Started Scripting Your Entities in
Mc2D using Mc2D.entity:ControlMobLogic()!

# Examples
This is a A-D Movement System For An Entity
i Have Created.

```lua
function love.load()
   -- Let's Say you Used SummonByPort(),
   -- And SetDrawAttribute Already. So you Have
   -- An Entity with a MainTag of "Player".

   Mc2D.entity:ControlMobLogic("Player", function(tick)
      -- A Separate Documentation for Mc2D.scripting.
      local IS = Mc2D.scripting.input

      -- Let's Bind The A key to moving the Entity to The Left.
      Mc2D.commands.execute:As("Player", function(entity)
         IS:InputChord(InputBindPort, "a", function()
            entity.position.x = entity.position.x - 230 *tick
         end)
         IS:InputChord(InputBindPort, "d", function()
            entity.position.x = entity.position.x + 230 *tick
         end)
      end)
   end)
end

function love.update(dt)
   Mc2D:UPDATE(dt)
end

function love.draw()
   Mc2D:SRAW()
end
```

What this Code Allows You is, You can Move
Your Entity With By Holding down a Key that
is Binded. InputChord() is Still Experimental As
It may Change in the Near Future.
