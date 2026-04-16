CREATE DATABASE clinica_odontologica;
USE clinica_odontologica;

-- Tabela de clientes/pacientes
CREATE TABLE pacientes (
    id_paciente INT AUTO_INCREMENT PRIMARY KEY,
    nome_completo VARCHAR(150) NOT NULL,
    cpf VARCHAR(14) NOT NULL UNIQUE,
    data_nascimento DATE NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    email VARCHAR(100),
    endereco VARCHAR(200),
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabela de dentistas
CREATE TABLE dentistas (
    id_dentista INT AUTO_INCREMENT PRIMARY KEY,
    nome_completo VARCHAR(150) NOT NULL,
    cro VARCHAR(20) NOT NULL UNIQUE,
    especialidade VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100)
);

-- Tabela de consultas
CREATE TABLE consultas (
    id_consulta INT AUTO_INCREMENT PRIMARY KEY,
    id_paciente INT NOT NULL,
    id_dentista INT NOT NULL,
    data_consulta DATE NOT NULL,
    horario TIME NOT NULL,
    status_consulta VARCHAR(30) NOT NULL,
    observacoes TEXT,
    FOREIGN KEY (id_paciente) REFERENCES pacientes(id_paciente),
    FOREIGN KEY (id_dentista) REFERENCES dentistas(id_dentista)
);

-- Tabela de procedimentos
CREATE TABLE procedimentos (
    id_procedimento INT AUTO_INCREMENT PRIMARY KEY,
    nome_procedimento VARCHAR(100) NOT NULL,
    descricao TEXT,
    valor DECIMAL(10,2) NOT NULL
);

-- Tabela que relaciona consultas e procedimentos
CREATE TABLE consulta_procedimentos (
    id_consulta_procedimento INT AUTO_INCREMENT PRIMARY KEY,
    id_consulta INT NOT NULL,
    id_procedimento INT NOT NULL,
    quantidade INT DEFAULT 1,
    valor_aplicado DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_consulta) REFERENCES consultas(id_consulta),
    FOREIGN KEY (id_procedimento) REFERENCES procedimentos(id_procedimento)
);

-- Tabela de pagamentos
CREATE TABLE pagamentos (
    id_pagamento INT AUTO_INCREMENT PRIMARY KEY,
    id_consulta INT NOT NULL,
    data_pagamento DATE NOT NULL,
    valor_pago DECIMAL(10,2) NOT NULL,
    forma_pagamento VARCHAR(50) NOT NULL,
    status_pagamento VARCHAR(30) NOT NULL,
    FOREIGN KEY (id_consulta) REFERENCES consultas(id_consulta)
);