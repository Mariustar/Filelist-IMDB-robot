*** Settings ***
Documentation       Header part of IMDB page
Resource           ./base.resource

*** Keywords ***
Navigate to homepage
  Click Element  ${imdb_homepage}

Search Movie on IMDB
  [Documentation]  Basic movie search functionality

  Go To  ${imdb_url}
  Click Element    ${imdb_search}
  Input Text       ${imdb_search}  ${imdb_search_term}
  Press Keys       ${imdb_search}  RETURN