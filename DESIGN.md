# Cautious Journey (Temp Title) Game Design Doc

## PIG Squad Summer Slow Jam - July 2026

### **Technical Theme**: Inventory | **Creative Theme**: Use It or Lose It

### **Team**: [Sage B](https://github.com/b00kworm4lyf3) | [Jarah](https://github.com/Jarah-Marshall) |  [Kyle](https://github.com/kylewood2320) | [Jules](https://github.com/juno9637) | [Emily](https://github.com/emle2899) | [Sage ML](https://github.com/Sage-Morgan-LaRosa)

### [PureRef Inspo Board](/SSJ26Inspo.pur)

## Summary + Overview

You are hired to find cursed items in the stored rooms of a museum, they have a large and cluttered inventory and can't put things on view to the public until they're sure the items are safe. Using your specialized tools (*flashlight/blacklight, geiger counter/other sound based device, need one more thing here probably*), find the cursed items that need to be removed from the collection.

### *Main Mechanic Option 1*

While inspecting items, you discover that you can activate the curses on the items you identify for removal, some of them will even help you find other cursed items! But others will harm your hunt, are you brave enough to take the gamble? The items are only usable for a short amount of time, so make your decision quickly. Use the items and lose their cash value or take the cash and lose out on satisfying your curiosity.

### *Main Mechanic Option 2*

While inspecting items, you discover that identifying them for removal activates the curses. Some of them will help you find other cursed items, but others will harm your hunt. Once you identify an item it's stuck in your inventory -- and therefore impacting your searching abilities -- until you find another item to replace it with. Will you be able to get through this job without losing your mind?

We are building this in [Godot 4.7](https://godotengine.org/)

## Controls and Core Loop

- **Move**: WASD
- **Look**: mouse point
- **Inspect**: left mouse click
- **Use Item**: Number keys to select slot, enter to activate. (*hover for 'tooltips'?*)

### Actions

- **Explore Museum**: Walk around room(*s*), open cupboards, drawers, doors, etc (***BOTH MECHANIC OPTIONS***)
- **Pick Up Items**: Inspect suspicious/anomalous items and identify if they need to be removed (***BOTH MECHANIC OPTIONS***)
- **Cash In**:
  - Take items to exit or drop off point if effect isn't used (***MECHANIC OPTION 1***)
  - Get best score by timer/'lose it' effect (too many bad effects on player at once) (***MECHANIC OPTION 2***)
- **Scores On Items**:
  - Monetary value for unused cursed items --> $/total possible when player decides they want to be done? (***MECHANIC OPTION 1***)
  - Points value for items in effect on player --> good items are +points and bad items are -points (***MECHANIC OPTION 2***)

### Loop Timeframe --> ***NEEDS MORE BRAINSTORMING***

- *Limited time in museum to retrieve items*
- *or have a certain number of loops through the museum to get the highest score possible or beat a predetermined score*

## Mechanics

- The player can pick up and add items to a limited inventory (***How many spaces?***)
- Storage Behaviour:
  - If inventory is full, current items need to be used + placed back in the room OR cashed in at drop off point (***MECHANIC OPTION 1***)
  - Items can be swapped for other items, but not directly dropped (***MECHANIC OPTION 2***)
- The items will have a randomized effect, harmful or helpful, that is hidden
  - until player activates it (***MECHANIC OPTION 1***)
  - until picked up (***MECHANIC OPTION 2***)
- Items have value:
  - Monetary value: items have sell value based on item, total added to monetary display on sale of item(s) (***MECHANIC OPTION 1***)
  - Point value: all items are worth +points or -points based on item effect, total added to dynamic points display (***MECHANIC OPTION 2***)
  
### Search Tools + Effects

- **Flashlight**: activates glow effect on some cursed items
  - Some items may glow after having a light shine on them for some time and then turned off. Effect dims over time after light is turned off

### Item Effects

#### Positive Effects

- *Give more inventory space*
- *Give a geiger counter to help the player find items*
- *Double total item value*
- *Give a brighter flashlight or glow items glow briefly without flashlight*

#### Negative Effects

- *Give less inventory space*
- *Halve total item value*
- *Give a dimmer flashlight*
- *Make the player "trip" or freeze for 3 seconds every 60 seconds*
