/*vincent olukoye ccs/00022/020*/
go :- hypothesize(Credit),
      write('I guess that you should be: '),
      write(Credit),
      nl,
      undo.

hypothesize(credited)	:-credited,!.
hypothesize(not_credited)	:-not_credited,!.
hypothesize(unknown).

credited :-
		verify(you_must_be_over_18_years_old),
		verify(you_must_be_a_kenyan),
		verify(you_must_be_trustworthy),
		verify(you_must_have_a_national_id),
		verify(you_must_have_a_bank_account), 
		verify(you_must_be_below_50_years),
		verify(you_must_have_children), 
		verify(you_should_not_be_employed). 		

not_credited:-	verify(you_must_be_below_18_years_old),
		verify(you_should_not_be_a_kenyan),
		verify(you_must_be_not_trustworthy),
		verify(you_should_not_have_a_national_id),
		verify(you_should_not_have_a_bank_account),
		verify(you_must_be_above_50_years_old),
		verify(you_should_not_have_children),
		verify(you_should_be_unemployed).



/* how to ask questions */
ask(Question) :-
    write('Do they have the following qualifications: '),
    write(Question),
    write('? '),
    read(Response),
    nl,
    ( (Response == yes ; Response == y)
      ->
       assert(yes(Question)) ;
       assert(no(Question)), fail).

:- dynamic yes/1,no/1.

/* How to verify something */
verify(S) :-
   (yes(S) 
    ->
    true ;
    (no(S)
     ->
     fail ;
     ask(S))).

/* undo all yes/no assertions */
undo :- retract(yes(_)),fail. 
undo :- retract(no(_)),fail.
undo.
