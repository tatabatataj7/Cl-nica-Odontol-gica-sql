USE clinica_odontologica;

-- Inserindo pacientes
INSERT INTO pacientes (nome_completo, cpf, data_nascimento, telefone, email, endereco) VALUES
('Maria da Silva', '123.456.789-00', '1995-08-12', '(86) 99999-1111', 'maria@email.com', 'Rua das Flores, 120'),
('João Pereira', '987.654.321-00', '1988-03-25', '(86) 98888-2222', 'joao@email.com', 'Av. Central, 450'),
('Ana Costa', '456.789.123-00', '2000-11-10', '(86) 97777-3333', 'ana@email.com', 'Rua São José, 78');

-- Inserindo dentistas
INSERT INTO dentistas (nome_completo, cro, especialidade, telefone, email) VALUES
('Dr. Carlos Mendes', 'CRO-PI 1234', 'Ortodontia', '(86) 99900-1000', 'carlos@clinica.com'),
('Dra. Fernanda Lima', 'CRO-PI 5678', 'Endodontia', '(86) 99900-2000', 'fernanda@clinica.com');

-- Inserindo procedimentos
INSERT INTO procedimentos (nome_procedimento, descricao, valor) VALUES
('Limpeza', 'Procedimento de profilaxia dental', 150.00),
('Restauração', 'Recuperação de dente com resina', 250.00),
('Canal', 'Tratamento endodôntico', 800.00),
('Extração', 'Remoção de dente', 300.00);

-- Inserindo consultas
INSERT INTO consultas (id_paciente, id_dentista, data_consulta, horario, status_consulta, observacoes) VALUES
(1, 1, '2026-04-10', '09:00:00', 'Realizada', 'Paciente compareceu normalmente'),
(2, 2, '2026-04-12', '14:30:00', 'Agendada', 'Primeira avaliação'),
(3, 1, '2026-04-15', '10:15:00', 'Realizada', 'Necessita retorno em 30 dias');

-- Relacionando consultas e procedimentos
INSERT INTO consulta_procedimentos (id_consulta, id_procedimento, quantidade, valor_aplicado) VALUES
(1, 1, 1, 150.00),
(1, 2, 1, 250.00),
(3, 4, 1, 300.00);

-- Inserindo pagamentos
INSERT INTO pagamentos (id_consulta, data_pagamento, valor_pago, forma_pagamento, status_pagamento) VALUES
(1, '2026-04-10', 400.00, 'Pix', 'Pago'),
(3, '2026-04-15', 300.00, 'Cartão de Débito', 'Pago'),
(2, '2026-04-12', 0.00, 'Aguardando', 'Pendente');