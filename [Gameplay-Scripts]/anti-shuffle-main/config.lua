stopPassengerShuffle	= true		--	Stop passenger shuffling to driver seat when driver seat is empty
allowEntrySlide			= false		--	Allow the player to slide into driver's seat when entering empty vehicle from passenger side
allowKeyShuffle			= false		--	If true, the player can shuffle to their neighboring seat when they press any of the 'exemptKeys' listed below
enableSeatCommand		= true		--	If true, will enable a '/seat x' command in chat allowing players to switch seats when in a vehicle
enterRearSeatKey		= 197		--  [] (press '[' to enter a vehicle's rear seat from outside)
exemptKeys				= {}		--	[Left-Shift] (press 'Left-Shift' to shuffle from passenger to driver seat, or if 'allowKeyShuffle' is 'true', shuffle to your neighboring seat)
									--	You can add multiple keys to this list, just separate them with a comma ',' ie: exemptKeys = {21, 171}
-- you can find all the key codes for 'exemptKeys' at https://docs.fivem.net/docs/game-references/controls/
