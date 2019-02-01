{ALGORITHME : carré magique
//BUT : afficher un carré magique
//ENTREE : /
//SORTIE : le carré magique

CONST TAILLE ← 5 : ENTIER
VAR T : TABLEAU [0..TAILLE, 0..TAILLE+1] de ENTIER
	 nb, i, j = ENTIER

DEBUT
    POUR i DE 1 A TAILLE FAIRE
    	POUR j DE 1 A TAILLE FAIRE
    		T[j,i] <-- 0
    	FINPOUR
    FINPOUR
    i <-- TAILLE DIV 2
	j <-- (TAILLE DIV 2)+1
	nb <--1
	T[j,i] <-- nb
	POUR nb DE 2 A TAILLE*TAILLE FAIRE
		i <-- i-1
		j <-- j+1
		SI (i = 0) ALORS
			i <-- TAILLE
		FINSI
		SI (j = TAILLE) ALORS
			j <-- 1
		FINSI
		TANTQUE (T[j,i]<>0) FAIRE
			j <-- j-1
			i <-- i-1
			SI (i = 0) ALORS
				i <-- TAILLE
			FINSI
			SI (j = 0) ALORS
				j <-- TAILLE
			FINSI
		FINTANTQUE
		T[j,i] <-- nb
	FINPOUR
	POUR i DE 1 A TAILLE FAIRE
    	POUR j DE 1 A TAILLE FAIRE
    		ECRIRE T[j,i] 
		FINPOUR
		ECRIRE //Retour à la ligne
    FINPOUR
FIN
}

program CarMag;

uses crt;
CONST TAILLE = 5;
VAR T:Array [1..TAILLE, 1..TAILLE] of INTEGER;
	nb, i, j  : INTEGER;

BEGIN
	clrscr;
    FOR i := 1 TO TAILLE DO
    BEGIN
        FOR j := 1 TO TAILLE DO
        BEGIN
			T[j,i] := 0;
		END;
	END;

	i:=TAILLE DIV 2;
	j:=(TAILLE DIV 2)+1;
	T[(TAILLE DIV 2)+1,TAILLE DIV 2] := 1;

	FOR nb:= 2 TO TAILLE*TAILLE DO
	BEGIN
		i := i-1;
		j := j+1;
		IF (i = 0) THEN
		BEGIN
			i := TAILLE;
		END;
		IF (j = TAILLE+1) THEN
		BEGIN
			j := 1;
		END;
		WHILE (T[j,i]<>0) DO
		BEGIN
			j := j-1;
			i := i-1;
			IF (i = 0) THEN
			BEGIN
				i := TAILLE;
			END;
			IF (j = 0) THEN
			BEGIN
				j := TAILLE;
			END;
		END;
		T[j,i] := nb;
	END;

	FOR i:=1 TO TAILLE DO
	BEGIN
    	FOR j:=1 TO TAILLE DO
    	BEGIN
    		WRITE (T[j,i]:3); 
		END;
		WRITEln;
	END;

	READln;
END.

