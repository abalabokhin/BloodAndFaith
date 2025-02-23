BEGIN d_BF3z //Quest 3 Zombie Dialogue

//learning the terms
IF ~Global("gBFq3","GLOBAL",1)~ THEN BEGIN 0
	SAY @6500 /* Hmph! You want me back in the ground, huh? Well, I won’t go back! Not unless it’s on my terms! An Ibrandulite funeral’s the only way I’m getting back in the ground! */
	++ @6501 /* What are your terms? */ GOTO 1
	++ @6502 /* I could just kill you, you know. Then you’ll be dead again. */ GOTO 2
	++ @6503 /* I’ll let the gravekeeper know that. */ GOTO 3
END

IF ~~ THEN BEGIN 1
	SAY @6504 /* They gave me the wrong funeral! They gave me a funeral for a Helmite! I ain’t no Helmite! I’m a miner, through and through, and Helm ain’t a god for miners–Ibrandul is! I’m not staying in the ground unless I get a proper funeral, worthy of a miner! */
IF ~~ THEN DO ~
SetGlobal("gBFq3","GLOBAL",2) AddJournalEntry(@5105, QUEST)  ~ EXIT
END

IF ~~ THEN BEGIN 2
	SAY @6505 /* Pfah, I’m already dead! If you kill me, I’ll just get back up again, unless you give me a proper Ibrandulite funeral afterwards! */
IF ~~ THEN DO ~
SetGlobal("gBFq3","GLOBAL",2) AddJournalEntry(@5105, QUEST) ~ EXIT
END

IF ~~ THEN BEGIN 3
	SAY @6506 /* You do that. I’ll be here. */
IF ~~ THEN DO ~
SetGlobal("gBFq3","GLOBAL",2) AddJournalEntry(@5105, QUEST) ~ EXIT
END


//go back to gravekeeper
IF ~Global("gBFq3","GLOBAL",2)~ THEN BEGIN 10
	SAY @6507 /* Go tell them to give me a proper Ibrandulite funeral! */ IF ~~ THEN EXIT
END	


//let's do this
IF ~Global("gBFq3","GLOBAL",3)~ THEN BEGIN 20
	SAY @6508 /* He'll redo the funeral? Alright, let’s do this then. */
IF ~~ THEN DO ~
 SetGlobal("gBFq3","GLOBAL",4) AddJournalEntry(@5106, QUEST) EscapeArea()~ EXIT
END
