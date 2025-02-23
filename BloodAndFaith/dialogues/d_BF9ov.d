BEGIN d_BF9ov // Judge and Jury Ovlin Dialogue

IF ~Global("gBFq9","GLOBAL",2)~ THEN BEGIN 100
	SAY @7000 /* I won't waste the chance that you and Eloran have given me. */ IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 0
	SAY @7001 /* So, someone else has come to argue for my death? */
	++ @7002 /* Persuade me to let you live. */ GOTO whyLive
	++ @7003 /* Why did you turn to banditry? */ GOTO whyBandit
	++ @7004 /* Why wait until now to feel remorse? */ GOTO whyNow
	++ @7005 /* Why Lathander? Why not flee to the Ilmateri? */ GOTO whyLath
	++ @7006 /* We're done here for now. */ GOTO doneHere
END

IF ~~ THEN BEGIN whyLive
	SAY @7007 /* After what I’ve seen? I just… watched. If I had done anything, I would’ve joined ‘em and gotten killed too, but… I don’t know. */
	++ @7003 /* Why did you turn to banditry? */ GOTO whyBandit
	++ @7004 /* Why wait until now to feel remorse? */ GOTO whyNow
	++ @7005 /* Why Lathander? Why not flee to the Ilmateri? */ GOTO whyLath
	++ @7006 /* We're done here for now. */ GOTO doneHere
END

IF ~~ THEN BEGIN whyBandit
	SAY @7008 /* If you can’t beat ‘em, join ‘em. I used to run caravans up and down the Sword Coast, but we were raided too many times. Went bankrupt and had to make ends meet somehow. Can’t say it felt right, stealing from others and doing to them what got me in this mess, but hey, gotta eat, and it’s not like we were killing anybody. In the early days, at least.  */
	++ @7002 /* Persuade me to let you live. */ GOTO whyLive
	++ @7004 /* Why wait until now to feel remorse? */ GOTO whyNow
	++ @7005 /* Why Lathander? Why not flee to the Ilmateri? */ GOTO whyLath
	++ @7006 /* We're done here for now. */ GOTO doneHere
END

IF ~~ THEN BEGIN whyNow
	SAY @7009 /* It’s not ‘until now’. I knew I had to get out when I saw… that day. But I couldn’t just leave. I know what that ogre is capable of. I needed something big, something that’d draw everyone’s attention so I could sneak out. You attacking the camp was the only opportunity that I had. */
	++ @7002 /* Persuade me to let you live. */ GOTO whyLive
	++ @7003 /* Why did you turn to banditry? */ GOTO whyBandit
	++ @7005 /* Why Lathander? Why not flee to the Ilmateri? */ GOTO whyLath
	++ @7006 /* We're done here for now. */ GOTO doneHere
END

IF ~~ THEN BEGIN whyLath
	SAY @7010 /* I don’t believe in Ilmater. Not anymore. Some things are too big to forgive. Lathander… he’s about new beginnings, isn’t he? I can’t be forgiven, but maybe I can start over. Become someone new. */
	++ @7002 /* Persuade me to let you live. */ GOTO whyLive
	++ @7003 /* Why did you turn to banditry? */ GOTO whyBandit
	++ @7004 /* Why wait until now to feel remorse? */ GOTO whyNow
	++ @7006 /* We're done here for now. */ GOTO doneHere
END

IF ~~ THEN BEGIN doneHere
	SAY @7011 /* (Ovlin doesn’t say anything. Just nods.) */ IF ~~ THEN EXIT
END
