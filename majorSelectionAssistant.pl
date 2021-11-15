/* AI Project Team 1 - S9F4 
 * Raghad Alessa (Leader) --- 2190040157
 * Batoola Adnan Ali 	  --- 2180004452
 * Fatimah Zaki Al Jawad  --- 2180001176
 * Majd Al-Qanbar 		  --- 2180005891
 * Sukainah Alhammad 	  --- 2180003489
 * */

%-----------------------------START RULE------------------------------%

start:-
      writeln('*** Major selection Assistant ***'), nl, nl,
      writeln('** Our system will suggests a computer major for students interested in the technical field **'),
      menu.

%---------------------------MAIN MENU RULE----------------------------%

menu:- 
 	writeln('Please choose the traits that best represents you?.'),
    writeln('1- Analytical skiils,Critical and Logical thinking, Patience, Creative Problem-solving, Fast adaption to new technology.'),
    writeln('2- Analytical Logical thinking, Strong patience, observation, and Focus, problem-solving, Decision-Making.'),
    writeln('3- Analytical skiils, Decision-Making, Communication, and Quick-wittedness.'),
    writeln('4- Analytical skiils,Logical thinking,Patience, Passion in AI, Strong observation, Fast adaption to new technology.'),
    writeln('5- Exit.'),
    writeln('ENTER YOUR CHOICE:'), 
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
     writeln('Wrong choice, Please select a right choice '), menu). 

%------------------------------MAJORS--------------------------------% 

%------------------------------CS MAJOR--------------------------------% 

computerScince:-
     write('---------------------------------------').

%-------------------------------------------CYS MAJOR-------------------------------------------% 


cyberSecurity:-
    CYS_C is 0,
    %--------------------------PASSION------------------------------%
    check_input('Are you passionate about solving ciphers, cryptography science, and catching cyber oriminals? \n(yes/no)', 
            CYS_ANS, check, 
            'Invalid Input! Please enter either yes or no.',CYS_C,X),
    % (CYS_ANS=='yes') -> inc(CYS_C,_); true,
    
	% if not yes or no -> ouput again | print the courses if ans = no
	% eles if ans = yes -> incr the counter and print the courses 
	
    %--------------------------COURSES------------------------------%
    check_input('Did you like Networks, Operating Systems, programming, and data analysis courses? \n(yes/no)', 
            CYS_ANS, check, 
            'Invalid Input! Please enter either yes or no.',CYS_C,X),
	% (CYS_ANS=='yes') -> inc(CYS_C,_); true,
    
	%--------------------------SKILLS------------------------------%
    check_input('Do you have good Problem-solving, data gathering, Research, and high focus skills? \n(yes/no)', 
            CYS_ANS, check, 
            'Invalid Input! Please enter either yes or no.',CYS_C,X),
	% (CYS_ANS=='yes') -> inc(CYS_C,_); true,
    
	%--------------------------BACKGROUND------------------------------%
    check_input('Do you have a wide background in programming, law, and the willingness 
                 to adapt to new technology? \n(yes/no)', 
          		  CYS_ANS, check,'Invalid Input! Please enter either yes or no.',CYS_C,X),
	% (CYS_ANS=='yes') -> inc(CYS_C,_); true,
    
	%--------------------------JOBS------------------------------%
      
  	  (X >= 2) ->
    	 writeln('==================Congrats on finiding your major!====================
                  \nHope you liked our system! Please rate us!'),
		 writeln('CYS JOBS');  
    	 writeln('**\n**\nSorry this major didn\'t suit you! Please try again**\n**\n'), menu.

%-------------------------------------------END CYS MAJOR-------------------------------------------% 



%------------------------------CIS MAJOR--------------------------------% 

computerInformation:-
     write('---------------------------------------').

%------------------------------AI MAJOR--------------------------------% 

artificialIntelligence:-
     write('---------------------------------------').

check_input(Question, ANS, CheckPred, ErrorMsg, C,C1) :-
    repeat,
        format('~w:~n', [Question]), 
        read(ANS),
        (   call(CheckPred, ANS) ->  
       		 true, !;   
       		 format('ERROR: ~w.~n', [ErrorMsg]),
            fail
        ).

check(X):-
    X == 'yes'; X=='no'.

%inc(0).
inc(X,X1):-
    X1 is X+1.

/*
 * check lower case letters in input 
 * 1-
	atom_is_lower(N) :-
    atom_chars(N, [L]),
    char_type(L, lower).
    2- 
    atom_is_lower(Atom) :-
    catch(char_type(Atom, lower), _, fail).
    
    next_id(Id) :-
    flag(my_id, Id, Id+1).
    ---------------------------
    TODO:
    1- add global variables (incrementing++)
    2- add check on user input (not to choose the same major again)
    Extra:
    3- add users rating function
    4- enter user name and display it 
    */
exit:-
     writeln('End of Program'), fail.
