#include <assert.h>  
#include <ctype.h>  
#include <errno.h>  
#include <limits.h>  
#include <string.h>  
#include <stdarg.h>  
#include <stdlib.h>  
#include <stdio.h>  
#include "strformat.h"  
  
  
/************************************************************************** 
Feature：Add String 
**************************************************************************/  
string add_str(string word1 ,string word2){  
    return (strcat(word1, word2));  
}  
  
/************************************************************************** 
Feature： Change the string into capital form
**************************************************************************/  
string to_Upper(string word){  
    int i;  
    for(i = 0;word[i] !='\0' ;i++){  
        if(word[i]<'z' && word[i]>'a'){  
            word[i] -= 32;  
        }  
    }  
    return word;  
      
}   
/************************************************************************** 
Feature：the length of the string 
**************************************************************************/  
int string_lenth(string word){  
    int i;  
    for(i = 0 ;word[i] != '\0';i++){  
          
    }  
    return i;  
}  
  
