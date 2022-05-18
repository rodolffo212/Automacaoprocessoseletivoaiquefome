# Automacaoprocessoseletivoaiquefome

fazer a instalação do Python 
Após finalizada a instalação, vamos verificar se o Python e seu Gerenciador de pacotes foram instalados com sucesso!

python --version
pip --version
Vamos agora baixar o driver do chromedriver ou GeckoDriver, pois iremos usar o navegador Firefox

Coloque o driver do GeckoDriver dentro de um diretório, verifique se esse diretório escolhido está realmente no path do Windows, se você marcou na instalação não precisa, mas conferir nunca é demais.
Variáveis de Ambiente >> Path >> Editar >> Novo >> Adicionar o caminho >> Dar um clique em OK.

Para o editor do código estou usando o Visual Studio Code

Vamos agora instalar a extensão do Python:
1- Clique em Extensions;
2- Digite python;
3- Clique em Install.

Agora vamos instalar a extensão Robot Framework intellisense:
1- Digite robot framework;
2- Clique em Install.

Precisamos também instalar o Robot dentro do sistema
pip install robotframework

Vamos também instalar a biblioteca do Selenium para o Robot Framework,
pip install robotframework-seleniumlibrary


Após o ambiente todo configurado 
Iremos baixar o projeto do git pelo comando  Git clone https://github.com/rodolffo212/Automacaoprocessoseletivoaiquefome.git

Apos o projeto baixado
iremos acessar a pasta Test pelo terminal.
Usando o comando cd Test

Ao acessar a pasta, iremos digitar o comando 
Robot Magalu.robot
E dar enter
A execução será inciada com sucesso.

Os prints e logs estaram disponiveis, lembrando que no git temos uma execuçao anterior evidenciada.