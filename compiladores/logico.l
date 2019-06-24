%{
	#include <stdio.h>
	#include <stdlib.h>
	#include "sintatico.tab.h"
	extern int yylval;
	void yyerror (char *);
%}

WHITE_SPACE [ \t\r\n]
COMENTARIO	[^*/]*

%%

";"	 {printf ("TOKEN PTV: %s\n", yytext); return(PTV);}
":"	 {printf ("TOKEN DPT: %s\n", yytext); return(DPT);}		
"'"	 {printf ("TOKEN ASPSI: %s\n", yytext); return(ASPSI);}		
"("	 {printf ("TOKEN AP: %s\n", yytext); return(AP);}
")"	 {printf ("TOKEN FP: %s\n", yytext); return(FP);}
"{"	 {printf ("TOKEN AC: %s\n", yytext); return(AC);}
"}"	 {printf ("TOKEN FC: %s\n", yytext); return(FC);}
"+"	 {printf ("TOKEN ADD: %s\n", yytext); return(ADD);}
"-"	 {printf ("TOKEN SUB: %s\n", yytext); return(SUB);}
"*"	 {printf ("TOKEN MUT: %s\n", yytext); return(MUT);}
"/"	 {printf ("TOKEN DIV: %s\n", yytext); return(DIV);}
"="	 {printf ("TOKEN IG: %s\n", yytext); return(IG);} 	
"<>" {printf ("TOKEN DIF: %s\n", yytext); return(DIF);}
">"	 {printf ("TOKEN MAQ: %s\n", yytext); return(MAQ);}
"<"	 {printf ("TOKEN MEQ: %s\n", yytext); return(MEQ);}
"<=" {printf ("TOKEN MEI: %s\n", yytext); return(MEI);}
">=" {printf ("TOKEN MAI: %s\n", yytext); return(MAI);}

"int" 	 {printf ("TOKEN INT: %s\n", yytext); return(INT);}
"double" {printf ("TOKEN DOUB: %s\n", yytext); return(DOUB);}
"char"	 {printf ("TOKEN CHAR: %s\n", yytext); return(CHAR);}
"atrib"  {printf ("TOKEN ATRIB: %s\n", yytext); return(ATRIB);}
"if"	 {printf ("TOKEN IF: %s\n", yytext); return(IF);}
"while"	 {printf ("TOKEN WHI: %s\n", yytext); return(WHI);}
"for"	 {printf ("TOKEN FOR: %s\n", yytext); return(FOR);}
"switch" {printf ("TOKEN SWI: %s\n", yytext); return(SWI);}
"case"	 {printf ("TOKEN CASE: %s\n", yytext); return(CASE);}
"and"	 {printf ("TOKEN AND: %s\n", yytext); return(AND);}
"not"	 {printf ("TOKEN NOT: %s\n", yytext); return(NOT);}
"OR"	 {printf ("TOKEN OR: %s\n", yytext); return(OR);}
"=="	 {printf ("TOKEN IGU: %s\n", yytext); return(IGU);}
"true"	 {printf ("TOKEN TRU: %s\n", yytext); return(TRU);}
"false"	 {printf ("TOKEN FAL: %s\n", yytext); return(FAL);}

[0-9]+\,[0-9]+ {printf("TOKEN FLOAT: %s\n",yytext);
		yylval = atoi(yytext);
		return (FLOAT);
		}

[0-9]+	{printf("TOKEN NUM: %s\n",yytext);
		yylval = atoi(yytext);
		return (NUM);
		}	

[a-zA-Z][a-zA-Z0-9]* {printf("TOKEN ID: %s\n",yytext);
		yylval = atoi(yytext);
		return (ID);
		}
	

{WHITE_SPACE}+					/*EliminaEspacoEmBranco*/
. 								/*CaracterNaoReconhecido*/{printf("Caracter Nao Reconhecido: %s\n",yytext);}
"/*"{COMENTARIO}"*/"			{printf("COMENTARIO: %s\n",yytext);}
%%

int yywrap(void){
	return 1;
}




