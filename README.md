# Sistema de Banco de Dados - Clínica Odontológica

Este projeto apresenta a estrutura de um banco de dados relacional para gerenciamento de uma clínica odontológica.

O objetivo do sistema é armazenar e organizar informações sobre:

- pacientes
- dentistas
- consultas
- procedimentos realizados
- pagamentos

## Estrutura do projeto

O projeto está dividido nos seguintes arquivos:

- `schema.sql` → responsável pela criação do banco de dados e das tabelas
- `seed.sql` → responsável pela inserção de dados de exemplo no banco

## Tabelas do banco

### pacientes
Armazena os dados cadastrais dos pacientes da clínica.

### dentistas
Armazena os dados dos profissionais responsáveis pelos atendimentos.

### consultas
Registra as consultas agendadas e realizadas, ligando pacientes e dentistas.

### procedimentos
Contém os procedimentos odontológicos disponíveis e seus valores.

### consulta_procedimentos
Tabela intermediária que relaciona as consultas aos procedimentos executados.

### pagamentos
Registra os pagamentos feitos pelos pacientes referentes às consultas.

## Como importar o banco de dados

### 1. Criar o banco e as tabelas
Execute primeiro o arquivo `schema.sql` no seu gerenciador MySQL.

### 2. Inserir os dados de exemplo
Após a criação do banco, execute o arquivo `seed.sql`.

## Exemplo de uso no MySQL

```sql
SOURCE schema.sql;
SOURCE seed.sql;