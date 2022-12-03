/*ccs/00022/020*/
start :- theorize(Course),
         write('The course done probably is: '),
         write(Course),
         nl,
         undo.

theorize(computer_science)	:-computer_science,!.
theorize(music)	:-music,!.
theorize(education)	:-education,!.
theorize(theology)	:-theology,!.
theorize(philosophy)	:-philosophy,!.
theorize(medicine)	:-medicine,!.
theorize(law)	:-law,!.
theorize(accountancy)	:-accountancy,!.
theorize(economics)	:-economics,!.
theorize(journalism)	:-journalism,!.
theorize(english_literature)	:-english_literature,!.
theorize(civil_engineering)	:-civil_engineering,!.
theorize(automotive_engineering)	:-automotive_engineering,!.
theorize(aeronautics_engineering)	:-aeronautics_engineering,!.
theorize(electrical_engineering):-electrical_engineering,!.
theorize(analytical_chemistry)	:-analytical_chemistry,!.
theorize(industrial_chemistry)	:-industrial_chemistry,!.
theorize(interior_design)	:-interior_design,!.
theorize(criminology)	:-criminology,!.
theorize(political_science)	:-political_science,!.
theorize(design)	:-design,!.



theorize(unknown).
four_year_course :-verify(have_4_years_duration_to_complete_school).
five_year_course :-verify(have_5_years_duration_to_complete_school).
six_year_course :-verify(have_6_years_duration_to_complete_school).

computer_science :-four_year_course,
                   verify(walk_in_casual_clothes),
                   verify(always_carry_a_bag),
                   verify(use_kali_linux_operating_system_in_the_laptop),
                   verify(use_black_themes_in_the_gadgets_he_or_she_uses),
                   verify(have_stickers_in_his_laptop).

music            :-four_year_course,
                   verify(wear_flashy_clothes),
                   verify(always_social),
                   verify(always_know_the_latest_song),
                   verify(use_the_rythm_melody_bass_buzzwords).

hospitality       :-verify(on_once_a_week_basis_put_on_white_cotton_shirt_and_a_black_cotton_trouser),                   
                    verify(mostly_complain_of_how_badly_some_food_was_cooked_when_in_a_restaurant),
                    verify(wash_ripe_banana_then_peel_of_the_banana_skin_to_eat_the_banana). 

education         :-four_year_course,
                    verify(wear_official_or_semiofficial_clothes),                   
                    verify(try_to_speak_in_english_or_pure_swahili),
                    verify(always_talk_about_highschools).
theology         :-four_year_course,
                    verify(tell_you_about_various_aspects_of_religion),
                    verify(use_the_christian_islam_hindu_bible_quoran_and_related_buzzwords).
philosophy       :-four_year_course,
                   verify(tell_you_about_socrates);
                   verify(tell_you_about_patos);
                   verify(tell_you_about_how_to_live_and_deal_with_a_situation).
medicine         :-six_year_course,   
                   verify(complain_having_three_semesters_in_a_year), 

law              :-six_year_course,
                   verify(wear_suits),
                   verify(say_he_or_she_knows_his_or_her_rights),
                   verify(say_he_longs_to_be_admitted_to_the_bar).
accountancy      :-verify(carry_a_calculator_everytime),
                   verify(display_a_clear_track_of_how_money_was_used).                      

economics        :-verify(speak_of_the_countrys_gdp),
                   verify(speak_about_policies_effects_on_production_of_goods_and_services).
journalism       :-verify(say_he_wants_to_be_like_jeff_koinange),
                   verify(walk_with_a_camera_and_a_microphone),
                   verify(comment_on_various_styles_used_by_writers_and_magazine).                                       
english_literature:-verify(read_alot_of_setbooks_in_third_year),
                    verify(know_almost_all_books_by_ngugi_wa_thiongo),
                    verify(talk_about_shake_sphere).
civil_engineering:-engineering,
                   verify(talk_about_construction)
                   verify(talk_about_how_an_architect_is_confuses),
                   verify(say_he_will_asses_a_top_project).
engineering      :-five_year_course,
                   verify(talk_about_calculus),
                   verify(talk_about_technical_design),
                   verify(talk_about_geomerty).
automotive_engineering:-engineering,
                        verify(talk_about_cars),
                        verify(use_the_horsepower_or_torqueconvertor_or_gear_or_engine_buzzwords).

aeronautics_engineering:-engineering,
                        verify(talk_about_aeroplanes),
                        verify(use_the_radar_or_fins_or_turbo_or_engine_buzzwords).

electrical_engineering:-engineering,
                        verify(talk_about_electricity),
                        verify(use_the_stepup_or_control_or_transformer_or_volts_buzzwords).
white_lab_coats      :-verify(wear_white_lab_coats)                        
analytical_chemistry:-white_lab_coats,
                       verify(always_go_to_lab_with_chemicals)
                       verify(use_the_moles_or_molarmass_or_pippette_or_burette_buzzwords).
industrial_chemistry:-white_lab_coats,
                       verify(boast_how_he_make_explosives_and_acids),
                       verify(use_the_bond_or_compound_or_oxide_or_sulphate_buzzwords).                       
              
interior_design    :-verify(comment_on_colors_of_paint_used_in_a_house).
criminology        :-verify(disguise_himself_to_who_he_is_not),
                     verify(explain_how_a_certain_incidence_might_have_happen),
                     verify(know_basic_martial_arts).

political_science  :-verify(say_how_a_particular_politician_made_a_wrong_move),
                     verify(explain_how_the_politicians_move_was_wrong),
                     verify(make_a_convincing_explanation).
                     

/* how to ask questions */
ask(Question) :-
    write('Does the student: '),
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
