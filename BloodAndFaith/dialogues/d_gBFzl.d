BEGIN d_gBFzl // The Renegade Zhent, leader dialogue

IF ~True()~ THEN BEGIN 0
	SAY @14000 /* Well, well. If it isn’t Eloran’s attack dog. How nice of you to show up. She’s been such a thorn in our side. I’ll kill you first, then the traitor, and then I’ll pay her a visit. */ IF ~~ THEN DO ~
	ActionOverride("g_bZhent",Enemy()) ActionOverride("g_bZhent2",Enemy()) ActionOverride("g_bZhent3",Enemy())~ EXIT
END
