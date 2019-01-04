# lexyacckalkulator
Jednostavni kalkulator napravljen pomoću lex-a i yacc-a. Kalkulator funkcioniše tako što korisnik zadaje izraze na standardnom ulazu, koje će leksički analizator obraditi i pretvoriti u tokene koje prosleđuje sintaksnom analizatoru. Sintaksni analizator prepoznaje zadate šablone visokog nivoa, pomoću kojih prepoznaje izraze koje izračunava i štampa na standardni izlaz. 

Leksički i sintaksni analizator dobijamo izvršavanjem sledećih komandi:
<pre><code>$ lex kalkulator.l
$ yacc -d kalkulator.y
</code></pre>

Nakon izvršenja komandi, sledećom komandom dobijamo izvršni fajl:
<pre><code>$ gcc -o kalkulator lex.yy.c y.tab.c -lfl</code></pre>

Pokretanjem <code>kalkulator</code> izvršnog fajla startujemo kalkulator:
<pre><code>$ ./kalkulator
1+2
<b>3</b>
5+8
<b>13</b>
(2+3)*5
<b>25</b>
1*2*3*4
<b>24</b>
0/5
<b>0</b></code></pre>
