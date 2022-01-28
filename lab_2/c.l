/* 
Write a lex program to validate strings belong to ab*
(ab*)|(d*c)
*/

%%
^(ab*)|(d*c)$ printf("Valid!!");
.* printf("Invalid!!");
%%
