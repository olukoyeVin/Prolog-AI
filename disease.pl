/*Vivian Mwendwa- ccs/00053/020*/
/*Maryanne Odoyo- ccs/00052/020*/
/*Vincent Olukoye- ccs/00022/020*/
go :- hypothesize(Disease),
      write('I guess that the disease is: '),
      write(Disease),
      nl,
      undo.

hypothesize(malaria)	:-malaria,!.
hypothesize(cholera)	:-cholera,!.
hypothesize(bilharzia)	:-bilharzia,!.
hypothesize(typhoid)	:-typhoid,!.
hypothesize(corona)		:-corona,!.
hypothesize(tuberculosis)	:-tuberculosis,!.
hypothesize(syphillis)	:-syphillis,!.
hypothesize(gonorrhea)	:-gonorrhea,!.
hypothesize(ebola)	:-ebola,!.
hypothesize(hepatitis):-hepatitis,!.
hypothesize(diabetes)	:-diabetes,!.
hypothesize(kwashiorkor)	:-kwashiorkor,!.
hypothesize(marasmus)	:-marasmus,!.
hypothesize(rickets)	:-rickets,!.
hypothesize(cirrhosis)	:-cirrhosis,!.
hypothesize(pneumonia)	:-pneumonia,!.
hypothesize(ulcers)	:-ulcers,!.
hypothesize(h_pylori)	:-h_pylori,!.
hypothesize(whooping_cough)	:-whooping_cough,!.
hypothesize(yellow_fever)	:-yellow_fever,!.
hypothesize(unknown).

malaria :-flu,
        cold,
        verify(fatigue),
		verify(rapid_breathing),
		verify(rapid_heart_rate),
		verify(general_feeling_of_discomfort),
		verify(headache),
		verify(nausea_and_vomiting), 
		verify(diarrhea),
		verify(abdominal_pain), 
		verify(muscle_or_joint). 		
			
cholera	:- 	verify(diarrhea),
		verify(nausea_and_vomiting),
		verify(dehydration).
			
			
bilharzia:-	verify(nausea_and_vomiting),
		verify(diarrhea),
		verify(abdominal_pain),
		verify(muscle_pain),
		verify(rapid_heart_rate).

typhoid:-	verify(fever_that_starts_low_and_increases_daily),
		verify(headache),
		verify(weakness_and_fatigue),
		verify(muscle_aches),
		verify(sweating),
		verify(dry_cough),
		verify(loss_of_appetite_and_weight_loss),
		verify(stomach_pain),
		verify(diarrhea_or_constipation),
		verify(rash),
		verify(extremely_swollen_stomach).

tuberculosis:-	verify(coughing_for_three_or_more_weeks),
		verify(coughing_up_blood_or_mucus),
		verify(chest_pain_or_pain_with_breathing_or_coughing),
		verify(unintentional_weight_loss),
		verify(fatigue),
		verify(fever),
		verify(night_sweats),
		verify(chills),
		verify(loss_of_appetite).
        
corona :-	flu,
        cold,
		verify(tiredness),
		verify(shortness_of_breath_or_difficulty_breathing),
		verify(muscle_aches),
		verify(do_you_have_chills),
		verify(runny_nose),
		verify(headache),
		verify(chest_pain),
		verify(pink_eye_conjunctivitis),   
		verify(nausea_and_Vomiting),
		verify(diarrhea),
		verify(rash).
		   	   
flu:-		verify(sore_throat),
		verify(cough),
		verify(fever),
		verify(headache),
		verify(shortnes_of_breathe).


cold:-     verify(cough),
		   verify(sneezing).

syphilis:-    verify(painless_ulcers),
              verify(sores),
              verify(fatigue),
              verify(itching),
              verify(vaginal_discharge),
              verify(weight_loss).

gonorrhea:-    verify(sore_throats),
               verify(testicular_pain),
               verify(swollen_lymph_node),
               verify(weight_loss).

ebola:-      verify(chest_pain),
             verify(joint_pain_or_muscle_pain),
             verify(sore_throat),
             verify(vomiting_blood),
             verify(fatigue),
             verify(malise).

hepatitis_B:-      verify(abdominal_pain),
                    verify(fatigue),
                    verify(loss_of_appetite),
                    verify(yellow_skin_and_eyes),
                    verify(dark_urine),
                    verify(nausea).

diabetes:-         verify(excessive_thirst),
                   verify(blurred_vision),
                   verify(weight_loss),
                   verify(fatigue).

kwashiorkor:-      verify(bloating_or_diarrhoea),
                   verify(peripheral_edma),
                   verify(skin_rash).

marasmus:-      verify(weight_loss),
                verify(stunted_growth).

rickets:-     verify(stunted_growth),
              verify(pain_in_the_spine),
              verify(muscles_weakness),
              verify(bowed_legs),
              verify(knock_knees).

cirrhosis:-   verify(abdominal_pain),
              verify(fatigue),
              verify(nausea_or_passing),
              verify(dark_urine),
              verify(breast_augmentation),
              verify(caput_medusae).

pneumonia:-   verify(chest_pain),
              verify(cough_with_phlegm),
              verify(fatigue),
              verify(chills),
              verify(sweating),
              verify(shortness_of_breath).

ulcers:-      verify(chest_pain),
              verify(heartburn),
              verify(nausea),
              verify(abdominal_discomfort).

h_pylori:-   verify(burning_stomach_pain),
             verify(nausea),
             verify(loss_of_appetite),
             verify(frequent_bupping),
             verify(bloating).

whooping_cough:-   verify(congestion_or_runny_nose_or_sneezing),
                   verify(fatigue_or_fever),
                   verify(chronic_cough).

yellow_fever:-   verify(abdominal_pain),
                 verify(nausea_or_vomiting),
                 verify(chills_or_fatigue),
                 verify(jaundice).

/* how to ask questions */
ask(Question) :-
    write('Do you have the following signs and symptoms: '),
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
