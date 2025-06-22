# Getting Started
This Section is Targeted to Using the Commands available In this Extension. As More Commands came, More Docs will be Available.

# Execute
Execute works In Mc2D in a Basic Structure like:
```json
{
   "execute": {
      "as": "MainTag",
      "at": "Coming Soon..."
   }
}
```

Although Using This Command in Mc2D is still not Very Usable Due it It's Early Development. As of now, You can Use this Command to use Mc2d.commands.execute:As().

for Demonstration:
```lua
Mc2D.commands.execute:As("YourMainTag", function(entity)
   -- Do the Logic of your Entity using Mc2D.commands.execute:As().
end)
```

# Scoreboard
Scoreboard Objectives is Just Variables in Minecraft's Real scoreboard command, But in Mc2D. You will be Able to Do more than Using it as Variables to Hold Numbers.

All Of the Available Ports Or Type to Be Used In the Scoreboard Command is still Little:

```json
{
   "ports": {
      "Dummy": "Type:DummyStored",
      "String": "Type:StringStored"
   }
}
```

However. Me and Lukas Will be Working on this Feature To be Implemented after The Execute command.

Examples on making a Objective:
```lua
function love.load()
   -- Make an Objective
   Mc2D.commands.scoreboard:ObjectiveAdd("ObjectiveName", Dummy, 10)


end
```

If You Have an Objective, 
