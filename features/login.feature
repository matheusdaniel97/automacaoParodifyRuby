#language: pt

Funcionalidade: Login
    Sendo um usuário previamente cadastrado
    Quero acessar o sistema com meu email e senha
    Para que eu possa ter acesso as playslists do Parodify

    @smoke
    Cenario: Login do usuário
    
        Dado que acesso a página de login
        Quando submeto minhas credenciais com: "matheus97@gmail.com" e "Matheus97"
        Então devo ser redirecionado para a área logada

    Esquema do Cenário: Tentativa de login
        Dado que acesso a página de login
        Quando submeto minhas credenciais com: "<email>" e "<senha>"
        Então devo ver a mensagem de erro: "Opps! Dados de acesso incorretos!"

        Exemplos:
            | email                 | senha  |
            | matheus97@gmail.com   | abc123 |
            |                       |        |
            | matheus97@gmail.com   |        |
            | matheus97@hotmail.com |        |
