# arma3_sim_stuff

logallpos.sqf - Script for arma 3 to log the positions of all game units.

## Installation

Create a custom mission and copy logallpos.sqf into that mission folder. Insert a new trigger with the arma 3 mission editor with the following properties:
- Name: record
- Activation: Game Logic / once
- Condition: true
- On Act: 0 = [] execVM "logallpos.sqf"

That's it, once the mission begins recording of all positions is started.

## Data Logged

The following entries are written to the current rpt file for your mission:
```
1 : POSITIONLIST_RECORD_START
2 : POSITIONLIST_BEGIN
3 : POS <unit> <position>
..
X : POS <unit> <position>
X+1 : POSITIONLIST_END
```
Line 1 is only output once after recording has started
Line 2 marks the beginning of the position list at the recording interval (fixed at 1s in the script)
Line 3 to X logs the position of a unit, one per line
Line X+1 marks the end of the position list
