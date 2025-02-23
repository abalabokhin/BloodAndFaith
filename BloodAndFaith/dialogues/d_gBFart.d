BEGIN d_gBFart //Papers, Please, Arteger dialogue


IF ~True()~ THEN BEGIN 0
	SAY @10000 /* Yes? Can I help you? */
	++ @10001 /* Eloran sent me for those papers. */ GOTO 1
END

IF ~~ THEN BEGIN 1
	SAY @10002 /* Ah, I see. We got these papers off a Zhent agent. I don’t know why we’re giving them to Eloran, but… Well, I guess it’s not my place to be wondering. Here, take these papers. I have other duties to attend to. */
IF ~~ THEN DO ~
   GiveItemCreate("gBFed",Player1,1,1,0) EscapeArea()~ EXIT
END