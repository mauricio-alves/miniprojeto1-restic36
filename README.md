# Mini Projeto 1 - Trilha Desenvolvimento FullStack ResTIC36

## Objetivo

Desenvolver um modelo de dados que atenda a um problema específico e, em seguida, criar uma estrutura para uma API RESTful para manipular esses dados.

## Descrição do Problema

João precisa de um sistema para gerenciar os pedidos feitos por seus clientes. Ele quer uma solução que permita o cadastro de clientes e o registro dos pedidos realizados, com detalhes sobre os produtos escolhidos.

## Detalhes do Sistema:

### 1. Cliente:

- Nome

- E-mail

- Número de contato

- Data de nascimento

- João quer registrar os seguintes dados de seus clientes:

### 2. Pedido:

- Cada cliente pode fazer um ou mais pedidos.

- Um pedido pode conter um ou mais produtos.

- Para cada pedido, é necessário armazenar a quantidade de produtos comprados e seu status (Concluído, Em Andamento ou Cancelado).

### 3. Produto:

- Os produtos precisam ter as seguintes informações:

- Nome

- Tipo (exemplo: eletrônico, vestuário, alimentos, etc.)

- Valor (preço unitário)

## Tarefas:
### 1. Modelagem Lógica (Diagrama ER):

Identifique as entidades e os relacionamentos necessários para resolver o problema. Crie um diagrama entidade-relacionamento (ER) que descreva a relação entre clientes, pedidos e produtos.

- Um cliente pode fazer vários pedidos.

- Um pedido pode conter vários produtos.

- Um produto pode estar em vários pedidos.

Use as entidades e atributos descritos acima para modelar seu diagrama.

### 2. Implementação Física (Criação de Tabelas):

Usando seu diagrama ER, crie as tabelas correspondentes no banco de dados, garantindo que os relacionamentos entre as entidades sejam mantidos.

Estruture as tabelas da seguinte forma:

- Cliente:

- id (PK)

- nome

- email

- numero_contato

- data_nascimento

### 3. Inserção de Dados:

Insira alguns dados fictícios no banco de dados para testar a estrutura.

- Registre pelo menos 3 clientes, 5 produtos e 3 pedidos.

- Preencha também a tabela intermediária com as informações de quais produtos foram pedidos e em que quantidade.

### 4. Geração de Imagem:

Após inserir os dados no banco de dados, tire prints de todas as tabelas preenchidas. Em seguida, utilize o Photoshop ou o editor de imagens de sua preferência para criar uma única imagem contendo todos os prints das tabelas com os dados inseridos. Essa imagem deve ser anexada à sua solução para ilustrar o resultado final do banco de dados.

### 5. Definição de Endpoints da API RESTful:
Agora que o banco de dados foi modelado e preenchido, defina a API que será responsável por realizar as operações de CRUD (Criar, Ler, Atualizar, Excluir) para cada entidade do sistema. Para cada endpoint, especifique o verbo HTTP que será utilizado (GET, POST, PUT, DELETE).

Endpoints exemplo:

- Cliente:

- GET /v1/clientes: Retorna todos os clientes.

- GET /v1/clientes/{id}: Retorna um cliente específico.

- POST /v1/clientes: Cria um novo cliente.

- PUT /v1/clientes/{id}: Atualiza um cliente existente.

- DELETE /v1/clientes/{id}: Exclui um cliente.

## Envio Final:

Ao concluir esta atividade, você deve enviar os seguintes itens:

### 1. Modelo Lógico (Diagrama ER):

Envie a imagem do diagrama entidade-relacionamento (ER) que você criou para modelar o sistema. Certifique-se de que a imagem esteja clara e bem organizada, representando corretamente as entidades e seus relacionamentos.

### 2. Implementação Física (Script de Criação de Tabelas):

Envie o script SQL que você usou para criar as tabelas no banco de dados. O script deve incluir todas as tabelas criadas com suas respectivas chaves primárias e estrangeiras.

### 3. Dados Inseridos no Banco:

Envie o script SQL ou um arquivo de exportação contendo os dados fictícios inseridos nas tabelas.

### 4. Imagem das Tabelas Preenchidas:

Envie a imagem gerada a partir dos prints das tabelas preenchidas, conforme descrito na atividade. Organize os prints em uma única imagem, mostrando os dados preenchidos no banco de dados.

### 5. Definição dos Endpoints da API:
Insira os endpoints da API RESTful, incluindo a operação realizada por cada um (GET , POST , PUT , DELETE) e a rota correspondente. Explique brevemente o que cada endpoint faz.