/*ccs/00022/020*/
start :- theorize(Staff),
         write('The staff official done probably is: '),
         write(Staff),
         nl,
         undo.

theorize(lecture)	:-lecture,!.
theorize(mechanic):-mechanic,!.
theorize(cook):-cook,!.
theorize(secretary):-secretary,!.
theorize(accountant):-accountant,!.
theorize(dean_of_students):-dean_of_students,!.
theorize(cleaner):-cleaner,!.
theorize(librarian):-librarian,!.
theorize(security_guard):-security_guard,!.
theorize(systems_administrator):-systems_administrator,!.
theorize(hostel_manager):-hostel_manager,!.
theorize(janitor):-janitor,!.
theorize(unknown):-unknown,!.


blue_plate:- verify(drives_a_car_with_blue_plate).
lecture:-        
                    verify(mostly_put_on_official_clothes),
                   verify(have_most_presence_around_the_faculty_of_example_education),
                   verify(teach_students).
mechanic:-verify(have_most_presence_in_the_schools_garage),
                   verify(mostly_puts_on_overalls),
                   verify(body_mostly_in_black_oil).
cook:-verify(mostly_puts_on_white_chef_outfits),
                   verify(mostly_around_the_school_restaurant).
secretary:-verify(have_a_desk_beside_a_door_of_some_office),
           verify(ask_if_you_have_an_appointment),
           verify(go_to_the_office_to_ask_you_in).

accountant:-verify(have_most_presence_in_the_finance_department),
            verify(ask_for_receipts_if_you_claim_to_have_paid_but_does_reflect_in_system).
dean_of_students:-verify(have_most_presence_in_the_schools_garage),
                  verify(have_most_presence_in_the_schools_garage),
                  verify(have_most_presence_in_the_schools_garage).
cleaner:-verify(put_on_a_brown_overall),
         verify(carry_either_a_bucket_or_mopper),
         verify(usually_arrange_the_lecture_rooms_before_exams).
librarian:-verify(have_most_presence_in_the_schools_library),
           verify(always_ask_you_to_leave_your_bag_behind_when_in_the_library),
           verify(check_in_or_out_a_book_you_borrowed).
security_guard:-verify(put_on_a_uniform_including_a_cap_blue),
                verify(walk_with_a_dog_at_night),
                verify(tell_you_to_go_and_sleep_when_you_meet_in_late_hours).
systems_administrator:-verify(work_either_in_IT_office_or_Systems_Administrators_office),
                       verify(solve_problems_to_do_with_student_portal),
                       verify(open_and_close_semester_and_unit_registration_window).                
hostel_manager:-verify(register_you_to_a_particular_hostel),
                verify(receive_and_manage_students_cocerns_to_do_with_hostels).
janitor:-verify(walk_within_the_hostel_room_corridors),
         verify(chase_away_any_opposite_gender_that_should_not_be_there_past_the_the_defined_time).



/* how to ask questions */
ask(Question) :-
    write('Does the staff: '),
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
