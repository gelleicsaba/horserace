# Horse race game

This is a horse race game written by commodore 64 basic (v2).

## The 'btrend' is used for developing

I use an another python 3 project the 'btrend'. It can be easier to create basic code,
because it have automatic row sequence system, variables or contants with normal longer names, and many unique statements.

## Rules

There is a quest in the game. You have to achived it to finish and win the game.
The quest is that you have to earn such amount of money to purchase all of the hoses.

### Go work in game

In a round you can go work and you will get salary for it.
Every work round take a day. The salary is more as much as you will repair the bad panels.
Take the leaps and repair the panels while the color will be lighter.
The work will be limited by a specific time that will be appear in the display.
Avoid the black parts. If you leap into it, you will be kicked out.

### Bet for horse race

You can get much more money if you bet the horse race. There are seven tracks
and you can choose two track. If the horse(s) win the first or second position in there
you got the money prize.

You will get 1.5 x bet for the first position.\
You will get the bet for the second position.\
You will get 3 x bet for the first and second position.\
Other cases you loose your bet.

#### Speed and strength of horses

The horses have different speed and strength, but it can be changed
relatively in the races. Other things that the speed value can be totally changed after
a random number of occasions.

### Take the money into bank

There are 3 investment that gives money per day. The first two invertment rates
are aternates and the third investments is a lower average rate.
Notice the the rates daily. 
The second investment can reach the most rate, but it can be the lower too.
You can buy or sell the get intake and it is recommended to take money into the best investment.

### Buy houses

If you buy a house, you can get money daily for its rent fee.
You can take that in the house menu.

## Wait a day to get daily intake

You can wait a day in house menu and you will get the daily intake.
Money intakes:
- Intake from bank investments
- Intake from houses rents

Another way that you work or bet, because these means you also wait a day.

## Save or Load game state

You can save or load game state in the menu. If you start game as
cartridge, you must attach a floppy disk too with minimal free space
(e.g. savegame.d64)


## Controls

Main menu:
- A,D,E : Choose menu left/right/select

Work:
- W,S,A,D : move the position
- P : repair
- R : Ready / exit

Horse race menu:

Horse race:
- W,S,R : Choose up/down & continue

Bet menu:
- A,D,E : Choose left/right & Select/Start

Bank menu:
- 1,2,3 : Buy investments I,II,III.
- 4,5,6 : Sell investments I,II,III.
- R : Done/exit

House menu:
- 1 : Rest/Wait
- 2,3,4 : Buy house
- R : Exit

## Start from cartridge or floppy disc

The program will load very fast from cartridge (.crt), but you have to attach a floppy disc to load or save game state.
If you start program from disc (.d64), it will be slower but you don't have to attach plus floppy to load or save game state.

- horserace.d64 : game floppy disc
- horserace.crt : game cartridge
- savegame.d64 : empty disc if you start from cartridge, attach this

## Define contstants

There are some constant value that can change the game difficulty.
These include:
```
{workTime} : Work time limit
{workBadPanels} : Number of bad panels
{workBlackParts} : Number of blck parts

{rate1add}=10 : Bank investment 1. rate minimum value
{rate1rnd}=20 : Bank investment 1. rate additional random value
{rate2add}=2 : Bank investment 2. rate minimum value
{rate2rnd}=43 : Bank investment 2. rate additional random value
{rate3fix}=16 : Bank investment 3. fix rate

{win_rate1st} : Horse race winner, prize rate for 1st position win only
{win_rate2ndAdd} : Horse race, prize rate for additional 2nd position win
{win_rate2nd} : Horse race, prize rate for 2nd position win only

{horses_unpredictable} : during race horse can change (the smaller value - more unpredictable)
{horses_fallrate} : during race horse can fall (the smaller value - more chance)
{horse_str} : horses random strength (the smaller value - the horses are more similar)
{horse_str_add} : horses additional strength (every horse get this value)
{horse_str_term} : random occasions that a horse wont change
{horse_str_term_add} : minimum occasions that a horse wont change (every horse get this value)

{house_price1} : 1st house price
{house_price2} : 2nd house price
{house_price3} : 3rd house price

{houserentperday1} : rent intake per day for 1st house
{houserentperday2} : rent intake per day for 2nd house
```

## Building and create release

Start the 'listen.sh', save the program and the (normal/slow) .prg file will be created.

Create a d64 file with Dirmaster and import the .prg into it.

Start the 'blitz' and attach your .d64. The output will be another (faster) prg file (c/horserace.prg).

Export the 'c/horserace.prg' file with Dirmaster. Remove the other files from d64: remove horserace.prg and z/horserace.prg

After that you can create cartridge file with makecrt.sh.

## Test or release mode

In the 'listen.sh' you can comment the specific line (test or release). Test is much slower, but it will be created almost immediately. The much faster version has more steps to build, because it uses blitz for speed up.
