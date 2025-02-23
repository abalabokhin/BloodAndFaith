BEGIN d_gBF7st // Quest 7 Bandits and Thieves, Ex-Shadow Thief dialogue

IF ~True()~ THEN BEGIN 0
	SAY @9500 /* I left for a reason, and I’m not going back! You won’t take me alive! */
	++ @9501 /* Wait, what? Why don’t we talk first? */ GOTO letsTalk
	++ @9502 /* I don’t intend to. */ GOTO fightingWords
END

IF ~~ THEN BEGIN letsTalk
	SAY @9503 /* What? You mean… Mae’var didn’t send you? What are you doing here then? */
		++ @9504 /* Eloran, a Lathanderite cleric, sent me here to investigate Shadow Thief activity. Now, what are you doing here? */ GOTO eloExplain
		++ @9505 /* Oh, you know. Just going for a stroll. */ GOTO wiseGuy
END

IF ~~ THEN BEGIN wiseGuy
	SAY @9506 /* Don’t get smart with me. You’re here for me, aren’t you? */
	++ @9507 /* That depends. Eloran, a Lathanderite cleric, sent me here to investigate Shadow Thief activity. Now, what are you doing here? */ GOTO eloExplain
END

IF ~~ THEN BEGIN eloExplain
	SAY @9508 /* There aren’t any Shadow Thieves here. I wouldn’t be here if there were. I’m… I’m here to avoid the Shadow Thieves. I’m not stupid. I know that I can’t expect to be accepted after the things I’ve done, but I’m not going to sit around alone waiting for Mae’var’s dogs to find me. There’s safety in numbers, see? The bandits can’t be as bad as my old group, and if I stick with them, maybe my old associates will think twice about going after me, see? */
	++ @9509 /* Do you actually want to join the bandits, or are you just doing this because you feel you have no other choice? */ GOTO goodWords
	++ @9510 /* If the bandits are less bad, you must’ve done some heinous things. You deserve death for what you’ve done. */ GOTO fightingWords
END

IF ~~ THEN BEGIN goodWords
	SAY @9511 /* My choices are to join the bandits, or roll over and die. Don’t you dare presume to judge me! */
	++ @9512 /* There’s a third choice: go to the Temple of Lathander in Beregost and speak to Eloran. Repent, and become better than you were before. */ GOTO okFine	
END

IF ~~ THEN BEGIN okFine
	SAY @9513 /* A Lathanderite couldn’t be worse than the Shadow Thieves or these bandits. */
IF ~~ THEN DO ~
 SetGlobal("gBFq7","GLOBAL",2) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN fightingWords
	SAY @9514 /* I won't go down easily! */ IF ~~ THEN DO ~ SetGlobal("gBFq7","GLOBAL",2) 
ActionOverride("g_thief",Enemy()) ~ EXIT
END

	

