*** Settings ***
Documentation   Template robot main suite.
Library         RPA.Browser.Selenium
Library         RPA.HTTP
Library         RPA.Excel.Files
Library         RPA.PDF


*** Variables ***
${URL}  %{Website URL}
${User Name}    %{User Name}
${Password}  %{Password}

*** Keywords ***
Sleep Time
    Sleep    3
*** Comments ***
Sleep time goes here

*** Keywords ***
Open The Intranet Website
    Open Available Browser  ${URL}
    Maximize Browser Window
Close Chrome Browser
    Close Browser
*** Comments ***
Open and Close Browser

*** Keywords ***
Log in
    Input Text  id:username  ${User Name}
    Input Password  id:password  ${Password}
    Submit Form
    Wait Until Page Contains Element    id:sales-form

*** Keywords ***
Log Out
    Click Button    id:logout


*** Keywords ***
Download Input Excel File
    ${Download_URL} =   Catenate    ${URL}SalesData.xlsx
    Download   ${Download_URL}  overwrite=True

*** Keywords ***
Fill And Submit The Form
    [Arguments]  ${salesreps}
    Wait Until Page Contains Element    xpath://span[@class="username"]
    Input Text    id:firstname    ${salesreps}[First Name]
    Input Text    id:lastname    ${salesreps}[Last Name]
    Input Text    id:salesresult    ${salesreps}[Sales]
    Select From List By Value    id:salestarget    ${salesreps}[Sales Target]
    Submit Form


*** Keywords ***
Fill The Form Using The Data From The Excel File
    Open Workbook    SalesData.xlsx
    ${SalesRepos} =  Read Worksheet As Table    header=True
    Close Workbook
    FOR    ${salesreps}    IN    @{SalesRepos}
    Fill And Submit The Form    ${salesreps}
    END

*** Keywords ***
Take Screenshot of Sales
    Screenshot      css:div.sales-summary     ${CURDIR}${/}output${/}SalesSummary.png

*** Keywords ***
Export Sales Table as PDF
    Wait Until Element Is Visible    id:sales-results
    ${Sales_Results} =     Get Element Attribute    id:sales-results    outerHTML
    Html To Pdf    ${Sales_Results}    ${CURDIR}${/}output${/}Sales.pdf

*** Tasks ***
Insert the sales data for the week and export it as a PDF.
    Download Input Excel File
    Sleep Time
    Open The Intranet Website
    Sleep Time
    Log in
    Sleep Time
    Fill The Form Using The Data From The Excel File
    Sleep Time
    Take Screenshot of Sales
    Sleep Time
    Export Sales Table as PDF
    Sleep Time
    Log Out
    Sleep Time
    Close Chrome Browser
