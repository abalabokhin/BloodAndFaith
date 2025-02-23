BEGIN d_gBFdop //The Doppelganger, doppelganger dialogue

IF ~True()~ THEN BEGIN 0
	SAY @10500 /* So you’ve found me down here. Perhaps I was foolish to try to live as myself. Tell me–is it better to spend your whole life in hiding, pretending to be someone you aren’t? Is it better to deceive everyone you know, to always wonder if they care for you, or if they only care for who you pretend to be? Or is it better to live openly, to be blunt with what you are? I’ve lived my entire life, nearly forty years, in deception. I wanted to see what it was like to live honestly. */
	++ @10501 /* Why are you down in the sewers? */ GOTO whySewer
	++ @10502 /* You’re a monster. Why shouldn’t I kill you? */ GOTO whyLive
	++ @10503 /* I’m going to kill you. */ GOTO fightingWords
	++ @10504 /* Well, good luck down here. */ GOTO lolbye
END

IF ~~ THEN BEGIN whySewer
	SAY @10505 /* I’m not naive enough to think I’d be accepted up on the surface, so I came down here. */
	++ @10502 /* You’re a monster. Why shouldn’t I kill you? */ GOTO whyLive
	++ @10503 /* I’m going to kill you. */ GOTO fightingWords
	++ @10504 /* Well, good luck down here. */ GOTO lolbye
END

IF ~~ THEN BEGIN whyLive
	SAY @10506 /* I’ve never killed anyone. Never hurt anyone intentionally. I’ve lived life as… a normal human. Am I really a monster, just because I can shapeshift? I know what others of my kind do–am I guilty of their crimes, of crimes I didn’t commit? If so, I hope you apply that to everyone else. You might not guess, but I’m a historian. I can start listing crimes that your fellow <RACE>s have committed, if you’d like. */
	++ @10501 /* Why are you down in the sewers? */ GOTO whySewer
	++ @10503 /* I’m going to kill you. */ GOTO fightingWords
	++ @10504 /* Well, good luck down here. */ GOTO lolbye
END

IF ~~ THEN BEGIN fightingWords
	SAY @10507 /* I hope you realize that I’m going to defend myself! */ IF ~~ THEN DO ~
	ActionOverride("g_dop",Enemy()) ~ EXIT
END


IF ~~ THEN BEGIN lolbye
	SAY @10508 /* Thank you. */
IF ~~ THEN DO ~
SetGlobal("gBFq14","GLOBAL",2) EscapeArea() ~ EXIT

END