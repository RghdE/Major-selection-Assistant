/* AI Project Team 1 - S9F4 
 * Raghad Alessa (Leader) --- 2190040157
 * Batoola Adnan Ali 	  --- 2180004452
 * Fatimah Zaki Al Jawad  --- 2180001176
 * Majd Al-Qanbar 	  --- 2180005891
 * Sukainah Alhammad 	  --- 2180003489
 * */

%-----------------------------START RULE------------------------------%

start:-
      write('*** Major selection Assistant ***'),nl,nl,
      write('** Our system will suggests a computer major for students 
             interested in the technical field **'),nl,
      menu.
%---------------------------MAIN MENU RULE----------------------------%

menu:- 
     nl,nl,
 	write('Please choose the traits that best represents you?'),
    nl, 
    write('1. Analytical skiils,Critical and Logical thinking,
           Patience,Creative Problem-solving,
           Fast adaption to new technology.'),
    nl,
    write('2. Analytical Logical thinking, Strong patience, 
           observation, and Focus, problem-solving, Decision-Making.'),
    nl,
    write('3. Analytical skiils, Decision-Making, Communication, 
           amd Quick-wittedness.'),
    nl, 
    write('4. Analytical skiils,Logical thinking,Patience, 
           Passion in AI, Strong observation, 
           Fast adaption to new technology.'),
    nl,
    write('5. Exit.'), nl,
    write('ENTER YOUR CHOICE:')nl,
    read(Major), 
	choice(Major).

    choice(Major):-
    (Major =:= 1 , computerScince;
     Major =:= 2 , cyberSecurity;
     Major =:= 3 , computerInformation;
     Major =:= 4 , artificialIntelligence;
     Major =:= 5, exit;
     %if user enters a wrong number
     Major =\= 1 ,Major =\= 2,Major =\= 3,Major =\= 4,Major =\= 5, 
     write('wrong choice please select a right choice '),nl, menu). 

%------------------------------MAJORS--------------------------------% 

computerScince:-
     write('---------------------------------------').

cyberSecurity:-
    /*
     * CYS character tralts: Analytical Logical thinking, 
     * Strong patience, observation, and Focus, problem-solving,
     *  Decision-Making 

	Are you passionate about solving ciphers, cryptography science,
    and catching cyber oriminals? 

	Did you like Networks, Operating Systems, programming, 
    and data analysis courses? 

	Do you have good Problem-solving, data gathering, Research, 
    and high focus skills? 

	Do you have a wide background in programming, law, and the 
    willingness to adapt to new technology?
    
     * write(1. Yes/Y 2- No/N), nl,
	 read( Y/N ). 
	if ( read( Y)) ->
		 CYS_counter(y). %here I didn’t add N because we only need to increment counter 
		%begin major counter 
		CYS_counter(y):-
		% ماادري وش السنتاكس المهم يناخد الفاريبل ويتساوون ببعض بعدين يزيد الكاونتر
		y = y, c++;
	CYS_courses(y):-
	write(1. Yes/Y 2- No/N), nl,
	 read( Y/N ). 
	if ( read( Y)) ->
		 CYS_counter(y). 
		CYS_counter(y):-
		y = y, c++;
	CYS_skills(y):-
	….
	CYS_background(y):-
	…..
If CYS_counter > 2 ->
	write(CYS job names), nl,
	write(congrats your’e done bla bla bla…), nl,
Else 
	character traits menu.

     */
     write('---------------------------------------').
computerInformation:-
     write('---------------------------------------').
artificialIntelligence:-
     write('---------------------------------------').
 			

exit:-
     writeln('End of Program'), fail.
