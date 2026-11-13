% Federico Pucci - UNLaM academic exercise
parcial1(ana,7).
parcial1(juan,8).
parcial1(karen,9).
parcial1(nico,2).
parcial1(fede,9).
parcial1(lucas,7).
parcial2(ana,7).
parcial2(juan,7).
parcial2(karen,2).
parcial2(nico,6).
parcial2(fede,5).
parcial2(lucas,4).

promociono(X,N):- parcial1(X,N1), N1 >= 7,
    			  parcial2(X,N2), N2 >= 7,
                  N is (N1+N2)/2,
                  write(X),write(" "),writeln(N),fail.

curso(X,N):- parcial1(X,N1), N1 >= 4,
    		 parcial2(X,N2), N2 >= 4,
             (N1 < 7; N2 < 7),
    		 N is (N1+N2)/2,
             write(X),write(" "),writeln(N),fail.
