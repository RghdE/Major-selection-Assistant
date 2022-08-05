:- dynamic rateList/1.
rateList([1, 2, 3, 4, 5, 1, 2]).

%---------------------------SATRT RULE----------------------------% 

start:- 
    tab(3),write('\U00002728'), tab(3),write('\U00002728'), tab(3),write('\U00002728'),tab(3),write('\U00002728'),nl,
    writeln('\U0001F58B Major Selection Assistant \U0001F58B '),
    writeln('\U00002B50 Our system will suggest a computer major for students interested in the technical field \U00002B50'),
    tab(3),write('\U00002728'), tab(3),write('\U00002728'), tab(3),write('\U00002728'),tab(3),write('\U00002728'),nl,
    intro.

%---------------------------MAIN MENU RULE----------------------------% 

intro:-
    nl,tab(3),write('\U0001F320'), tab(3),write('\U0001F320'), tab(3),write('\U0001F320'),nl,nl,
 	writeln('Please choose the traits that best represent you? \U0001F4BB'),
    writeln('1. Analytical skills, critical and logical thinking, patience, creative problem-solving, fast adaption to new technology.'), 
    writeln('2. Analytical logical thinking, strong patience, observation, and focus, problem-solving, decision-making.'), 
    writeln('3. Analytical skills, decision-Making, communication, and quick-wittedness.'), 
    writeln('4. Analytical skills, logical thinking, patience, passion in AI, strong observation, fast adaption to new technology.'), 
    writeln('5. Exit. \U0001F3F3'),
    read(Major),  
   choice(Major). 
  
    choice(Major):- 
    (Major == 1 , checkCS, !; 
     Major == 2 , checkCYS, !; 
     Major == 3 , checkCIS, !; 
     Major == 4 , checkAI, !; 
     Major == 5, exit, !; 
     %if user enters a wrong number 
     Major \= 1 ,Major \= 2, Major \= 3, Major \= 4, Major \= 5, 
     writeln('Invalid input! Please enter a number between (1-5)'), intro).  

  
%---------------RECURSIVE FUNCTION TO COUNT THE SCORE-----------------------%  
  
input(0). 
input(1). 

askQ([], Score):- Score > 2. 
askQ([H|T], Score) :-  
    writeln(H), 
    read(Answer), 
    input(Answer) ->  
    ( Answer == 1->  
      askQ(T, Score+1);  
      askQ(T, Score)); 
    ( writeln('Invalid input, Please enter either (0 or 1)'),  
      askQ([H|T], Score)). 

%----------------------------CS QUESTIONS-----------------------------------% 

askCS:- 
    nl,writeln('\U00002734\U00002734\U00002734\U00002734\U00002734'),nl,
    askQ(['Are you passionate about solving world tackles, developing smart solutions and computer games?
               \nif yes \U00002705 enter (1)\nif no \U0000274E enter (0)\n',
               ' Did you like Mathematics, Statistics, Software engineering and algorithms courses? 
                \nif yes \U00002705 enter (1)\nif no \U0000274E enter (0)\n',
               'Do you have good Problem-solving, Mathematical, Research, and teamwork skills? 
                \nif yes \U00002705 enter (1)\nif no \U0000274E enter (0)\n', 
             'Are you interested in improving Bioinformatics, Machine Learning, and Data Visualization Fields? 
              \nif yes \U00002705 enter (1)\nif no \U0000274E enter (0)\n'],0). 

  
        % IF askCS = True	                                Then % 
checkCS:-(askCS) ->  
    nl,tab(3),write('\U0001F389'), tab(3),write('\U0001F389'), tab(3),write('\U0001F389'),nl,
    nl,writeln('Congrats on finding your major! \U0001F3C5'),nl, 
    tab(3),write('\U0001F389'), tab(3),write('\U0001F389'), tab(3),write('\U0001F389'),nl,
   		% Display jobs % 
   	nl,writeln('Jobs Available for this major:- \U0001F4BB,'), 
    	 writeln(' Software Developer'), 
         writeln(' Software Engineer'), 
     	 writeln(' Application Developer'), 
     	 writeln(' Network Administrator'), 
    	 writeln(' Web Developer'), 
     	 writeln(' Systems Analyst'), 
    	 writeln(' Computer Tech Support'), 
    	 writeln(' Graphic Designer'), 
     	 writeln(' Web designer'), 
     	 writeln(' Systems administrator'), 
     	 writeln(' Computer scientist/researcher'), 
     	 writeln(' Multimedia developer'), 
    	 writeln(' Database Administrator'), 
    	 writeln(' Database Analyst'), 
    	 writeln(' Database Manager'), 
    	 writeln(' Database Developer'), 
    	 writeln(' Information Technology Specialist'), 
    	 writeln(' Software tester'), 
    	 writeln(' Mobile Application Developer'), 
    	 writeln(' Network Security Administrator'),nl,addRating;  
    %Else% 
    writeln('oh no! \U0001F4AC'),
    writeln('This major doesn\'t suit you\U0001F641 please pick other trait!'),
    intro. 

%----------------------------CIS----------------------------------% 

askCIS:-
     nl,writeln('\U00002734\U00002734\U00002734\U00002734\U00002734'),nl,
    askQ(['Are you passionate about the integration of computing with business? 
                \nif yes \U00002705 enter (1)\nif no \U0000274E enter (0)\n',
                ' Did you like Database, Business, Web development, Technical reports, and System Analysis courses? 
                 \nif yes \U00002705 enter (1)\nif no \U0000274E enter (0)\n',
                'Do you have good communication, interpersonal, and fast decision-making skills? 
                 \nif yes \U00002705 enter (1)\nif no \U0000274E enter (0)\n',
                'Do you have a good background in Business processes and System analysis? 
                 \nif yes \U00002705 enter (1)\nif no \U0000274E enter (0)\n'],0). 

        % IF askCIS = True	                                Then % 
checkCIS:-(askCIS) ->  
    nl,tab(3),write('\U0001F389'), tab(3),write('\U0001F389'), tab(3),write('\U0001F389'),nl,
    nl,writeln('Congrats on finding your major! \U0001F3C5'),nl, 
    writeln('「Computer Information System」seems to be more suitable to you.'),nl, 
    tab(3),write('\U0001F389'), tab(3),write('\U0001F389'), tab(3),write('\U0001F389'),nl,
   		% Display jobs %
   	nl,writeln('Jobs Available for this major:- \U0001F4BB,'), 
         writeln(' System Analyst'), 
         writeln(' Programmers'), 
     	 writeln(' IT Project managers'), 
     	 writeln(' Database administrator'), 
    	 writeln(' Entrepreneur in IT sector'), 
     	 writeln(' Continue their education in graduate school'),nl,addRating; 
    %Else% 
    writeln('oh no! \U0001F4AC'),
    writeln('This major doesn\'t suit you\U0001F641 please pick other trait!'),
    intro. 
%----------------------------CYS----------------------------------% 

askCYS:- 
    nl,writeln('\U00002734\U00002734\U00002734\U00002734\U00002734'),nl,
    askQ(['Are you passionate about solving ciphers, cryptography science, and catching cyber oriminals? 
                \nif yes \U00002705 enter (1)\nif no \U0000274E enter (0)\n',
                ' Did you like Networks, Operating Systems, programming, and data analysis courses? 
                 \nif yes \U00002705 enter (1)\nif no \U0000274E enter (0)\n',
                'Do you have good Problem-solving, data gathering, Research, and high focus skills? 
                 \nif yes \U00002705 enter (1)\nif no \U0000274E enter (0)\n',
                'Do you have a wide background in programming, law, and the willingness to adapt to new technology?
                 \nif yes \U00002705 enter (1)\nif no \U0000274E enter (0)\n'],0). 

        % IF askCYS = True	                                Then % 
checkCYS:-(askCYS) ->   
    nl,tab(3),write('\U0001F389'), tab(3),write('\U0001F389'), tab(3),write('\U0001F389'),nl,
    nl,writeln('Congrats on finding your major! \U0001F3C5'),nl, 
    writeln('「Computer Cyber Security」seems to be more suitable to you.'),nl, 
    tab(3),write('\U0001F389'), tab(3),write('\U0001F389'), tab(3),write('\U0001F389'),nl,
   		% Display jobs 
   	nl,writeln('   Jobs Available for this major:- \U0001F4BB,'), 
    	 writeln(' Forensic Specialist'), 
         writeln(' Cyber Security Consultant'), 
     	 writeln(' Incident and Threat Manager'), 
     	 writeln(' Risk Analysts and Risk Manager'), 
    	 writeln(' Software Developer'), 
     	 writeln(' IT Project Manager'), 
    	 writeln(' Computer Science Researcher'), 
     	 writeln(' Applications Specialist'), 
     	 writeln(' Computer Systems Consultant'), 
     	 writeln(' Cybercrime Specialist'), 
     	 writeln(' Digital or Computer Forensic Examiner'),nl,addRating;  
    	%Else% 
    writeln('oh no! \U0001F4AC'),
    writeln('This major doesn\'t suit you\U0001F641 please pick other trait!'),
    intro. 
%----------------------------AI-----------------------------------% 

askAI:- 
    nl,writeln('\U00002734\U00002734\U00002734\U00002734\U00002734'),nl,
    askQ(['Are you passionate about Robotics, loT, Building Intelligent Systems?
               \nif yes \U00002705 enter (1)\nif no \U0000274E enter (0)\n',
               ' Did you like Mathematics, Statistics, Biology, Electronics, and Engineering courses? 
                \nif yes \U00002705 enter (1)\nif no \U0000274E enter (0)\n', 
             'Do you have good Research, Mathematical, and Self-Learning skills? 
              \nif yes \U00002705 enter (1)\nif no \U0000274E enter (0)\n', 
             'Do you have a good background in Psychology, Philosophy, and Neuroscience?
              \nif yes \U00002705 enter (1)\nif no \U0000274E enter (0)\n'],0). 

       % IF askAI = True	                                Then % 
checkAI:-(askAI) ->  
    nl,tab(3),write('\U0001F389'), tab(3),write('\U0001F389'), tab(3),write('\U0001F389'),nl,
    nl,writeln('Congrats on finding your major! \U0001F3C5'),nl, 
    writeln('「Artifical Intelligence」seems to be more suitable to you.'),nl, 
    tab(3),write('\U0001F389'), tab(3),write('\U0001F389'), tab(3),write('\U0001F389'),nl,
   		% Display jobs % 
   	nl,writeln('   Jobs Available for this major:- \U0001F4BB,'), 
          writeln(' Machine learning engineer'), 
          writeln(' Robotics engineer'), 
     	 writeln(' Data scientist'), 
     	 writeln(' Computer vision engineer'), 
    	 writeln(' Algorithms engineer'), 
     	 writeln(' Principal engineer'), 
    	 writeln(' Computer scientist'), 
     	 writeln(' Research engineer'), 
     	 writeln(' Statistician'), 
     	 writeln(' Director of analytics'), 
     	 writeln(' Data engineer'),nl,addRating;  
    % Else % 
    writeln('oh no! \U0001F4AC'),
    writeln('This major doesn\'t suit you\U0001F641 please pick other trait!'),
    intro. 

%-------------Rating Rule----------------%  

addRating:- 
    writeln('\U00002734\U00002734\U00002734\U00002734\U00002734'),
    writeln('The available ratings are:'),
    % before update
    rateList(List), printList(List),
    writeln('Average rating of \U0001F58B Major Selection Assistant \U0001F58B system:'),
    average(_),nl,
    write('Please rate us on a scale of 1 (Very bad) to 5 (Excellent) \U0001F970'),nl,
    read(Rate),
    ( not(Rate==1),not(Rate==2),not(Rate==3),not(Rate==4),not(Rate==5) ->
    writeln("Invalid Input. You enter a number between 1-5."),addRating, !;
    (   nl,
    rateList(List),
    add(Rate,List,RatingList),
 	retract(rateList(List)),
 	assert(rateList(RatingList)),
    writeln('Your rating will be shared to help us improve our system \U0001F970'),
    write('Enter 1 if you want to save your rating in the system or 0 to delete it'),
    read(Ch), 
    rateList(RatingList),
	( Ch == 1, switch(Rate), !; 
  	  Ch == 0, list_butlast(RatingList, UpdatedList), 
    		   retract(rateList(RatingList)),
 			   assert(rateList(UpdatedList)),
   			   writeln('Your rating has been successfully removed \U0001F970'),
   			   rateList(UpdatedList), printList(UpdatedList),!, exit; 
      Ch \= 0, Ch \= 1,  
      writeln('Invalid input! Please enter either (0 or 1) '), addRating ,!))).

% insert element at the end of the list
add(X,T,Z):-
    append(T,[X],Z).

% delete element at the end of the list
list_butlast([X|Xs], Ys) :-                 
   list_butlast_prev(Xs, Ys, X).            

list_butlast_prev([], [], _).
list_butlast_prev([X1|Xs], [X0|Ys], X0) :-  
   list_butlast_prev(Xs, Ys, X1). 

% print the list
printList([]).
printList([H|T]):-
    writeln(H), 
    printList(T).

switch(Rate):- 
    %Rate is round(Rate),
    (Rate == 1 , process(Rate), !;  
     Rate == 2 , process(Rate), !; 
     Rate == 3 , process(Rate), !; 
     Rate == 4 , process(Rate), !; 
     Rate == 5 , process(Rate), !; 
     %if user enters a wrong number 
     Rate \= 1 ,Rate \= 2, Rate \= 3, Rate \= 4, Rate \= 5,  
     writeln('Invalid input! Please enter a number between (1-5)'), addRating).  

% old average calculation
average(Average):-
 rateList(List),
 length(List,Ln),
 sumAverage(List,Sum),
 Average is Sum/Ln, 
 writeln(Average).

sumAverage([X],X).
sumAverage([H|T],Sum):-
	sumAverage(T,SumT),
	Sum is H+SumT.

% new average calculation

process(Rate):- 
    nl,writeln('\U00002734\U00002734\U00002734\U00002734\U00002734'),
    writeln('Thank you for sharing your rating: '), 
    writeln(Rate),nl,
    writeln('\U00002734\U00002734\U00002734\U00002734\U00002734'),
    rateList(List),
    findAvg(List,Rate,0,0,_). 


findAvg([],New,Sum,Count,Avg):-
    Avg is (Sum + New)//(Count+1), 
    writeln('The new system rating  is: '),
    rateList(List), printList(List),!,nl,
    tab(3),write('\U0001F320'), tab(3),write('\U0001F320'), tab(3),write('\U0001F320'),nl,
     % average after update
    writeln('Average rating of \U0001F58B Major Selection Assistant \U0001F58B system: '),
    writeln(Avg), 
    exit.

findAvg([H|T],New,Sum,Count,Avg):- 
    findAvg(T,New,Sum+H,Count+1,Avg). 

%----------------------------Exit----------------------------------%  
exit:- 
    nl,nl,writeln('Thank you for using our system \U0001F970 See you soon!'),nl,
    tab(3),write('\U0001F320'), tab(3),write('\U0001F320'), tab(3),write('\U0001F320'),nl,!. 
