BEGIN d_BF3gk //Quest 3: gravekeeper dialogue

//hasn't talked to zombie
IF ~Global("gBFq3","GLOBAL",1)~ THEN BEGIN 0
	SAY @6000 /* Oh, thank the gods you’re here. I have no idea what could be happening here. Please just… take a look around Nashkel and see if you can find any clues. */
	++ @6001 /* I’ll take a look around. */ GOTO 1
END

IF ~~ THEN BEGIN 1
	SAY @6002 /* Thank you. And please hurry! */ IF ~~ THEN EXIT
END	


//has talked to zombie
IF ~Global("gBFq3","GLOBAL",2)~ THEN BEGIN 10
	SAY @6000 /* Oh, thank the gods you’re here. I have no idea what could be happening here. Please just… take a look around Nashkel and see if you can find any clues. */
	++ @6003 /* I found this missing person. He was upset at receiving a Helmite funeral and wants an Ibrandulite funeral instead, and so he rose from the dead. He'll go back to being dead if you give him a new funeral. */ GOTO 11
END

IF ~~ THEN BEGIN 11
	SAY @6004 /* He… wants us to redo the funeral? That’s it? I was worried that he wanted vengeance or that there was a grave robber! I can redo the funeral. Go tell him to come back here. */
IF ~~ THEN DO ~
SetGlobal("gBFq3","GLOBAL",3) ~ EXIT
END

//needs to talk to zom again
IF ~Global("gBFq3","GLOBAL",3)~ THEN BEGIN 12
	SAY @6005 /* Tell the zombie to come see me for a new funeral. */ IF ~~ THEN EXIT
END	

IF ~Global("gBFq3","GLOBAL",4)~ THEN BEGIN 12
	SAY @6006 /* Thank you for your help. */ IF ~~ THEN EXIT
END	


