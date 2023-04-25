*** Settings ***
Documentation
Resource            ../Resources/imdb/HeaderPage.resource
Resource            ../Resources/imdb/SearchPage.resource
Resource            ../Resources/imdb/ImdbPage.resource
Resource            ../Resources/filelist/Login.resource
Resource            ../Resources/filelist/BrowsePage.resource
Resource            ../Resources/filelist/MoviePage.resource


Test Setup     Start Test
Test Teardown  End Test

*** Test Cases ***
Imdb movie search
  Search Movie on IMDB
  Click on movies button
  Verify results
  Click on first movie
  Get url part for filelist

Filelist Login and go to browse page
  Filelist Login
  Filelist Browse page search
  Get the first 1080p movie
  Download the selected movie
