# context_free_grammars
That is a script about the concept context free grammars in Prolog

To run that script, run on swipl:

`[context_free_grammars]`

And then, read the file to get more informations about functions.

A short example:

```
?- infinite_verb(X).
X = [to, play] ;
X = [to, ride] ;
X = [to, call] ;
X = [to, say] .

?- adjective_phrase(X).
X = [i, am, so, beautiful] ;
X = [i, am, so, smart] ;
X = [i, am, so, hardworking] ;
X = [i, am, always, beautiful] ;
X = [i, am, always, smart] ;
X = [i, am, always, hardworking] ;
X = [i, am, really, beautiful] ;
X = [i, am, really, smart] ;
X = [i, am, really, hardworking] ;
X = [i, am, maybe, beautiful] ;
X = [i, am, maybe, smart] ;
X = [i, am, maybe, hardworking] .

?- present_perfect_phrase(X).
X = [i, have, taken, tree] ;
X = [i, have, taken, car] ;
X = [i, have, taken, cellphone] ;
X = [i, have, done, tree] ;
X = [i, have, done, car] ;
X = [i, have, done, cellphone] ;
X = [i, have, gone, tree] ;
X = [i, have, gone, car] ;
X = [i, have, gone, cellphone] ;
X = [i, have, sewn, tree] ;
X = [i, have, sewn, car] ;
X = [i, have, sewn, cellphone] ;
X = [i, have, found, tree] ;
X = [i, have, found, car] ;
X = [i, have, found, cellphone] ;
X = [you, have, taken, tree] ;
X = [you, have, taken, car] ;
X = [you, have, taken, cellphone] ;
X = [you, have, done, tree] .

?- present_continuous_phrase(X).
X = [i, have, been, playing] ;
X = [i, have, been, talking] ;
X = [i, have, been, riding] ;
X = [i, have, been, waking] ;
X = [i, have, been, sitting] ;
X = [i, have, been, yawning] ;
X = [you, have, been, playing] ;
X = [you, have, been, talking] ;
X = [you, have, been, riding] ;
X = [you, have, been, waking] ;
X = [you, have, been, sitting] ;
X = [you, have, been, yawning] ;
X = [he, has, been, playing] ;
X = [he, has, been, talking] ;
X = [he, has, been, riding] ;
X = [he, has, been, waking] ;
X = [he, has, been, sitting] ;
X = [he, has, been, yawning] ;
X = [she, has, been, playing] .
```
