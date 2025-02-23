BEGIN d_gBFdrZ // The Renegade Zhent, Renegade dialogue

IF ~True()~ THEN BEGIN 0
	SAY @11000 /* Normally, I’d rather strangle myself than say this, but… thank you. So Eloran sent you, and you decided to go fetch like a good little dog. */
	++ @11001 /* I just saved your life, so you should watch your words. */ GOTO zOops
	++ @11002 /* That’s about right. */ GOTO zYup
END

IF ~~ THEN BEGIN zOops
	SAY @11003 /* Right. I’m just surprised. She seemed perfectly happy to kill the lot of us, so for her to send you to save me… It’s odd. But I suppose I shouldn’t complain. I’ll go see her–it’ll be nice to be back in civilization, at any rate. */
IF ~~ THEN DO ~
SetGlobal("gBFq11","GLOBAL",2) EscapeArea()~ EXIT
END


IF ~~ THEN BEGIN zYup
	SAY @11004 /* It’s odd that she’d send you to save me. Normally, she’s perfectly happy to kill the lot of us. But I suppose I shouldn’t complain. I’ll go see her–it’ll be nice to be back in civilization, at any rate. */
IF ~~ THEN DO ~
SetGlobal("gBFq11","GLOBAL",2) EscapeArea()~ EXIT
END
