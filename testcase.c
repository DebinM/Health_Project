    #include <assert.h>  
    #include <ctype.h>  
    #include <errno.h>  
    #include <limits.h>  
    #include <string.h>  
    #include <stdarg.h>  
    #include <stdlib.h>  
    #include <stdio.h>  
      
    #include <CUnit/Basic.h>  
    #include <CUnit/Console.h>  
    #include <CUnit/CUnit.h>  
    #include <CUnit/TestDB.h>  
    #include "strformat.h"  
      
    /************************************************************************** 
    Function：test_string_lenth()
    **************************************************************************/  
    void test_string_lenth(void){  
        string test = "Hello";  
        int len = string_lenth(test);  
        CU_ASSERT_EQUAL(len,5);  
    }  
      
    /************************************************************************** 
    Function：test_to_Upper() 
    **************************************************************************/  
      
    void test_to_Upper(void){  
        char test[] = "Hello";  
        CU_ASSERT_STRING_EQUAL(to_Upper(test),"HELLO");  
          
    }  
      
    /************************************************************************** 
    Function：test_add_str() 
    **************************************************************************/  
    void test_add_str(void){  
        char test1[] = "Hello!";  
        char test2[] = "MGC";  
        CU_ASSERT_STRING_EQUAL(add_str(test1,test2),"Hello!MGC");  
          
    }  
      
    /************************************************************************** 
    Function：Put method into groups
    **************************************************************************/  
    CU_TestInfo testcase[] = {  
        {"test_for_lenth:",test_string_lenth},  
        {"test_for_add:",test_add_str},  
        CU_TEST_INFO_NULL  
    };  
      
    CU_TestInfo testcase2[] = {  
        {"test for Upper :",test_to_Upper},  
        CU_TEST_INFO_NULL  
    };  
      
    /************************************************************************** 
    Function：suite initialization 
    **************************************************************************/  
    int suite_success_init(void){  
        return 0;  
          
    }  
      
    /************************************************************************** 
    Function：suite clean 
    **************************************************************************/  
    int suite_success_clean(void){  
        return 0;  
    }  
    CU_SuiteInfo suites[] = {  
        {"testSuite1",suite_success_init,suite_success_clean,testcase},  
        {"testsuite2",suite_success_init,suite_success_clean,testcase2},  
        CU_SUITE_INFO_NULL  
    };  
      
    /************************************************************************** 
    Function：The port for testing
    **************************************************************************/  
    void AddTests(){  
        assert(NULL != CU_get_registry());  
        assert(!CU_is_test_running());  
      
        if(CUE_SUCCESS != CU_register_suites(suites)){  
            exit(EXIT_FAILURE);  
      
        }  
    }  
    /************************************************************************* 
    *Function：Runtest 
    **************************************************************************/  
      
    int RunTest(){  
            if(CU_initialize_registry()){  
                    fprintf(stderr, " Initialization of Test Registry failed. ");  
                    exit(EXIT_FAILURE);  
            }else{  
                    AddTests();  
                  // Automated mode
                    CU_set_output_filename("TestMax"); 
                    CU_list_tests_to_file(); 
                    CU_automated_run_tests(); 
                  
                      
                    /*****Basic Mode ******************** 
                   CU_basic_set_mode(CU_BRM_VERBOSE); 
                   CU_basic_run_tests(); 
                    //************************************/
      
                    /*****Console Mode ******************** 
                    CU_console_run_tests(); 
                    //************************************/  
      
                    CU_cleanup_registry();  
                      
                    return CU_get_error();  
                      
            }  
      
    }  
    /************************************************************************* 
    *Function：main()
    **************************************************************************/  
      
    int main(int argc, char * argv[])  
    {  
       return  RunTest();  
          
    }  
      
    /* testcase.c ends here */  
