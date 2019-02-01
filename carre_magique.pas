program carrepas;
uses crt ;
//BUT : completer un carre magique
//ENTREE : la longueur et la largeur du carre magique
// SORTIE : un carre magique

    CONST Amax= 5;
    VAR middle, nb, i, j : INTEGER ;
    A: array [1..Amax,1..Amax] of INTEGER ;


BEGIN
clrscr;
middle:=(Amax div 2)+1;

    nb:=1  ;
        FOR i:=1 TO Amax DO
        BEGIN
            FOR j:=1 TO Amax DO
            BEGIN

                 A[i,j]:=0;



             end;
             writeln;


         end;



    i:=middle-1;
    j:=middle;
    A[i,j]:=nb;
         WHILE (nb<>(Amax*Amax)) DO
           BEGIN
               i:=i-1;
               j:=j+1;
               nb:=nb+1;
               IF i<1 THEN
               BEGIN
                   i:=Amax;
               end;
               IF j>Amax THEN
               BEGIN
                   j:=1;
               end;
               IF j<1 THEN
               BEGIN
                   j:=Amax;
               end;
               WHILE A[i,j]<>0 DO
               BEGIN
               i:=i-1;
               j:=j-1;
               IF i<1 THEN
               BEGIN
                   i:=Amax;
               end;
               IF j>Amax THEN
               BEGIN
                   j:=1;
               end;
               IF j<1 THEN
               BEGIN
                   j:=Amax;
               end;

               END;




              A[i,j]:=nb;

       end;




FOR i:=1 TO Amax DO
        BEGIN
            FOR j:=1 TO Amax DO
            BEGIN


                write ('|');

                write (A[i,j]:2);

             end;
             write ('|');

             writeln;
         end;

    readln;
END.
