#!/usr/bin/perl

print <<EOINTRO;
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/typeplate/1.1.2/typeplate.min.css">
</head>
<body>
<h1>English Pronunciation</h1>

<p>If you can pronounce correctly every word in this poem, you will be speaking English better than 90% of the native English speakers in the world.</p>
<p>After trying the verses, a Frenchman said he’d prefer six months of hard labour to reading six lines aloud.</p>

<p><em>HJ Note: In this version you can click on any word to get the Oxford Dictionary page, with a pronunciation guide (press the little speaker icon).</em></p>

<blockquote>
EOINTRO

while(<DATA>) {

  @words = split(/\s+/);

  foreach $raw_word (@words) {
#    print $word,"\n";
    $word = lc $raw_word;
    $word =~ tr/a-z//cd;
    printf("<a href='http://www.oxforddictionaries.com/definition/english/%s'>%s</a> ", $word, $raw_word);
  }
  print "<br>\n";
}
print <<EOEND;
</blockquote>
<hr>
From: <a href="http://www.thepoke.co.uk/2011/12/23/english-pronunciation/">http://www.thepoke.co.uk/2011/12/23/english-pronunciation/</a>
</body>
</html>
EOEND

__DATA__
Dearest creature in creation,
Study English pronunciation.
I will teach you in my verse
Sounds like corpse, corps, horse, and worse.
I will keep you, Suzy, busy,
Make your head with heat grow dizzy.
Tear in eye, your dress will tear.
So shall I! Oh hear my prayer.
Just compare heart, beard, and heard,
Dies and diet, lord and word,
Sword and sward, retain and Britain.
(Mind the latter, how it’s written.)
Now I surely will not plague you
With such words as plaque and ague.
But be careful how you speak:
Say break and steak, but bleak and streak;
Cloven, oven, how and low,
Script, receipt, show, poem, and toe.
Hear me say, devoid of trickery,
Daughter, laughter, and Terpsichore,
Typhoid, measles, topsails, aisles,
Exiles, similes, and reviles;
Scholar, vicar, and cigar,
Solar, mica, war and far;
One, anemone, Balmoral,
Kitchen, lichen, laundry, laurel;
Gertrude, German, wind and mind,
Scene, Melpomene, mankind.
Billet does not rhyme with ballet,
Bouquet, wallet, mallet, chalet.
Blood and flood are not like food,
Nor is mould like should and would.
Viscous, viscount, load and broad,
Toward, to forward, to reward.
And your pronunciation’s OK
When you correctly say croquet,
Rounded, wounded, grieve and sieve,
Friend and fiend, alive and live.
Ivy, privy, famous; clamour
And enamour rhyme with hammer.
River, rival, tomb, bomb, comb,
Doll and roll and some and home.
Stranger does not rhyme with anger,
Neither does devour with clangour.
Souls but foul, haunt but aunt,
Font, front, wont, want, grand, and grant,
Shoes, goes, does. Now first say finger,
And then singer, ginger, linger,
Real, zeal, mauve, gauze, gouge and gauge,
Marriage, foliage, mirage, and age.
Query does not rhyme with very,
Nor does fury sound like bury.
Dost, lost, post and doth, cloth, loth.
Job, nob, bosom, transom, oath.
Though the differences seem little,
We say actual but victual.
Refer does not rhyme with deafer.
Feoffer does, and zephyr, heifer.
Mint, pint, senate and sedate;
Dull, bull, and George ate late.
Scenic, Arabic, Pacific,
Science, conscience, scientific.
Liberty, library, heave and heaven,
Rachel, ache, moustache, eleven.
We say hallowed, but allowed,
People, leopard, towed, but vowed.
Mark the differences, moreover,
Between mover, cover, clover;
Leeches, breeches, wise, precise,
Chalice, but police and lice;
Camel, constable, unstable,
Principle, disciple, label.
Petal, panel, and canal,
Wait, surprise, plait, promise, pal.
Worm and storm, chaise, chaos, chair,
Senator, spectator, mayor.
Tour, but our and succour, four.
Gas, alas, and Arkansas.
Sea, idea, Korea, area,
Psalm, Maria, but malaria.
Youth, south, southern, cleanse and clean.
Doctrine, turpentine, marine.
Compare alien with Italian,
Dandelion and battalion.
Sally with ally, yea, ye,
Eye, I, ay, aye, whey, and key.
Say aver, but ever, fever,
Neither, leisure, skein, deceiver.
Heron, granary, canary.
Crevice and device and aerie.
Face, but preface, not efface.
Phlegm, phlegmatic, ass, glass, bass.
Large, but target, gin, give, verging,
Ought, out, joust and scour, scourging.
Ear, but earn and wear and tear
Do not rhyme with here but ere.
Seven is right, but so is even,
Hyphen, roughen, nephew Stephen,
Monkey, donkey, Turk and jerk,
Ask, grasp, wasp, and cork and work.
Pronunciation (think of Psyche!)
Is a paling stout and spikey?
Won’t it make you lose your wits,
Writing groats and saying grits?
It’s a dark abyss or tunnel:
Strewn with stones, stowed, solace, gunwale,
Islington and Isle of Wight,
Housewife, verdict and indict.
Finally, which rhymes with enough,
Though, through, plough, or dough, or cough?
Hiccough has the sound of cup.
My advice is to give up!!!
