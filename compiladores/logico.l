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
"if"	 {printf ("TOKEN IF: %s\n", yytext); return(IF);}
"while"	 {printf ("TOKEN WHI: %s\n", yytext); return(WHI);}
"for"	 {printf ("TOKEN FOR: %s\n", yytext); return(FOR);}
"and"	 {printf ("TOKEN AND: %s\n", yytext); return(AND);}
"not"	 {printf ("TOKEN NOT: %s\n", yytext); return(NOT);}
"OR"	 {printf ("TOKEN OR: %s\n", yytext); return(OR);}
"=="	 {printf ("TOKEN IGU: %s\n", yytext); return(IGU);}
"@"		 {printf ("TOKEN IN: %s\n", yytext); return(IN);}



"."[a-zA-Z0-9]+	{printf("TOKEN DOM: %s\n",yytext);
		yylval = atoi(yytext);
		return (DOM);
		}

[0-9+\.[0-9]+\.[0-9]+\-[0-9]+ {printf("TOKEN CPF: %s\n",yytext);
		yylval = atoi(yytext);
		return(CPF);
		}

[0-9+\.[0-9]+\.[0-9]+\.[0-9]+ {printf("TOKEN IP: %s\n",yytext);
		yylval = atoi(yytext);
		return (IP);
		}

[0-9]+\,[0-9]+ {printf("TOKEN FLOAT: %s\n",yytext);
		yylval = atoi(yytext);
		return (FLOAT);
		}
[0-1][0-1]*	{printf("TOKEN BIN: %s\n",yytext);
		yylval = atoi(yytext);
		return (BIN);
		}
[0-9]+	{printf("TOKEN NUM: %s\n",yytext);
		yylval = atoi(yytext);
		return (NUM);
		}

		
[0-9A-F]+	{printf("TOKEN HEXA: %s\n",yytext);
		yylval = atoi(yytext);
		return (HEXA);
		}



[a-zA-Z][a-zA-Z0-9]* {printf("TOKEN ID: %s\n",yytext);
		yylval = atoi(yytext);
		return (ID);
		}
		

"'"	 {printf ("TOKEN ASP: %s\n", yytext); return(ASP);}		
"("	 {printf ("TOKEN AP: %s\n", yytext); return(AP);}
")"	 {printf ("TOKEN FP: %s\n", yytext); return(FP);}
"{"	 {printf ("TOKEN AC: %s\n", yytext); return(AC);}
"}"	 {printf ("TOKEN FC: %s\n", yytext); return(FC);}
"+"	 {printf ("TOKEN ADD: %s\n", yytext); return(ADD);}
"-"	 {printf ("TOKEN SUB: %s\n", yytext); return(SUB);}
"*"	 {printf ("TOKEN MUT: %s\n", yytext); return(MUT);}
"/"	 {printf ("TOKEN DIV: %s\n", yytext); return(DIV);}
"<>" {printf ("TOKEN DIF: %s\n", yytext); return(DIF);}
">"	 {printf ("TOKEN MAQ: %s\n", yytext); return(MAQ);}
"<"	 {printf ("TOKEN MEQ: %s\n", yytext); return(MEQ);}
"<=" {printf ("TOKEN MEI: %s\n", yytext); return(MEI);}
">=" {printf ("TOKEN MAI: %s\n", yytext); return(MAI);}



{WHITE_SPACE}+					/*EliminaEspacoEmBranco*/
. 								/*CaracterNaoReconhecido*/{printf("Caracter Nao Reconhecido: %s\n",yytext);}
"/*"{COMENTARIO}"*/"			{printf("COMENTARIO: %s\n",yytext);}
%%

int yywrap(void){
	return 1;
}




