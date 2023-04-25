*** Settings ***
Documentation    Movie Page
Library  OperatingSystem
Resource         ../base.resource


*** Keywords ***
Download the selected movie
  Click Element  ${download_link}
  ${download_link}  Get WebElement  xpath://*[contains(text(), '.torrent')]
  ${torrent_name}  Get Text  ${download_link}
  Set Global Variable  ${torrent_name}
  Wait Until Keyword Succeeds  5s  1s  File Should Exist  ${download_directory}/${torrent_name}