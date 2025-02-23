BEGIN d_gBF4ho //Rat King homeowner's dialogue

//hasn't talked to rat king yet
IF ~Global("gBFq4","GLOBAL",1)~ THEN BEGIN 0
	SAY @8500 /* These rats are driving me batty! There’s a huge one upstairs. I don’t care what you do, just get them gone!  */ IF ~~ THEN EXIT
END	

//killed rat king
IF ~Dead("g_rk")~ THEN BEGIN 10
	SAY @8501 /* These rats are driving me batty! There’s a huge one upstairs. I don’t care what you do, just get them gone! */
	++ @8502 /* I've killed the rats for you. */ GOTO 11
END

IF ~~ THEN BEGIN 11
	SAY @8503 /* And you expect me to clean them up, do you? Adventurers! Completely filthy. Now, get out, I have a lot of cleaning to get done. */ IF ~~ THEN EXIT
END

//got rat king to leave
IF ~Global("gBFq4","GLOBAL",4)~ THEN BEGIN 20
	SAY @8501 /* These rats are driving me batty! There’s a huge one upstairs. I don’t care what you do, just get them gone! */
	++ @8504 /* The rats left. */ GOTO 21
END

IF ~~ THEN BEGIN 21
	SAY @8505 /* Yes, I saw them, and some of them even ran over my feet! Have you ever had a swarm of rats run over your feet? It was horrifying! But.. at least they’re gone now. Thank you. */ IF ~~ THEN EXIT
END







