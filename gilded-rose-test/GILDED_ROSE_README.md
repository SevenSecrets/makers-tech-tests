#Gilded Rose Test

##Usage

Tests can be run with the `rspec` command.

Before starting: Open irb with the `irb` command in terminal, then run `require './lib/gilded_rose'`

1. create a new item using: `item = Item.new(name, sell_in, quality)`
2. place your items into an array
3. create a new Gilded Rose using `gilded_rose = GildedRose.new(items_arr)`
4. pass a day and update the quality etc of the items by running `gilded_rose.update_quality`
5. the GildedRose class has several private methods used in the update_quality method which relate to specific types of items

##Process

1. Looked at the code for a bit
2. Made notes on the code (below)
3. Wrote up a plan of action (in notes)
4. Fixed up and made new tests
5. Changed names of methods and variables where necessary to improve readability
6. Rewrote update_quality to be in three separate methods (item_check_and_increment, aged_brie_update, and backstage_passes_quality_update)
7. Added more tests to improve coverage
8. Extracted the actions for an ordinary item into their own separate method

###Notes:
```
Gilded Rose:

Refactoring existing legacy code

Legacy code:

Two classes; GildedRose and Item

GildedRose has two methods; initialise and update_quality
Item has two methods; initialise and to_s

One test, on GildedRose, which doesn’t even pass and tests the name not changing which isn’t relevant and is testing state

Things to change:

        1. Get rid of weird test, write new ones which actually test methods
        2. Check out the names of methods and variables, some of them look like they need to change
        3. GildedRose.update_quality is massive and has at least a dozen if statements, maybe extract some of that into another class (can’t go into item as that isn’t allowed to change) and other methods
        4. Come back to this

Big oof
```
