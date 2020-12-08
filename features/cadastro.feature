#language: pt

Funcionalidade: Cadastro de Usuários
    Sendo um visitante do site Parodify
    Quero fazer o meu cadastro
    Para que eu possa ouvir minhas músicas favoritas


    Esquema do Cenário: Tentativa de Cadastro
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email          | <email>          |
            | senha          | <senha>          |
            | senha_confirma | <senha_confirma> |
        Então devo ver a mensagem: "<mensagem_saida>"

        Exemplos:
            | email               | senha     | senha_confirma | mensagem_saida                       |
            |                     | Matheus97 | Matheus97      | Oops! Informe seu email.             |
            | matheus97@gmail.com |           |                | Oops! Informe sua senha.             |
            | matheus97@gmail.com | Matheus97 | abc123         | Oops! Senhas não são iguais.         |
            |                     |           |                | Oops! Informe seu email e sua senha. |
            
    @happy
    Cenario: Cadastro
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email          | matheus97@gmail.com |
            | senha          | Matheus97           |
            | senha_confirma | Matheus97           |
        Então devo ser redirecionado para a área logada

    Cenario: Validacao do campo email
    Quando acesso a página de cadastro
    Então deve ser exibido o seguinte css: "input[type=email]"
