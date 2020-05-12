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
X = [i, have, taken, trees] ;
X = [i, have, taken, cars] ;
X = [i, have, taken, arrows] ;
X = [i, have, taken, ships] ;
X = [i, have, taken, people] ;
X = [i, have, taken, balls] ;
X = [i, have, done, trees] ;
X = [i, have, done, cars] ;
X = [i, have, done, arrows] ;
X = [i, have, done, ships] ;
X = [i, have, done, people] ;
X = [i, have, done, balls] ;
X = [i, have, gone, trees] ;
X = [i, have, gone, cars] ;
X = [i, have, gone, arrows] ;
X = [i, have, gone, ships] ;
X = [i, have, gone, people] ;
X = [i, have, gone, balls] ;
X = [i, have, sewn, trees] ;
X = [i, have, sewn, cars] ;
X = [i, have, sewn, arrows] ;
X = [i, have, sewn, ships] ;
X = [i, have, sewn, people] ;
X = [i, have, sewn, balls] ;
X = [i, have, sawn, trees] ;
X = [i, have, sawn, cars] ;
X = [i, have, sawn, arrows] ;
X = [i, have, sawn, ships] ;
X = [i, have, sawn, people] ;
X = [i, have, sawn, balls] ;
X = [i, have, killed, trees] ;
X = [i, have, killed, cars] ;
X = [i, have, killed, arrows] ;
X = [i, have, killed, ships] ;
X = [i, have, killed, people] .

?- comparative_phrase(X).
X = [i, am, better, than, me] ;
X = [i, am, better, than, you] ;
X = [i, am, better, than, him] ;
X = [i, am, better, than, her] ;
X = [i, am, better, than, it] ;
X = [i, am, better, than, us] ;
X = [i, am, better, than, them] ;
X = [i, am, worse, than, me] ;
X = [i, am, worse, than, you] ;
X = [i, am, worse, than, him] ;
X = [i, am, worse, than, her] ;
X = [i, am, worse, than, it] ;
X = [i, am, worse, than, us] ;
X = [i, am, worse, than, them] ;
X = [i, am, prettier, than, me] ;
X = [i, am, prettier, than, you] ;
X = [i, am, prettier, than, him] ;
X = [i, am, prettier, than, her] ;
X = [i, am, prettier, than, it] ;
X = [i, am, prettier, than, us] ;
X = [i, am, prettier, than, them] ;
X = [i, am, stronger, than, me]

?- tense(X).
X = [i, am, of, the, tree] ;
X = [i, am, of, the, car] ;
X = [i, am, of, the, cellphone] ;
X = [i, am, of, a, tree] ;
X = [i, am, of, a, car] ;
X = [i, am, of, a, cellphone] ;
X = [i, am, for, the, tree] ;
X = [i, am, for, the, car] ;
X = [i, am, for, the, cellphone] ;
X = [i, am, for, a, tree] ;
X = [i, am, for, a, car] ;
X = [i, am, for, a, cellphone] ;
X = [i, am, like, the, tree] ;
X = [i, am, like, the, car] ;
X = [i, am, like, the, cellphone] ;
X = [i, am, like, a, tree] ;
X = [i, am, like, a, car] ;
X = [i, am, like, a, cellphone] ;
X = [i, am, on, the, tree] ;
X = [i, am, on, the, car] ;
X = [i, am, on, the, cellphone] ;
X = [i, am, on, a, tree] ;
X = [i, am, on, a, car] ;
X = [i, am, on, a, cellphone] ;
X = [you, are, of, the, tree] ;
X = [you, are, of, the, car] ;
X = [you, are, of, the, cellphone] ;
X = [you, are, of, a, tree] ;
X = [you, are, of, a, car] ;
X = [you, are, of, a, cellphone] ;
X = [you, are, for, the, tree]

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

?- reason_phrase(X).
X = [i, play, to, play] ;
X = [i, play, to, ride] ;
X = [i, play, to, call] ;
X = [i, play, to, say] ;
X = [i, play, to, want] ;
X = [i, play, to, need] ;
X = [i, ride, to, play] ;
X = [i, ride, to, ride] ;
X = [i, ride, to, call] ;
X = [i, ride, to, say] ;
X = [i, ride, to, want] ;
X = [i, ride, to, need] ;
X = [i, call, to, play] ;
X = [i, call, to, ride] ;
X = [i, call, to, call] ;
X = [i, call, to, say] .
```
