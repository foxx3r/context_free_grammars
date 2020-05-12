determiner([the]).
determiner([a]).

adverb([so]).
adverb([always]).
adverb([really]).
adverb([maybe]).

verb_to_be([i, am]).
verb_to_be([you, are]).
verb_to_be([he, is]).
verb_to_be([she, is]).
verb_to_be([it, is]).
verb_to_be([we, are]).
verb_to_be([they, are]).

to_be([is]).
to_be([are]).

adjective([beautiful]).
adjective([smart]).
adjective([hardworking]).

noun([tree]).
noun([car]).
noun([cellphone]).

verb([play]).
verb([ride]).
verb([call]).
verb([say]).
verb([want]).
verb([need]).

pronoun([i]).
pronoun([you]).
pronoun([he]).
pronoun([she]).
pronoun([it]).
pronoun([we]).
pronoun([they]).

possessive([my]).
possessive([your]).
possessive([his]).
possessive([her]).
possessive([its]).
possessive([our]).
possessive([their]).

absolute_possessive([mine]).
absolute_possessive([yours]).
absolute_possessive([his]).
absolute_possessive([hers]).
absolute_possessive([its]).
absolute_possessive([ours]).
absolute_possessive([theirs]).

distance([this, is]).
distance([that, is]).
distance([these, are]).
distance([those, are]).

preposition([of]).
preposition([for]).
preposition([like]).
preposition([on]).

negative_verb_to_be([i, am, not]).
negative_verb_to_be([you, are, not]).
negative_verb_to_be([he, is, not]).
negative_verb_to_be([she, is, not]).
negative_verb_to_be([it, is, not]).
negative_verb_to_be([we, are, not]).
negative_verb_to_be([they, are, not]).

question([do, i]).
question([do, you]).
question([does, he]).
question([does, she]).
question([does, it]).
question([do, we]).
question([do, they]).

verb_to_be_question([am, i]).
verb_to_be_question([are, you]).
verb_to_be_question([is, he]).
verb_to_be_question([is, she]).
verb_to_be_question([is, it]).
verb_to_be_question([are, we]).
verb_to_be_question([are, they]).

interrogative_pronoun([what]).
interrogative_pronoun([where]).
interrogative_pronoun([which]).
interrogative_pronoun([whose]).
interrogative_pronoun([who]).

modal([will]).
modal([would]).
modal([can]).
modal([could]).
modal([shall]).
modal([should]).
modal([ought, to]).
modal([may]).
modal([might, be]).

gerund([playing]).
gerund([talking]).
gerund([riding]).
gerund([waking]).
gerund([sitting]).
gerund([yawning]).

simple_past([i, was]).
simple_past([you, were]).
simple_past([he, was]).
simple_past([she, was]).
simple_past([it, was]).
simple_past([we, were]).
simple_past([they, were]).

simple_past_negative([i, was, not]).
simple_past_negative([you, were, not]).
simple_past_negative([he, was, not]).
simple_past_negative([she, was, not]).
simple_past_negative([it, was, not]).
simple_past_negative([we, were, not]).
simple_past_negative([they, were, not]).

simple_past_question([was, i]).
simple_past_question([were, you]).
simple_past_question([was, he]).
simple_past_question([was, she]).
simple_past_question([was, it]).
simple_past_question([were, we]).
simple_past_question([were, they]).

past_verb([went]).
past_verb([saw]).
past_verb([worked]).
past_verb([mixed]).
past_verb([said]).

participle([taken]).
participle([done]).
participle([gone]).
participle([sewn]).
participle([found]).

present_perfect([i, have]).
present_perfect([you, have]).
present_perfect([he, has]).
present_perfect([she, has]).
present_perfect([it, has]).
present_perfect([we, have]).
present_perfect([they, have]).

present_continuous([i, have, been]).
present_continuous([you, have, been]).
present_continuous([he, has, been]).
present_continuous([she, has, been]).
present_continuous([it, has, been]).
present_continuous([we, have, been]).
present_continuous([they, have, been]).

merge_verb(Z) :- determiner(X), noun(Y), append(X, Y, Z).

quantify(Z) :- verb_to_be(X), adverb(Y), append(X, Y, Z).
quantify(Z) :- distance(X), merge_verb(Y), append(X, Y, Z).

gerund_phrase(Z) :- verb_to_be(X), gerund(Y), append(X, Y, Z).

adjective_phrase(Z) :- quantify(X), adjective(Y), append(X, Y, Z).

modal_question(Z) :- modal(X), pronoun(Y), append(X, Y, Z).

infinite_verb(Y) :- verb(X), append([to], X, Y).

question_phrase(Z) :- modal_question(X), verb(Y), append(X, Y, Z).
question_phrase(Z) :- verb_to_be_question(X), gerund(Y), append(X, Y, Z).
question_phrase(Z) :- question(X), verb(Y), append(X, Y, Z).

simple_past_phrase(Z) :- simple_past(X), gerund(Y), append(X, Y, Z).
simple_past_phrase(Z) :- simple_past(X), adjective(Y), append(X, Y, Z).
simple_past_phrase(Z) :- simple_past_negative(X), gerund(Y), append(X, Y, Z).
simple_past_phrase(Z) :- simple_past_negative(X), adjective(Y), append(X, Y, Z).
simple_past_phrase(Z) :- simple_past_question(X), gerund(Y), append(X, Y, Z).
simple_past_phrase(Z) :- simple_past_question(X), adjective(Y), append(X, Y, Z).

interrogative_pronoun_phrase(Z) :- interrogative_pronoun(X), verb_to_be_question(Y), append(X, Y, Z).

present(Z) :- pronoun(X), verb(Y), append(X, Y, Z).

past_phrase(Z) :- pronoun(X), past_verb(Y), append(X, Y, Z).

make_present_perfect_structure(Z) :- present_perfect(X), participle(Y), append(X, Y, Z).

present_perfect_phrase(Z) :- make_present_perfect_structure(X), noun(Y), append(X, Y, Z).

present_continuous_phrase(Z) :- present_continuous(X), gerund(Y), append(X, Y, Z).
