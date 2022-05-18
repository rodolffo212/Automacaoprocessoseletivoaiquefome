*** Settings ***
Library    SeleniumLibrary
Library    Screenshot


*** Variables ***
${URL}          https://www.magazineluiza.com.br/
${HOMEMAGALU}   xpath=//a[@data-testid='logo-magalu']
${SUBMENU}      Xpath=//a[@data-testid='link'][contains(.,'Ar e Ventilação')]
${VOLTAGEM EL}  Xpath=//label[@for='variation-label']
${SELECT_N}     Xpath=//select[@data-attribute-type='voltage']
${SACOLA}       Xpath=//button[contains(@class,'buy-product-detail js-add-cart-button js-main-add-cart-button js-add-box-prime')]
${CONTAIN}      Xpath=//div[text()='Sacola']
${TITULOVENT}   Xpath=Ventilador de Mesa e Parede Ultra V-30B-6P - 30cm 3 Velocidades  - 110V 
${QNTCAMPO}     Xpath=//span[@class='BasketPriceBox-prices-title']
${VALORCAM}     Xpath=//div[@class='BasketPriceBox-prices-values'][contains(.,'R$ 95,00')]

*** Keywords ***

Abrir o Navegador
    Open Browser    browser=firefox  
       

Fechar o Navegador
    
    Close Browser 
    Capture Page Screenshot   


Abrir o site da Magazine luiza
    Maximize Browser Window
    Go To  url=${URL}
    Page Should Contain            Magazine Luiza | Pra você é Magalu!
    Capture Page Screenshot 

Acessar o segundo departamento
    Click Element                  //a[contains(.,'Todos os departamentos')]
    Capture Page Screenshot 
    Wait Until Element Contains    ${SUBMENU}    Ar e Ventilação
    Click Element                  ${SUBMENU}
    Capture Page Screenshot 
    Page Should Contain            Ar e Ventilação
    Capture Page Screenshot 

Acessar a página do terceiro produto
    Capture Page Screenshot 
    Click Element                  (//h2[contains(@data-testid,'product-title')])[3]
    Capture Page Screenshot 
    Wait Until Element Is Visible  ${VOLTAGEM EL}


Adicionar o produto a sacola (Carrinho)
    Capture Page Screenshot 
    Click Element                   ${SELECT_N}
    Capture Page Screenshot 
    Select From List By Value       ${SELECT_N}   020470100
    Capture Page Screenshot  
    Wait Until Element Is Visible   ${SACOLA}
    Capture Page Screenshot 
    Click Button                    ${SACOLA}
    Capture Page Screenshot 
    Wait Until Element Is Visible   ${CONTAIN}
    Capture Page Screenshot 

Validar Nome, Valor e Quantidade dos produtos adicionados.
    Capture Page Screenshot 
    ${TITULOVENT}    Get Title
    Capture Page Screenshot     
    Wait Until Element Contains  ${QNTCAMPO}     1 item
    Capture Page Screenshot 
    Wait Until Element Contains  ${VALORCAM}     R$ 95,00

    

    
 

