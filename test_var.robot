*** Settings ***

*** Variables ***
${MY_VAR}  =  Hello there asshole
@{VAR_LIST}  =  Var1  Var2  Var3 


*** Test Cases ***
Demonstration 1  
  Log  ${MY_VAR}

Demonstration 2 
  #[Tags]  Current
  ${my_new_var} =   Set Variable   Moje promenna
  Log  ${my_new_var}

Demonstration 3
  [Tags]  Current
  Log  @{VAR_LIST} [0]
  Log  @{VAR_LIST} [2]

Demonstration 4
  [Tags]  Current
  @{my_var_list} =  Set Variable  Item_1  Item2  Item3  # fcni 
 # @{my_var_list} =  Create List  Item_1  Item2  Item3  # nefcni 
  Log  @{my_var_list} [0]
  Log  @{my_var_list} [1]


