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

object_pronoun([me]).
object_pronoun([you]).
object_pronoun([him]).
object_pronoun([her]).
object_pronoun([it]).
object_pronoun([us]).
object_pronoun([them]).

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
participle([sawn]).
participle([killed]).
participle([tried]).
participle([stolen]).
participle([found]).
participle([forgotten]).

conditional([if]).
conditional([whether]).
logical_conditional([and]).
logical_conditional([or]).

plural_noun([trees]).
plural_noun([cars]).
plural_noun([arrows]).
plural_noun([ships]).
plural_noun([people]).
plural_noun([balls]).

present_perfect([i, have]).
present_perfect([you, have]).
present_perfect([he, has]).
present_perfect([she, has]).
present_perfect([it, has]).
present_perfect([we, have]).
present_perfect([they, have]).

present_perfect_interrogative([have, i]).
present_perfect_interrogative([have, you]).
present_perfect_interrogative([has, he]).
present_perfect_interrogative([has, she]).
present_perfect_interrogative([has, it]).
present_perfect_interrogative([have, we]).
present_perfect_interrogative([have, they]).

present_continuous([i, have, been]).
present_continuous([you, have, been]).
present_continuous([he, has, been]).
present_continuous([she, has, been]).
present_continuous([it, has, been]).
present_continuous([we, have, been]).
present_continuous([they, have, been]).

past_perfect([i, had]).
past_perfect([you, had]).
past_perfect([he, had]).
past_perfect([she, had]).
past_perfect([it, had]).
past_perfect([we, had]).
past_perfect([they, had]).

future_perfect([i, will, have]).
future_perfect([you, will, have]).
future_perfect([he, will, have]).
future_perfect([she, will, have]).
future_perfect([it, will, have]).
future_perfect([we, will, have]).
future_perfect([they, wil, have]).

future_perfect_progressive([i, will, have, been]).
future_perfect_progressive([you, will, have, been]).
future_perfect_progressive([he, will, have, been]).
future_perfect_progressive([she, will, have, been]).
future_perfect_progressive([it, will, have, been]).
future_perfect_progressive([we, will, have, been]).
future_perfect_progressive([they, wil, have, been]).

comparative([better, than]).
comparative([worse, than]).
comparative([prettier, than]).
comparative([stronger, than]).

superlative([worst]).
superlative([prettiest]).
superlative([strongest]).
superlative([coolest]).
superlative([bestest]).

merge_verb(Z) :- determiner(X), noun(Y), append(X, Y, Z).

quantify(Z) :- verb_to_be(X), adverb(Y), append(X, Y, Z).
quantify(Z) :- distance(X), merge_verb(Y), append(X, Y, Z).

object_pronoun_phrase(Z) :- verb_to_be(X), object_pronoun(Y), append(X, Y, Z).

make_comparative_structure(Z) :- verb_to_be(X), comparative(Y), append(X, Y, Z).
comparative_phrase(Z) :- make_comparative_structure(X), object_pronoun(Y), append(X, Y, Z).

superlative_helper(Z) :- verb_to_be(X), determiner(Y), append(X, Y, Z).
superlative_phrase(Z) :- superlative_helper(X), superlative(Y), append(X, Y, Z).

gerund_phrase(Z) :- verb_to_be(X), gerund(Y), append(X, Y, Z).

adjective_phrase(Z) :- quantify(X), adjective(Y), append(X, Y, Z).

modal_question(Z) :- modal(X), pronoun(Y), append(X, Y, Z).

infinite_verb(Y) :- verb(X), append([to], X, Y).

question_phrase(Z) :- modal_question(X), verb(Y), append(X, Y, Z).
question_phrase(Z) :- verb_to_be_question(X), gerund(Y), append(X, Y, Z).
question_phrase(Z) :- question(X), verb(Y), append(X, Y, Z).

make_reason_phrase(Z) :- pronoun(X), verb(Y), append(X, Y, Z).
reason_phrase(Z) :- make_reason_phrase(X), infinite_verb(Y), append(X, Y, Z).

simple_past_phrase(Z) :- simple_past(X), gerund(Y), append(X, Y, Z).
simple_past_phrase(Z) :- simple_past(X), adjective(Y), append(X, Y, Z).
simple_past_phrase(Z) :- simple_past_negative(X), gerund(Y), append(X, Y, Z).
simple_past_phrase(Z) :- simple_past_negative(X), adjective(Y), append(X, Y, Z).
simple_past_phrase(Z) :- simple_past_question(X), gerund(Y), append(X, Y, Z).
simple_past_phrase(Z) :- simple_past_question(X), adjective(Y), append(X, Y, Z).

interrogative_pronoun_phrase(Z) :- interrogative_pronoun(X), verb_to_be_question(Y), append(X, Y, Z).

present_phrase(Z) :- pronoun(X), verb(Y), append(X, Y, Z).
present_phrase(Z) :- negative_verb_to_be(X), gerund(Y), append(X, Y, Z).
present_phrase(Z) :- negative_verb_to_be(X), merge_verb(Y), append(X, Y, Z).
present_phrase(Z) :- negative_verb_to_be(X), pronoun(Y), append(X, Y, Z).

past_phrase(Z) :- pronoun(X), past_verb(Y), append(X, Y, Z).

make_conditional_structure(Z) :- pronoun(X), verb(Y), append(X, Y, Z).
make_conditional_structure_2(Z) :- make_conditional_structure(X), conditional(Y), append(X, Y, Z).
make_conditional_structure_3(Z) :- make_conditional_structure_2(X), pronoun(Y), append(X, Y, Z).
conditional_phrase(Z) :- make_conditional_structure_3(X), verb(Y), append(X, Y, Z).

phrase(Z) :- pronoun(X), verb(Y), append(X, Y, Z).

logical_conditional_phrase_helper(Z) :- phrase(X), logical_conditional(Y), append(X, Y, Z).
logical_conditional_phrase_helper_2(Z) :- logical_conditional_phrase_helper(X), pronoun(Y), append(X, Y, Z).
logical_conditional_phrase(Z) :- logical_conditional_phrase_helper_2(X), verb(Y), append(X, Y, Z).

make_present_perfect_structure(Z) :- present_perfect(X), participle(Y), append(X, Y, Z).
present_perfect_phrase(Z) :- make_present_perfect_structure(X), plural_noun(Y), append(X, Y, Z).
present_perfect_phrase(Z) :- present_perfect_interrogative(X), participle(Y), append(X, Y, Z).

past_perfect_phrase(Z) :- past_perfect(X), participle(Y), append(X, Y, Z).

present_continuous_phrase(Z) :- present_continuous(X), gerund(Y), append(X, Y, Z).

make_distance(Z) :- distance(X), to_be(Y), append(X, Y, Z).
absolute_possessive_phrase(Z) :- verb_to_be(X), absolute_possessive(Y), append(X, Y, Z).
absolute_possessive_phrase(Z) :- make_distance(X), absolute_possessive(Y), append(X, Y, Z).

make_possessive_structure(Z) :- make_distance(X), possessive(Y), append(X, Y, Z).
make_possessive_structure(Z) :- verb_to_be(X), possessive(Y), append(X, Y, Z).
possessive_phrase(Z) :- make_possessive_structure(X), noun(Y), append(X, Y, Z).

tense_helper(Z) :- verb_to_be(X), preposition(Y), append(X, Y, Z).
tense(Z) :- tense_helper(X), merge_verb(Y), append(X, Y, Z).

future_perfect_phrase(Z) :- future_perfect(X), participle(Y), append(X, Y, Z).
future_perfect_progressive_phrase(Z) :- future_perfect_progressive(X), gerund(Y), append(X, Y, Z).
