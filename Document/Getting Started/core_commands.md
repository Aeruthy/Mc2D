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
