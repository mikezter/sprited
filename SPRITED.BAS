DECLARE SUB rechts ()
DECLARE SUB graphik ()
DECLARE SUB ToHDD (SAVEUNDER)
DECLARE SUB aktuell ()
DECLARE SUB wirklich ()
DECLARE SUB quit ()
DECLARE SUB haupt ()
DECLARE SUB kreuz ()
DECLARE SUB init ()

DIM SHARED schrift(1 TO 30, 1 TO 30)
DIM SHARED crux(31 TO 35, 31 TO 35)
DIM SHARED blackcrux(36 TO 40, 36 TO 40)
COMMON SHARED x, y, lx, ly, col%, name$, SAVEUNDER


init
haupt

SUB aktuell

 FOR px = 7 TO 397 STEP 10
 FOR py = 31 TO 461 STEP 11

 
 PUNKT = POINT(px, py)
 PSET (CINT(px / 10) + 500, CINT(py / 11) + 198), PUNKT

 NEXT py
 NEXT px
END SUB

SUB graphik
LINE (5, 29)-(lx, ly), 8, B
LINE (590, 32)-(605, 144), 8, B


DO

  ly = ly - 11
  LINE (lx, ly)-(lx - 400, ly), 8

LOOP UNTIL ly <= 25

ly = 469

DO

  lx = lx - 10
  LINE (lx, 29)-(lx, ly), 8

LOOP UNTIL lx <= 5

PUT (x, y), crux, PSET

LINE (1, 1)-(639, 479), 13, B
LINE (0, 18)-(640, 18), 13

END SUB

SUB haupt

DO
kreuz

LOOP

END SUB

SUB init
SCREEN 12
WIDTH 80, 60

GET (1, 1)-(5, 5), blackcrux

LINE (1, 3)-(5, 3), 12
LINE (3, 1)-(3, 5), 12
PSET (3, 3), 9
PSET (3, 4), 14
PSET (3, 2), 14
PSET (2, 3), 14
PSET (4, 3), 14

GET (1, 1)-(5, 5), crux

col% = 15
lx = 405
ly = 469
x = lx - 7
y = ly - 8

name$ = "NoName"

CLS
COLOR 14

LOCATE 2, 1
PRINT " Sprite Editor", "¸ 1996 StriderSoft"

LOCATE 2, 60
PRINT name$ + ".SPR"

graphik

lx = 405
ly = 469

rechts

END SUB

SUB kreuz
COLOR 14

LOCATE 2, 60
PRINT name$ + ".SPR"; "       "

SELECT CASE INKEY$

       
        CASE CHR$(0) + "M"
        PUT (x, y), blackcrux, PSET
        paintercol = POINT(x - 2, y - 2)
        PAINT (x, y), paintercol, 8
       
        
       
        x = x + 10
        IF x > lx - 7 THEN x = lx - 7
        
        PUT (x, y), crux, PSET
       
'===============================================================
       
        CASE CHR$(0) + "K"
        PUT (x, y), blackcrux, PSET
        paintercol = POINT(x - 2, y - 2)
        PAINT (x, y), paintercol, 8
        IF ever = 1 THEN PAINT (x, y), col%, 8
        x = x - 10
       
        IF x < 8 THEN x = 8
       
        PUT (x, y), crux, PSET
       
'===============================================================
       
        CASE CHR$(0) + "P"
        PUT (x, y), blackcrux, PSET
        paintercol = POINT(x - 2, y - 2)
        PAINT (x, y), paintercol, 8
       
        y = y + 11
       
        IF y > ly - 8 THEN y = ly - 8
       
        PUT (x, y), crux, PSET
       
'===============================================================

        CASE CHR$(0) + "H"
        PUT (x, y), blackcrux, PSET
        paintercol = POINT(x - 2, y - 2)
        PAINT (x, y), paintercol, 8
        y = y - 11
       
        IF y < 32 THEN y = 32
       
        PUT (x, y), crux, PSET
       
'===============================================================

        CASE "0"
        col% = 15
      
        FOR umy = 31 TO 135 STEP 8
     
        LINE (422, umy)-(607, umy + 8), 0, B
     
        NEXT umy

        LINE (422, 31 + 0)-(607, 39 + 0), 12, B

        CASE "1"
        col% = 1
       
        FOR umy = 31 TO 135 STEP 8
      
        LINE (422, umy)-(607, umy + 8), 0, B
      
        NEXT umy
       
        LINE (422, 31 + 8)-(607, 39 + 8), 12, B

        CASE "2"
        col% = 2
       
        FOR umy = 31 TO 135 STEP 8
      
        LINE (422, umy)-(607, umy + 8), 0, B
      
        NEXT umy

        LINE (422, 31 + 16)-(607, 39 + 16), 12, B

        CASE "3"
        col% = 3
       
        FOR umy = 31 TO 135 STEP 8
      
        LINE (422, umy)-(607, umy + 8), 0, B
      
        NEXT umy

        LINE (422, 31 + 24)-(607, 39 + 24), 12, B

        CASE "4"
        col% = 4
       
        FOR umy = 31 TO 135 STEP 8
      
        LINE (422, umy)-(607, umy + 8), 0, B
      
        NEXT umy

        LINE (422, 31 + 32)-(607, 39 + 32), 12, B

        CASE "5"
        col% = 5
       
        FOR umy = 31 TO 135 STEP 8
      
        LINE (422, umy)-(607, umy + 8), 0, B
      
        NEXT umy

        LINE (422, 31 + 40)-(607, 39 + 40), 12, B

        CASE "6"
        col% = 6
       
        FOR umy = 31 TO 135 STEP 8
      
        LINE (422, umy)-(607, umy + 8), 0, B
      
        NEXT umy

        LINE (422, 31 + 48)-(607, 39 + 48), 12, B

        CASE "7"
        col% = 7
       
        FOR umy = 31 TO 135 STEP 8
      
        LINE (422, umy)-(607, umy + 8), 0, B
      
        NEXT umy

        LINE (422, 31 + 56)-(607, 39 + 56), 12, B
       
        CASE "8"
        col% = 9
       
        FOR umy = 31 TO 135 STEP 8
      
        LINE (422, umy)-(607, umy + 8), 0, B
      
        NEXT umy

        LINE (422, 31 + 64)-(607, 39 + 64), 12, B

        CASE "9"
        col% = 10
       
        FOR umy = 31 TO 135 STEP 8
      
        LINE (422, umy)-(607, umy + 8), 0, B
      
        NEXT umy

        LINE (422, 31 + 72)-(607, 39 + 72), 12, B

        CASE "õ"
        col% = 11
       
        FOR umy = 31 TO 135 STEP 8
      
        LINE (422, umy)-(607, umy + 8), 0, B
      
        NEXT umy

        LINE (422, 31 + 80)-(607, 39 + 80), 12, B

        CASE "$"
        col% = 12
       
        FOR umy = 31 TO 135 STEP 8
      
        LINE (422, umy)-(607, umy + 8), 0, B
      
        NEXT umy

        LINE (422, 31 + 88)-(607, 39 + 88), 12, B

        CASE "%"
        col% = 13

        FOR umy = 31 TO 135 STEP 8
      
        LINE (422, umy)-(607, umy + 8), 0, B
      
        NEXT umy
       
        LINE (422, 31 + 96)-(607, 39 + 96), 12, B

        CASE "&"
        col% = 14
       
        FOR umy = 31 TO 135 STEP 8
      
        LINE (422, umy)-(607, umy + 8), 0, B
      
        NEXT umy
       
        LINE (422, 31 + 104)-(607, 39 + 104), 12, B
       
        CASE "l"
        wirklich
        aktuell

        CASE "q"
        quit
       
        CASE "x"
        PAINT (x, y), 0, 8
        PUT (x, y), crux, PSET
        

        CASE " "
        PAINT (x, y), col%, 8
        PUT (x, y), crux, PSET
        

        CASE "a"
        aktuell

        CASE "s"
        ToHDD (0)

        CASE "u"
        ToHDD (1)

END SELECT







END SUB

SUB quit
COLOR 12

LOCATE 58, 54
PRINT " Programm verlassen ?"


DO
SELECT CASE INKEY$
CASE "j"
END

CASE "n"
LOCATE 58, 54
PRINT "Q: Ende              "
EXIT DO


END SELECT
LOOP

END SUB

SUB rechts

FOR stat = 144 TO 32 STEP -8
col% = 0

SELECT CASE stat
CASE 144 - 8
col% = 14
CASE 144 - 16
col% = 13
CASE 144 - 24
col% = 12
CASE 144 - 32
col% = 11
CASE 144 - 40
col% = 10
CASE 144 - 48
col% = 9
CASE 144 - 56
col% = 7
CASE 144 - 64
col% = 6
CASE 144 - 72
col% = 5
CASE 144 - 80
col% = 4
CASE 144 - 88
col% = 3
CASE 144 - 96
col% = 2
CASE 144 - 104
col% = 1
CASE 144 - 112
col% = 15

END SELECT

 LINE (590, stat)-(605, stat + 6), col%, BF

NEXT stat


LOCATE 2 + 3, 60
PRINT "0: Weiá"


LOCATE 2 + 4, 60
PRINT "1: Blau"


LOCATE 2 + 5, 60
PRINT "2: Grn"


LOCATE 2 + 6, 60
PRINT "3: Cyan"


LOCATE 2 + 7, 60
PRINT "4: Rot"


LOCATE 2 + 8, 60
PRINT "5: Magenta"


LOCATE 2 + 9, 60
PRINT "6: Braun"


LOCATE 2 + 10, 60
PRINT "7: Hellgrau"


LOCATE 2 + 11, 60
PRINT "8: Hellblau"


LOCATE 2 + 12, 60
PRINT "9: Hellgrn"


LOCATE 2 + 13, 54
PRINT "SHIFT-3: Hellcyan"


LOCATE 2 + 14, 54
PRINT "SHIFT-4: Hellrot"


LOCATE 2 + 15, 54
PRINT "SHIFT-5: Pink"


LOCATE 2 + 16, 54
PRINT "SHIFT-6: Gelb"


LOCATE 21, 54
PRINT "L: L”scht das Sprite"

LOCATE 22, 54
PRINT "X: L”scht den Punkt"

LOCATE 23, 54
PRINT "A: Aktualisiert"
LOCATE 24, 57
PRINT "das Anzeigefenster"

LOCATE 32, 54
PRINT "S: Speichern"

LOCATE 33, 54
PRINT "U: Speichern unter"

LOCATE 58, 54
PRINT "Q: Ende"

LINE (422, 31 + 0)-(607, 39 + 0), 12, B
LINE (499, 199)-(542, 242), 12, B

END SUB

SUB ToHDD (SAVEUNDER)
IF SAVEUNDER = 1 OR name$ = "NoName" THEN

SAVEUNDER = 0


 DO
       
        COLOR 12
        LOCATE 58, 54
      
        PRINT "Name                  "
        LOCATE 58, 54
      
        INPUT "Name  "; name$

        
        IF LEN(name$) = 0 THEN
        name$ = "NoName"
        GOSUB ende
        END IF


        IF LEN(name$) > 8 THEN

                LOCATE 58, 54
                PRINT "     Unzul„ssig !         "
                DO: LOOP WHILE INKEY$ = ""

        END IF

        IF LEN(name$) <= 8 AND LEN(name$) >= 1 THEN EXIT DO


 LOOP

END IF



 OPEN name$ + ".SPR" FOR OUTPUT AS #1

 FOR px = 7 TO 397 STEP 10
       
        FOR py = 31 TO 461 STEP 11


                PUNKT = POINT(px, py)

                IF PUNKT <> 0 THEN

                PRINT #1, ":pset(X+"; CINT(px / 10); ",Y+"; CINT(py / 11); "),"; PUNKT
 
                END IF

        NEXT py

 NEXT px

CLOSE #1

ende:

COLOR 14
LOCATE 58, 54
PRINT "Q: Ende         "

END SUB

SUB wirklich
COLOR 12

LOCATE 58, 54
PRINT " Sprite l”schen ?"

COLOR 14

DO
 SELECT CASE INKEY$

        CASE "j"
         FOR px = 10 TO 400 STEP 10
          FOR py = 35 TO 465 STEP 11
           PAINT (px, py), 0, 8
          NEXT py
         NEXT px
name$ = "NoName"

PUT (x, y), crux

LOCATE 58, 54
PRINT "Q:Ende            "

EXIT DO

CASE "n"

LOCATE 58, 54
PRINT "Q:Ende            "

EXIT DO


END SELECT

LOOP

END SUB

