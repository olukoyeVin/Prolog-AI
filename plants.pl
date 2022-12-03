/*ccs/00022/020*/
go :- hypothesize(Plants),
      write('I guess that the plant is: '),
      write(Plants),
      nl,
      undo.

hypothesize(maize)	:-maize,!.
hypothesize(beans)	:-beans,!.
hypothesize(cassava)	:-cassava,!.
hypothesize(potatoes)	:-potatoes,!.
hypothesize(rice)	:-rice,!.
hypothesize(oxalis)	:-oxalis,!.
hypothesize(sodom_apple)	:-sodom_apple,!.
hypothesize(ground_nuts)	:-ground_nuts,!.
hypothesize(sweet_potatoes)	:-sweet_potatoes,!.
hypothesize(miraa)	:-miraa,!. 
hypothesize(bhang)	:-bhang,!.
hypothesize(flowers)	:-flowers,!.
hypothesize(mushrooms)	:-mushrooms,!.
hypothesize(grass)	:-grass,!.
hypothesize(shrub)	:-shrub,!.
hypothesize(unknown).

maize :-
                verify(tall),
		verify(has_long_leaves),
		verify(green_in_colour),
		verify(has_green_leaves).		
			
beans	:- 	verify(grow_on_the_ground),
		verify(short_in_size),
		verify(has_green_leaves).
			
			
cassava:-	verify(grows_underneeth),
		verify(has_long_fruits),
		verify(takes_long_to_cook),
		verify(has_green_leaves),
		verify(has_a_tall_stem).

potatoes:-	verify(grows_underneeth),
		verify(prodeces_yellow_flowers),
		verify(its_fruits_are_peeled),
		verify(its_fruits_are_round),
		verify(takes_long_to_grow),
		verify(very_sweet).

rice:-	verify(harvested_using_machines),
		verify(brown_in_colour),
		verify(have_hard_cereals),
		verify(short_in_size),
		verify(harvested_during_sunny_days),
		verify(grown_in_mwea).
        
oxalis :-
		verify(has_small_leaves),
		verify(small_in_size),
		verify(has_green_leaves),
		verify(its_leaves_are_eaten).
		   	   
sodom_apple:-	verify(has_yellow_fruits),
		verify(has_thongs),
		verify(has_green_leaves),
		verify(used_by_kids_to_play),
		verify(has_round_fruits).


ground_nuts:-     verify(they_are_cereals),
		   verify(grow_in_dry_areas).
sweet_potatoes :-
                verify(some_are_yellow_and_others_white),
		verify(grow_underneeh),
		verify(short_in_size),
		verify(they_are_sweet).
miraa :-
                verify(green),
		verify(spoils_easily),
		verify(grown_on_large_area),
		verify(eaten_by_many_people).
bhang :-
                verify(hallucinations),
		verify(overreaction),
		verify(illegal),
		verify(liked_by_many).
flowers :-
                verify(scenty_smell),
		verify(beautiful),
		verify(loved_by_ladies),
		verify(some_are_short_others_tall).
mushrooms :-
                verify(short),
		verify(white_in_colour),
		verify(grow_in_dry_areas),
		verify(stuffy).
grass :-
                verify(green_in_colour),
		verify(can_grow_tall),
		verify(eaten_by_herbivores),
		verify(looks_ike_a_green_carpet).
shrub :-
                verify(short),
		verify(grow_in_desert),
		verify(can_be_a_forest),
		verify(scattered).

/* how to ask questions */
ask(Question) :-
    write('Do they have the following characteristics: '),
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
