program Economia;
uses crt;
var VF,VP,i:real;
n,cont,x,y,z,a:integer;
SN:char;
Begin
cont:=6;
 clrscr;
 textbackground(black);
 clrscr;
 x:=1;
 y:=0;
 z:=0;
 a:=0;
 textcolor(15);
 textcolor(15);
 gotoxy(68,1);
 writeLn('+');
 gotoxy(68,5);
 writeLn('+');
 gotoxy(102,1);
 writeLn('+');
 gotoxy(102,5);
 writeLn('+');
 gotoxy(68,2);
 writeLn('|');
 gotoxy(102,2);
 writeLn('|');
 gotoxy(68,3);
 writeLn('|');
 gotoxy(102,3);
 writeLn('|');
 gotoxy(102,4);
 writeLn('|');
 gotoxy(68,4);
 writeLn('|');
 x:=69;
 y:=1;
  repeat
   gotoxy(x,y);
   writeLn('-');
   x:=x+1;  
  until x=102;
y:=5;
  repeat
   x:=x-1;
   gotoxy(x,y);
   writeLn('-');
  until x=69;
y:=0;
x:=1;
  repeat
     y:=y+1; 
     gotoxy(x,y);
     writeLn('¦');
   until y=50;
  x:=168;
  z:=y;
 repeat 
  z:=z-1;
  gotoxy(x,z);
  writeLn('¦');
 until z=1;
 a:=y;
 gotoxy(69,2);
 textcolor(white+black);
 writeLn('PROGRAMA CÁLCULO DO VALOR FUTURO');
 textcolor(8);
 gotoxy(73,3);
 writeLn('by HENRIQUE SILVA ROSA');
 gotoxy(81,4);
 writeLn('TURMA A');
 
 writeLn();
   gotoxy(5,5);
   textcolor(5);
   writeLn('DESEJA INICIAR O PROGRAMA? S/N');
    gotoxy(5,6);
  textcolor(15);
   readln(SN);
 while (SN='S') or (SN='s') do
  Begin
    cont:=cont+2;
    writeLn();
    gotoxy(5,cont);
    textcolor(13);
    writeLn('Digite o Valor Presente:');
    cont:=cont+1;
    gotoxy(5,cont);
    textcolor(green);
    writeLn('R$');
    gotoxy(8,cont);
    textcolor(15);
    readln(VP);
    writeLn();
    cont:=cont+2;
    gotoxy(5,cont);
    textcolor(13);
    writeLn('Digite o Valor do Prazo MENSAL:');
    cont:=cont+1;
    gotoxy(5,cont);
	  textcolor(15);
    readln(n);
    writeLn();
    cont:=cont+2;
    gotoxy(5,cont);   
    textcolor(13);
    writeLn('Digite o Valor da Taxa:');
    cont:=cont+1;
    gotoxy(4,cont);   
    textcolor(8);
    writeLn('%');
    textcolor(15);
    gotoxy(6,cont);
    readln(i);   
    writeLn();
    i:= i/100;
	 
    VF:= VP*Exp(Ln(1+i)*n);
    cont:=cont+2;
	  gotoxy(5,cont);
    writeLn('O VALOR FUTURO CALCULADO FOI:');
    gotoxy(35,cont);
    textcolor(lightgreen);
    writeLn('R$',VF:0:2);
    textcolor(7);
    writeLn();
    cont:=cont+2;
    gotoxy(5,cont);
    textcolor(5);
    writeLn('DESEJA CALCULAR MAIS VALORES? S/N');
    cont:=cont+1;
	  gotoxy(5,cont);
	  textcolor(15);
    readln(SN);
    
    
    If (SN='S') or (SN='s') then
    Begin
    x:=1;
     repeat 
      a:=a+1;
      gotoxy(x,a);
      writeLn('¦');
     until a=y+25;
    y:=y+25;
    x:=168;
    z:=a;
     repeat
			z:=z-1;
			gotoxy(x,z);
			writeLn('¦');
	   until z=y-25;
		end;	
  end;
End.