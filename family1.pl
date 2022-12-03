/*CCS/00022/020   
*/

is_a_sister(ann,carol).
is_a_sister(carol,ann).
is_a_mother(ann,susan).
is_a_mother(susan,john).
is_a_mother(carol,tom).
is_a_father(bill,susan).
is_a_father(david,tom).
is_a_father(tom,john).
is_a_husband(bill,ann).
is_a_husband(david,carol).
is_a_husband(tom,susan).
is_a_wife(ann,bill).
is_a_wife(carol,david).
is_a_wife(susan,tom).
is_a_grandfather(X,Y):-is_a_father(X,M),(is_a_father(M,Y);is_a_mother(M,Y)).
is_a_grandmother(X,Y):-is_a_mother(X,M),(is_a_mother(M,Y);is_a_father(M,Y)).
is_a_aunt(X,Y):-is_a_sister(X,M),is_a_mother(M,Y).
is_a_paternal_grandfather(X,Y):-is_a_father(X,M),is_a_father(M,Y).
is_a_maternal_grandmother(X,Y):-is_a_mother(X,M),is_a_mother(M,Y).
is_a_maternal_grandfather(X,Y):-is_a_father(X,M),is_a_mother(M,Y).
is_a_paternal_grandmother(X,Y):-is_a_mother(X,M),is_a_father(M,Y).
is_a_paternal_aunt(X,Y):-is_a_sister(X,M),is_a_father(M,Y).
is_a_maternal_aunt(X,Y):-is_a_sister(X,M),is_a_mother(M,Y).

