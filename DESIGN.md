# Cautious Journey (Temp Title) Game Design Doc

## PIG Squad Summer Slow Jam - July 2026

### **Technical Theme**: Inventory | **Creative Theme**: Use It or Lose It

### **Team**: [Sage B](https://github.com/b00kworm4lyf3) | [Jarah](https://github.com/Jarah-Marshall) |  [Kyle](https://github.com/kylewood2320) | [Jules](https://github.com/juno9637) | [Emily](https://github.com/emle2899) | [Sage ML](https://github.com/Sage-Morgan-LaRosa)

### [PureRef Inspo Board](/SSJ26Inspo.pur)

## Summary + Overview

You are hired to find cursed items in the stored rooms of a museum, they have a large and cluttered inventory and can't put things on view to the public until they're sure the items are safe. Using your specialized tools (*flashlight/blacklight, geiger counter/other sound based device, need one more thing here probably*), find the cursed items that need to be removed from the public collection.

You discover that you can activate the curses on the items you identify for removal, some of them will even help you find other cursed items! But others will harm your hunt, are you brave enough to take the gamble? The items are only usable for a short amount of time, so make your decision quickly. Use the items and lose their cash value or take the cash and lose out on satisfying your curiosity.

We are building this in [Godot 4.7](https://godotengine.org/)

## Controls and Core Loop

- **Move**: WASD
- **Look**: mouse point
- **Inspect**: left mouse click
- **Use Item**: Number keys to select slot, enter to activate. (*Hold shift for tooltips?*)

#### Actions:

- Explore Museum
- Pick up items
- Take items to exit or drop off point
- Scored on items

#### Loop Timeframe

- *Limited time in museum to retrieve items* 
- *or have a certain number of loops through the museum to get the highest score possible or beat a predetermined score*

## Mechanics

- The player can pick up and add items to a *limited* inventory
- *Items can be swapped for other items, but not directly dropped*
- The items will have a randomized effect, harmful or helpful, that is hidden until picked up
- Items have value
  - *Point value: all items are worth 1 point or points based on item and added point display*
  - *Monetary value: items have sell value based on item and added monetary display*
- *Glow effet: Some items may show only after having a light shine on them for some time and then turned off*
 
### Item Effects

#### Positive Effects

- *Give more inventory space*
- *Give a geiger counter to help the player find items*
- *Double total item value*
- *Give a brighter flashlight*

#### Negative Effects

- *Give less inventory space*
- *Halve total item value*
- *Give a dimmer flashlight*
- *Make the player "trip" or freeze for 3 seconds every 60 seconds*

