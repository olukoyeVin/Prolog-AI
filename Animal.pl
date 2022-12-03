/*Vincent Olukoye- ccs/00022/020*/
go :- hypothesize(Animal),
      write('I guess that the animal is: '),
      write(Animal),
      nl,
      undo.

hypothesize(cattle)	:-cattle,!.
hypothesize(dog)	:-dog,!.
hypothesize(donkey)	:-donkey,!.
hypothesize(human)	:-human,!.
hypothesize(goat)		:-goat,!.
hypothesize(ostrich)	:-ostrich,!.
hypothesize(hyena)	:-hyena,!.
hypothesize(leopard)	:-leopard,!.
hypothesize(zebra)	:-zebra,!.
hypothesize(cheatah):-cheatah,!.
hypothesize(elephant)	:-elephant,!.
hypothesize(pigeon)	:-pigeon,!.
hypothesize(monkey)	:-monkey,!.
hypothesize(baboon)	:-baboon,!.
hypothesize(sheep)	:-sheep,!.
hypothesize(fox)	:-fox,!.
hypothesize(snake)	:-snake,!.
hypothesize(crocodile)	:-crocodile,!.
hypothesize(zombie)	:-zombie,!.
hypothesize(kangaroo)	:-kangaroo,!.
hypothesize(unknown).

cattle :-	verify(domesticated),
		verify(rectangular_shape),
		verify(cloven-hooved),
		verify(four_legs),
		verify(herbivore), 
		verify(bos_taurus).		
			
dog	:- 	verify(domesticated),
		verify(carnnasial_teeth),
		verify(has_four_legs),
                verify(carnivore),
                verify(barks).
			
			
donkey:-	verify(transportation),
		verify(herbivore),
		verify(neihgs),
		verify(domesticated),
		verify(four_legs).

human:-	verify(two_legs),
		verify(mammary_glands),
		verify(simple_eyes),
		verify(omnivorous),
		verify(talks).

goat:-	verify(domesticated),
		verify(small_tail),
		verify(has_four_legs),
                verify(herbivore),
                verify(barks).
        
ostrich :-      verify(lay_eggs),
		verify(has_feathers),
		verify(long_neck),
		verify(long_legs),
		verify(two_legs).

hyena:-   verify(not_domesticated),
		verify(carnnasial_teeth),
		verify(has_four_legs),
                verify(carnivore),
                verify(has_spots),
                verify(short_behind_legs).

leopard:-    verify(not_domesticated),
		verify(carnnasial_teeth),
		verify(has_four_legs),
                verify(carnivore),
                verify(has_spots).

zebra:-      verify(not_domesticated),
		verify(diastema),
		verify(has_four_legs),
                verify(herbivore),
                verify(has_black_strips).

cheatah:-      verify(not_domesticated),
		verify(carnnasial_teeth),
		verify(has_four_legs),
                verify(carnivore),
                verify(run_faster).

elephant:-      verify(not_domesticated),
		verify(has_trunk),
		verify(has_four_legs),
                verify(herbivore),
                verify(has_cloves).

pigeon:-      verify(lay_eggs),
		verify(has_feathers),
		verify(two_legs).

monkey:-     verify(four_legs),
		verify(mammary_glands),
		verify(simple_eyes),
		verify(omnivorous),
		verify(chatters).

baboon:-    verify(four_legs),
		verify(mammary_glands),
		verify(simple_eyes),
		verify(omnivorous).

sheep:-   verify(domesticated),
		verify(fat_tail),
		verify(has_four_legs),
                verify(herbivore),
                verify(wool).

fox:-   verify(chest_pain),
              verify(cough_with_phlegm),
              verify(fatigue),
              verify(chills),
              verify(sweating),
              verify(shortness_of_breath).

snake:-      verify(hisses),
              verify(lays_eggs),
              verify(compound_eyes),
              verify(scales).

crocodile:-   verify(lays_eggs),
             verify(compound_eyes),
             verify(four_legs),
             verify(has_tail),
             verify(scales).

zombie:-   verify(two_legs),
		verify(mammary_glands),
		verify(simple_eyes),
		verify(omnivorous),
		verify(carnibalistic).

kangaroo:-   verify(has_tail),
                 verify(compound_eyes),
                 verify(has_pouch),
                 verify(jaundice).

/* how to ask questions */
ask(Question) :-
    write('Does the animal has the following characteristics: '),
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
