*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${imdb_url}            https://imdb.com
${imdb_search}         css:#suggestion-search
${imdb_homepage}       css:#home_img_holder
${imdb_search_term}    Avengers
${movie_button}        //section[@data-testid='more-results-section']//a[1]
${first_movie}         //body/div[@id='__next']/main[@role='main']/div[@role='presentation']/div[@role='presentation']/section/div/div/section[@data-testid='find-results-section-title']/div/ul[@role='presentation']/li[1]

${filelist_url}        https://filelist.io
${filelist_username_input}  css:#username
${filelist_password_input}  css:#password
${filelist_username}
${filelist_password}
${filelist_login_on_any_ip}  //input[@name='unlock']
${filelist_login_button}  //input[@value='Login']
${filelist_browse_element}  //div[@id='nav']//a[normalize-space()='Browse']
${filelist_search_input}  name:search
${filelist_search_by}  name:searchin
${filelist_sortby_seeds}  //img[@title='Seeders']
${download_link}  //*[@id="maincolumn"]/div[1]/div[5]/div/span[1]/a
${download_directory}  C:\\Users\\Marius\\Downloads

${browser}             chrome

*** Keywords ***
Start Test
  Open Browser  about:blank  ${browser}
  Maximize Browser Window

End Test
  Close Browser