%{
#include<stdio.h>
#include<string.h>
int i=0, o=0, flag=0, k;
char id[10][10], op[10][10];
%}
%%
[0-9]+ { flag++; strcpy(id[i], yytext); i++; }
[+*-/] { flag--; strcpy(op[o], yytext); o++; }
.|\n { return 0; }
%%
int main()
{
printf("Enter the expression: \n");
yylex();
if(flag!=1){
printf("\n Invalid expression\n");
}
Else
{
printf("\n Valid expression\n");
printf("\n Operators are:\n");
for (k=0;k<o;k++)
{
printf("%s\t", op[k]);
}
printf("\n Identifiers are:\n");
for (k=0;k<i;k++)
{
printf("%s\t", id[k]);
}
}
}
int yywrap()
{
return 1;
}

