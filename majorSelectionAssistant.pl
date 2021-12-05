%---------------------------SATRT RULE----------------------------%

start:-
      writeln('✎ Major selection Assistant ✎'), nl, nl,
      writeln('★ Our system will suggests a computer major for students interested in the technical field ★'), 
      writeln('★ Are you ready to start your journey with ✎ the Major selection Assistant system ✎ ? ★ '), 
      writeln('If you are ready enter 1 if not ready enter 0 to exit'),
 	  read(Ready),
  	  checkInput(Ready).
   
%---------------------------READY RULE----------------------------%
	 checkInput(Ready):-
    ( Ready == 1, menu, !;
	Ready == 0, exit, !;
      Ready \= 0, Ready \= 1, 
      writeln('Invalid input! Please enter either (0 or 1) '), start). 

%---------------------------MAIN MENU RULE----------------------------%

menu:- 
writeln('》Please choose the traits that best represents you?'),nl,
    writeln('1- Analytical skills,Critical and Logical thinking, Patience, Creative Problem-solving, Fast adaption to new technology.'),
    writeln('2- Analytical Logical thinking, Strong patience, observation, and Focus, problem-solving, Decision-Making.'),
    writeln('3- Analytical skills, Decision-Making, Communication, and Quick-wittedness.'),
    writeln('4- Analytical skills, Logical thinking, Patience, Passion in AI, Strong observation, Fast adaption to new technology.'),
    writeln('5- Exit.'),
    writeln('\n'),
    writeln('》ENTER YOUR CHOICE: 1,2,3,4 or enter 5 to exit '), 
    read(Major), 
    choice(Major).

    choice(Major):-
    (Major == 1 , checkCS;
     Major == 2 , checkCYS;
     Major == 3 , checkCIS;
     Major == 4 , checkAI;
     Major == 5, exit;
     %if user enters a wrong number
     Major \= 1 ,Major \= 2, Major \= 3, Major \= 4, Major \= 5, 
     writeln('Invalid input! Please enter a number between (1-5)'), menu). 

%---------------RECURSIVE FUNCTION TO COUNT THE SCORE-----------------------% 

input(0).
input(1).

askQ([], Score):- Score > 2.
askQ([H|T], Score) :- 
    writeln(H),
    read(Answer),
    input(Answer) -> 
    ( Answer == 1 -> 
      askQ(T, Score+1); 
      askQ(T, Score));
    ( writeln('Invalid input, Please enter either (0 or 1)'), 
      askQ([H|T], Score)).
    
%----------------------------CS QUESTIONS-----------------------------------%

askCS:- askQ(['Are you passionate about solving world tackles, developing smart solutions and computer games? \n(Enter 1 for yes and 0 for No)'
             ,'Did you like Mathematics, Statistics, Software engineering and algorithms courses? \n(Enter 1 for yes and 0 for No)'
             ,'Do you have good Problem-solving, Mathematical, Research, and teamwork skills? \n(Enter 1 for yes and 0 for No)'
             ,'Are you interested in improving Bioinformatics, Machine Learning, and Data Visualization Fields? \n(Enter 1 for yes and 0 for No)'],0).

        % IF askCS = True	                                Then %
checkCS:-(askCS) -> 
    writeln('.・゜✭・.・✫・゜・Congrats on finding  your major!・゜✭・.・✫・゜・'),nl,
    writeln('「Computer Science」seems to be more suitable to you.'),nl,
		
   		% Display jobs %
    
   	 writeln('》Jobs Available for this major:-'),
    	 writeln('• Software Developer'),
         writeln('• Software Engineer'),
     	 writeln('• Application Developer'),
     	 writeln('• Network Administrator'),
    	 writeln('• Web Developer'),
     	 writeln('• Systems Analyst'),
    	 writeln('• Computer Tech Support'),
     	 writeln('• Graphic Designer'),
     	 writeln('• Web designer'),
     	 writeln('• Systems administrator'),
     	 writeln('• Computer scientist/researcher'),
     	 writeln('• Multimedia developer'),
    	 writeln('• Database Administrator'),
    	 writeln('• Database Analyst'),
    	 writeln('• Database Manager'),
    	 writeln('• Database Developer'),
    	 writeln('• Information Technology Specialist'),
    	 writeln('• Software tester'),
    	 writeln('• Mobile Application Developer'),
    	 writeln('• Network Security Administrator'),nl,nl, 
    	writeln('Hope you liked our system! Please rate us ꈍᴗꈍ'),nl,nl, addRating; 
    
    %Else%
    writeln('\n\nSorry this major didn\'t suit you! Please try again\n\n'), menu.

%----------------------------CIS----------------------------------%

askCIS:- askQ(['Are you passionate about the integration of computing with business?  \n(Enter 1 for yes and 0 for No)'
              ,'Did you like Database, Business, Web development, Technical reports, and System Analysis courses? \n(Enter 1 for yes and 0 for No)'
              ,'Do you have good communication, interpersonal, and fast decision-making skills?  \n(Enter 1 for yes and 0 for No)'
              ,'Do you have a good background in Business processes and System analysis? \n(Enter 1 for yes and 0 for No)'],0).

        % IF askCIS = True	                                Then %
checkCIS:-(askCIS) -> 
    writeln('.・゜✭・.・✫・゜・Congrats on finding  your major!.・゜✭・.・✫・゜・'),
    writeln('「Computer Information System」seems to be more suitable to you.'),nl,
		
   		% Display jobs %
    
   	writeln('》Jobs Available for this major:-'),
         writeln('• System Analyst'),
         writeln('• Programmers'),
     	 writeln('• IT Project managers'),
     	 writeln('• Database administrator'),
    	 writeln('• Entrepreneur in IT sector'),
     	 writeln('• Continue their education in graduate school'),nl,nl, 
    	writeln('Hope you liked our system! Please rate us ꈍᴗꈍ'),nl,nl, addRating; 
    
    %Else%
    writeln('\n\nSorry this major didn\'t suit you! Please try again\n\n'), menu.

%----------------------------CYS----------------------------------%

askCYS:- askQ(['Are you passionate about solving ciphers, cryptography science, and catching cyber oriminals (Enter 1 for yes and 0 for No)'
             ,'Did you like Networks, Operating Systems, programming, and data analysis courses? \n(Enter 1 for yes and 0 for No)'
             ,'Do you have good Problem-solving, data gathering, Research, and high focus skills? \n(Enter 1 for yes and 0 for No)'
             ,'Do you have a wide background in programming, law, and the willingness to adapt to new technology? \n(Enter 1 for yes and 0 for No)'],0).

        % IF askCYS = True	                                Then %
checkCYS:-(askCYS) ->  
    writeln('.・゜✭・.・✫・゜・Congrats on finding  your major!.・゜✭・.・✫・゜・'),nl,
    writeln('「Computer Cyber Security」seems to be more suitable to you.'),nl,
		
   		% Display jobs %
    
   	writeln('》Jobs Available for this major:-'),	
         writeln('Jobs Available for this major:-'),
    	 writeln('• Forensic Specialist'),
         writeln('• Cyber Security Consultant'),
     	 writeln('• Incident and Threat Manager'),
     	 writeln('• Risk Analysts and Risk Manager'),
    	 writeln('• Software Developer'),
     	 writeln('• IT Project Manager'),
    	 writeln('• Computer Science Researcher'),
     	 writeln('• Applications Specialist'),
     	 writeln('• Computer Systems Consultant'),
     	 writeln('• Cybercrime Specialist'),
     	 writeln('• Digital or Computer Forensic Examiner'),nl,nl, 
       	 writeln('Hope you liked our system! Please rate us ꈍᴗꈍ'),nl,nl, addRating; 
    
    	%Else%
   	writeln('\n\nSorry this major didn\'t suit you! Please try again\n\n'), menu.

%----------------------------AI-----------------------------------%

askAI:- askQ(['Are you passionate about Robotics, loT, Building Intelligent Systems? \n(Enter 1 for yes and 0 for No)'
             ,'Did you like Mathematics, Statistics, Biology, Electronics, and Engineering courses?  \n(Enter 1 for yes and 0 for No)'
             ,'Do you have good Research, Mathematical, and Self-Learning skills?  \n(Enter 1 for yes and 0 for No)'
             ,'Do you have a good background in Psychology, Philosophy, and Neuroscience? \n(Enter 1 for yes and 0 for No))'],0).

       % IF askAI = True	                                Then %
checkAI:-(askAI) -> 
    writeln('.・゜✭・.・✫・゜・Congrats on finding  your major!.・゜✭・.・✫・゜・'),nl,
    writeln('「Artifical Intelligence」seems to be more suitable to you.'),nl,
		
   		% Display jobs %
         
   	writeln('》Jobs Available for this major:-'),
         writeln('• Machine learning engineer'),
         writeln('• Robotics engineer'),
     	 writeln('• Data scientist'),
     	 writeln('• Computer vision engineer'),
    	 writeln('• Algorithms engineer'),
     	 writeln('• Principal engineer'),
    	 writeln('• Computer scientist'),
     	 writeln('• Research engineer'),
     	 writeln('• Statistician'),
     	 writeln('• Director of analytics'),
     	 writeln('• Data engineer'),nl,nl, 
    	writeln('Hope you liked our system! Please rate us ꈍᴗꈍ'),nl,nl, addRating; 
    
    % Else %
    writeln('\n\nSorry this major didn\'t suit you! Please try again\n\n'), menu.

%-------------Rating Rule----------------% 



addRating:-
    writeln("Enter a number between 1-5 to express how happy you are with our system."),nl,
    writeln("》Enter 1 for poor, up to 5 for excellent"),
    read(Rate),
    switch(Rate).
    
    switch(Rate):-
    (Rate == 1 , process(Rate); 
     Rate == 2 , process(Rate);
     Rate == 3 , process(Rate);
     Rate == 4 , process(Rate);
     Rate == 5 , process(Rate);
     %if user enters a wrong number
     Rate \= 1 ,Rate \= 2, Rate \= 3, Rate \= 4, Rate \= 5, 
     writeln('Invalid input! Please enter a number between (1-5)'), addRating). 

process(Rate):- 
    findAvg([4,3,5,4,5,5,5,5,5,3,3,3,4,4,4,3,4,5,5,5,4,4,4,4,4,4,4,4],
            Rate,0,0,_).

findAvg([],New,Sum,Count,Avg):-
    Avg is (Sum + New)//(Count+1),
	writeln('Average Rating of our system is = '),
    writeln(Avg),nl,
    writeln('Thank You').

findAvg([H|T],New,Sum,Count,Avg):-
    findAvg(T,New,Sum+H,Count+1,Avg).

%----------------------------Exit----------------------------------% 
exit:-
     writeln('★ Thank you for using the Major Assistant system, see you later. ★'), !. 
