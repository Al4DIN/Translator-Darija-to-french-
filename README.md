Translator-Darija-to-french :
	Description:
 This project is about a translating Moroccan Dialect which it is called Darija to French language using the theory of languages and the three steps             of processing a code: lexical one, syntax and semantic analysis.
		  And it is based on flex & bison tools for building programs that handle 			structured input. (originally tools for building compilators).
 The words that can be possible to translate are already written in our file Kalimat.txt (It would be likely to check it so you know which words or sentence you can try to translate)
	Demo :	
		We launch our exe file in our command line by :
	.\translate.exe
	we put the sentence that we would like to translate to French 
	and we get the result here as mentioned in the screen  
	(to stop our program a small ctrl+c cmd will be enough.	

	 You want to compile it:
       gcc lex.yy.c translator.tab.c  -o youroutputname

