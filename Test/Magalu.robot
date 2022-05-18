*** Settings ***
Documentation    Essa suite testa o site da https://www.magazineluiza.com.br/
Resource    ../Resources.robot
Test Setup       Abrir o Navegador
Test Teardown    Fechar o Navegador
Library          SeleniumLibrary



*** Test Cases ***

Caso de teste 01 - Fluxo de pedido site Magalu
    [Documentation]    Esse teste realiza a validação do fluxo de pedido 
    ...                No site da magalu
    [Tags]             Pedidos

    Abrir o site da Magazine luiza
    Acessar o segundo departamento
    Acessar a página do terceiro produto
    Adicionar o produto a sacola (Carrinho)
    Validar Nome, Valor e Quantidade dos produtos adicionados.
