*** Settings ***
Documentation    Browse page of Filelist
Resource         base.resource
Resource  ../imdb/ImdbPage.resource


*** Keywords ***
Filelist Browse page search
  Click Element  ${filelist_browse_element}
  Click Element  ${filelist_search_input}
  Input Text  ${filelist_search_input}  ${movie_term}
  Select From List By Index  ${filelist_search_by}  3
  Press Keys  ${filelist_search_input}  RETURN
  Click Element  ${filelist_sortby_seeds}

Get the first 1080p movie
  ${elements}  Get WebElements  xpath://*[contains(text(), '1080p')]
  ${first_1080_movie}  Set Variable  ${elements}[0]
  Click Element  ${first_1080_movie}


