*** Settings ***
Documentation       IMDB
Library             String
Resource           ./base.resource

*** Variables ***

${movie_term}

*** Keywords ***
Get url part for filelist
  [Documentation]  Gets the url part of the url that will be used to search on filelist
  ${movie_url}  Get Location
  ${movie_url_parts}  Split String  ${movie_url}  /
  ${movie_term}=  Set Variable  ${movie_url_parts}[4]
  Set Global Variable  ${movie_term}
  Close Browser