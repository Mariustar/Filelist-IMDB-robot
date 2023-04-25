*** Settings ***
Documentation       Search Page of IMDB
Resource           ./base.resource

*** Keywords ***
Click on movies button
  [Documentation]  Clicking on movies button to only search for movies
  Click Element  ${movie_button}
  Sleep  1s

Verify results
  [Documentation]  Verifies the serch results, if there are no movies with the search terms you provided, test will fail
  Page Should Not Contain  No results found for ${imdb_search_term}

Click on first movie
  Click Element  ${first_movie}
  Sleep  2s