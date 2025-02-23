BEGIN d_gBF1ho //homeowner's dialogue


//hasn't talked to the ghost yet
IF ~Global("gBFq1","GLOBAL",1)~ THEN BEGIN 0
	SAY @7500 /* Oh, you’re the one the Lathanderite’s sent? The ghost is upstairs. Please do something about it! He keeps going on about coins. */
		++ @7501 /* What can you tell me about this ghost? */ GOTO 1
		++ @7502 /* He keeps going on about coins? */ GOTO 2
		++ @7503 /* I have no further questions. */ GOTO 3
END

//has talked to the ghost 
IF ~Global("gBFq1","GLOBAL",1)~ THEN BEGIN 0
	SAY @7500 /* Oh, you’re the one the Lathanderite’s sent? The ghost is upstairs. Please do something about it! He keeps going on about coins. */
		++ @7501 /* What can you tell me about this ghost? */ GOTO 1
		++ @7502 /* He keeps going on about coins? */ GOTO 2
		++ @7503 /* I have no further questions. */ GOTO 3
END


IF ~~ THEN BEGIN 1
	SAY @7504 /* I don’t know much about him! I just moved here from Daggerford! He died, obviously, and so the wife sold the house. I think she’s staying at the Red Sheaf until she gets her affairs in order to move to Baldur’s Gate. */
		++ @7502 /* He keeps going on about coins? */ GOTO 2
		++ @7503 /* I have no further questions. */ GOTO 3
END

IF ~~ THEN BEGIN 2
	SAY @7505 /* Yes, he does that. But I already bought the house from his widow; I’m not giving him money too!  */
		++ @7501 /* What can you tell me about this ghost? */ GOTO 1
		++ @7503 /* I have no further questions. */ GOTO 3
END

IF ~~ THEN BEGIN 3
	SAY @7506 /* Hopefully you have a few ideas about what to do here. I don’t want to live in a haunted house, and I don’t think I can sell the place now. */ IF ~~ THEN EXIT
END

//sent off the ghost
IF ~Global("gBFq1","GLOBAL",2)~ THEN BEGIN 0
	SAY @7507 /* The ghost is gone! */
	++ @7508 /* The ghost is gone now. He just wanted his coin collection. */ GOTO 4
	++ @7509 /* That's correct. */ GOTO 5
END

IF ~~ THEN BEGIN 4
	SAY @7510 /* His coin collection? That’s it? Hmph. What’s a ghost going to do with money, anyway? Well, whatever gets him out of my house. Thank you for your help. */ IF ~~ THEN EXIT
END	

IF ~~ THEN BEGIN 5
	SAY @7511 /* Well, then not to be rude, but could you leave? This is my house, after all, and not yours. */ IF ~~ THEN EXIT
END	
