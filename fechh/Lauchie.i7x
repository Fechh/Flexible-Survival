Lauchie version 1 by fechh
[plan is to have a series of events, or maybe a short quest to find Mattie, after which possibly an option to bring them to the library if people like them, otherwise maybe the mall. Lauchie is not as unaffected by the guarding instincts of the wolverine infection as he initially seems, he's just fixated on guarding his brother rather than a place, and the fact that he can't find Mattie is the reason he's perpetually on the verge of a panic attack]
Section 1 - Meeting Event

Table of GameEventIDs (continued)
Object	Name
Lone Wolverine	"Lone Wolverine"

Lone Wolverine is a situation.
ResolveFunction of Lone Wolverine is "[ResolveEvent Lone Wolverine]". The level of Lone Wolverine is 10.
Sarea of Lone Wolverine is "High".
when play begins:
	add Lone Wolverine to BadSpots of MaleList; 
when play begins:
	add Lone Wolverine to BadSpots of FurryList;

to say ResolveEvent Lone Wolverine:
	say "     You see a wolverine man stalking around, peering into windows and doorways, like he's looking for something, or someone. Curiously, he isn't dressed in a guard uniform like all the other wolverines you've seen. When he notices you, you stare at each other, both trying to tell if the other is still sane.";
	LineBreak;
	LineBreak;
	say "     ([link]1[as]1[end link]) - Attack";
	say "     ([link]2[as]2[end link]) - Wave";
	say "     ([link]3[as]3[end link]) - Run Away";
	say "     ([link]4[as]4[end link]) - Just Keep Staring";
    [ok, tried to figure out how to code this, but I'm stumped. help.]
    if 1
        "Yeah, you don't trust this guy. Clearly he's up to no good." start a fight with a wolverine guard, event doesn't repeat.
    if 2
        "You wave, and after a moment of mild confusion, he cautiously waves back. Warily, looking around for any signs of an ambush, he approaches you." trigger LauchieTalk1
    if 3
        "Nope. Nope nope nope. You do not like or trust this at all. You turn and run until you're sure he's not following you." flee, event doesn't repeat.
    if 4
        "You keep staring. Hopefully he's starting to feel uncomfortable, because you sure are. After a bit, he cautiously calls out to you,

        'Hey, you still there, y'know, mentally?'

        You confirm that you are, indeed, 'still there mentally'.

        'Awesome. I'm going to come over to you, slowly, so we don't have to shout.'

        You nod your assent." trigger LauchieTalk1

        LauchieTalk1
        "Closer up, he looks a bit different than the wolverine guards. Not so much physically as in his whole posture and expression. He's more open, less guarded - heh, pun - less sure of himself and his ability to beat the shit out of anyone who tries something. He's wearing some torn and dirty clothes - a flannel shirt, white undershirt and some jeans - probably the same ones he was wearing when he transformed. Given up on shoes though, which makes sense, not easy to wear them with digitigrade feet.

        'Er, hi,' he says, 'I'm Lauchie.' He has an accent, Australian you think. 

        You introduce yourself, and ask what he was looking for.

        'My little brother, Mattie,' he says, looking sad, 'we were supposed to meet at the zoo the day everything went to insane bullshit and hit every fucking fan in existence, and apparently several that weren't even in our bloody dimension.' He gestures vaguely in a kind of aggrieved way at everything around you both.

        'Mattie had gotten a job here at the zoo, and I had saved enough to fly over and see him.'

        'I know what you're thinking, the zoo is batshit, and it was even worse on the day, but Mattie's tough. Smart. He'll have made it.'"
        LineBreak;
	    LineBreak;
	    say "     ([link]Y[as]y[end link]) - Ask what he's like, you might have run into him, or might run into him in the future";
	    say "     ([link]N[as]n[end link]) - Wish him luck with his clearly futile quest. His brother is almost certainly dead or changed beyond all recognition, poor guy just can't accept it.";
        if Player consents:
				LineBreak;
				say "[AboutMattie1]";
			else:
				LineBreak;
				say "'Thanks mate. I'll find him somewhere out there.'

                    As he walks off, you shake your head sadly. There must be a lot of survivors like him who can't accept their loved ones are gone.";
				now Resolution of LauchieTalk1 is 1; [player won't help, never see him again]
        to say AboutMattie1:
		say "     Lauchie's face lights up, a surprised little smile tugging at his mouth and showing a couple fangs. It's kind of cute, actually. He clearly hadn't expected you to offer any sort of help.";
		say "     'Mattie's smart, snarky, kind of a dork, gets way into things and tells you about 'em like a cockie on cocaine. He was a skinny little ranga-' he notices your confusion and corrects, 'redhead. Likes to wear this big coat and a beanie that looks kinda like one of those fluffy Russian hats. Fuck knows what he looks like now. I look like this,' he gestures down at himself, 'murder weasel thing?'";
		WaitLineBreak;
		say "     You tell him that he's a wolverine.";
		say "     'Huh. Always thought wolverines must've been, I dunno, weird little wolves, not buff demon ferrets'.";
		say "     You don't think you've come across anyone that sounds like Mattie, but you tell Lauchie that you'll keep an eye out. After a brief moment of indecision, you tell him that he can find you at the library most easily, or at least leave a note there since you always return eventually. If you find Mattie you'll try to bring him there. You tell him that he can sleep there if he's in the area.";
		say "     'Thanks mate, good to have somewhere I can crash in the area. Means I can search round there more.'";
		now Resolution of LauchieTalk1 is 2; [offered to help, Lauchie knows where to find you]


Section 2 - NPC

Table of GameCharacterIDs (continued)
object	name
Lauchie	"Lauchie"

Lauchie
 is a man.
ScaleValue of Lauchie
 is 3. [human sized]
Body Weight of Lauchie
 is 4. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Lauchie
 is 6. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Lauchie
 is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Lauchie
 is 7. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Lauchie
 is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Lauchie
 is 4. [length in inches]
Breast Size of Lauchie
 is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Lauchie
 is 2. [count of nipples]
Asshole Depth of Lauchie
 is 9. [inches deep for anal fucking]
Asshole Tightness of Lauchie
 is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Lauchie
 is 1. [number of cocks]
Cock Girth of Lauchie
 is 3. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Lauchie
 is 6. [length in inches]
Ball Count of Lauchie
 is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Lauchie
 is 2. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Lauchie
 is 0. [number of cunts]
Cunt Depth of Lauchie
 is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Lauchie
 is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Lauchie
 is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Lauchie
 is false.
PlayerRomanced of Lauchie
 is false.
PlayerFriended of Lauchie
 is false.
PlayerControlled of Lauchie
 is false.
PlayerFucked of Lauchie
 is false.
OralVirgin of Lauchie
 is true.
Virgin of Lauchie
 is true.
AnalVirgin of Lauchie
 is true.
PenileVirgin of Lauchie
 is true.
SexuallyExperienced of Lauchie
 is false.
TwistedCapacity of Lauchie
 is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Lauchie
 is false. [steriles can't knock people up]
MainInfection of Lauchie
 is "Wolverine".
Description of Lauchie
 is "[LauchieDesc]".
Conversation of Lauchie
 is { "Hey" }.