# EveryWhereSystems_API
Desenvolvido por: Dayon Victor Czykailo e Gabriel Marusak Curso: CST em Análise e Desenvolvimento de Sistemas Período : 4 Turma: ANADES 4 2022/2
## Sobre o Projeto
Ele foi desenvolvido em Java para funcionar dentro de um Container Docker, porém pode ser executado apenas o .jar em qualquer maquina que possua Java instalado e possua o MSSQL instalado com o devido usuário. As funcionalidades ligadas ao Docker não irão estar operantes caso executado sem ele instalado e inicializado.
## Arquivos e IDE
Pasta: EveryWhereSystems_API Pasta onde foi desenvolvido o projeto e que pode ser acessado por uma IDE.
Arquivo: everywheresystems-0.0.1-SNAPSHOT.jar Projeto compilado, ele que vai ser executado para a demonstração do sistema.
Arquivo: Dockerfile Arquivo para criar uma “aplicação” do Projeto Integrador em Docker.
Arquivo: Compose.yml Arquivo para inicializar ou finalizar o Projeto Integrador aplicação Docker.
Arquivo: Amostra de dados.sql Arquivo para inserção de amostras no banco para um cliente.
Arquivo: Cria banco.sql Arquivo para criação do banco de dados.
IDE: Visual Studio Code Extensões usadas: Bootstrap 5 Quick Snippets, Extension Pack for Java, Java Debug, Spring Boot Extension Pack, Spring Initializr Java Support
# Instruções de Inicialização
## Pré-requisitos
Ter o MSSQL instalado, acessível pela porta padrão (1433) e com um usuário sa e senhas sa.
Executar o comando de criação do banco de dados no arquivo Cria banco.sql
## Inicialização Recomendada
Instalar o Java, instalar o Docker, inicializar o Docker Desktop e Inicializar o projeto compilado apenas dando duplo clique no arquivo (everywheresystems-0.0.1-SNAPSHOT.jar).
Com os passos anteriores seguidos basta acessar http://127.0.0.1:8080/ . Caso a porta 8080 esteja sendo utilizada por outra aplicação deve-se fechar essa aplicação antes de executar o projeto integrador.
## Inicialização Pensada em Docker
Instalar o Docker e inicializar o Docker Desktop. Criar a patas ProjetoIntegrador no disco C: de maneira que fique C:\ProjetoIntegrador\ , colocar os arquivos Dockerfile, Compose.yml e everywheresystems-0.0.1-SNAPSHOT.jar nessa pasta. No CMD executar os seguintes comandos: cd c:\ProjetoIntegrador docker build -t pispring . docker compose up
Com os passos anteriores seguidos basta acessar http://127.0.0.1:8080/ . Caso a porta 8080 esteja sendo utilizada por outra aplicação deve-se fechar essa aplicação antes de executar o projeto integrador.
Obs: Se executado por esse procedimento utilizar o docker compose down após os teste para evitar que a aplicação fique inicializando com o Windows.
## Instruções de Usabilidade/Testes
O usuário e senha pré instalado são: Usuário: adm@email.com Senha: senha
Os dashboard são vinculados aos clientes e tem que ter seus dados preenchido executando o comando do arquivo Amostra de dados.sql na IDE de banco de dados (Azure Data Studio ou Management Studio). Para determinar qual cliente deve ter seus dados preenchido deve abrir o arquivo na IDE e na primeira linha procurar like '%<nome_da_empresa>%’ e preencher corretamente como foi cadastrado o nome fantasia do cliente.

