%%
"//". printf("Comment\n");
f" "[a-zA-Z]	printf("floatdcl id\n");
i" "[a-zA-Z]	printf("intdcl id\n");
[a-zA-Z]" "=" "[0-9]+	printf("id assign inum\n");
[a-zA-Z]" "=" "[0-9]*"."[0-9]+	printf("id assign fnum\n");
[a-zA-Z]" "=" "[a-zA-Z]" ""+"" "[0-9]*"."[0-9]+	printf("id assign id plus fnum\n");
[a-zA-Z]" "=" "[a-zA-Z]" ""+"" "[0-9]+	printf("id assign id plus inum\n");
[a-zA-Z]" "=" "[a-zA-Z]" ""-"" "[0-9]*"."[0-9]+	printf("id assign id minus fnum\n");
[a-zA-Z]" "=" "[a-zA-Z]" ""-"" "[0-9]+	printf("id assign id minus inum\n");
p" "[a-zA-Z]	printf("print id\n");
. ;	
%%

