# anagrams
Goofing off with streams (or streamlike behavior) in ruby after reading Effective Java 3rd

## What it does
Given a list of words, batch all the words that are anagrams of each other.

Sorted by the length of anagrams.

```
> ruby anagrams.rb english_words.txt length
.
.
2 13: commercialist, microclimates
2 13: pedometrician, premedication
4 13: peridiastolic, periodicalist, pictorialised, proidealistic
2 13: impressionism, misimpression
.
.
```

Sorted by the number of anagrams.

```
> ruby anagrams.rb english_words.txt count
.
.
14 7: anestri, antsier, asterin, eranist, nastier, ratines, resiant, restain, retains, retinas, retsina, stainer, starnie, stearin
14 5: arest, aster, astre, rates, reast, resat, serta, stare, strae, tares, tarse, tears, teras, treas
15 6: alerts, alters, artels, estral, laster, lastre, rastle, ratels, relast, resalt, salter, slater, staler, stelar, talers
```

## Attribution

For testing I used the list of english words here: https://raw.githubusercontent.com/dwyl/english-words/master/words_alpha.txt


