*** Settings ***
Resource         base.resource

*** Keywords ***
Filelist Login
  Go To  ${filelist_url}
  Click Element  ${filelist_username_input}
  Input Text  ${filelist_username_input}  ${filelist_username}
  Click Element  ${filelist_password_input}
  Input Text  ${filelist_password_input}  ${filelist_password}
  Click Element  ${filelist_login_on_any_ip}
  Click Element  ${filelist_login_button}
