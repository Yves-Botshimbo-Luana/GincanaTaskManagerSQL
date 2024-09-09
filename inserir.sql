-- Inserindo usuários
INSERT INTO Usuarios (nome, email) VALUES ('yves botshimbo', 'ybingos@yahoo.fr');
INSERT INTO Usuarios (nome, email) VALUES ('yves luana', 'ybidotsh@gmail.com');

-- Inserindo categorias
INSERT INTO Categorias (nome) VALUES ('Trabalho');
INSERT INTO Categorias (nome) VALUES ('Pessoal');
INSERT INTO Categorias (nome) VALUES ('Estudo');

-- Inserindo status
INSERT INTO Status (descricao) VALUES ('Pendente');
INSERT INTO Status (descricao) VALUES ('Em Progresso');
INSERT INTO Status (descricao) VALUES ('Concluída');

-- Inserindo tarefas
INSERT INTO Tarefas (titulo, descricao, data_criacao, data_limite, id_usuario, id_categoria, id_status) 
VALUES ('Estudar SQL', 'Completar exercícios de SQL', '2024-08-28', '2024-09-05', 1, 3, 1);
INSERT INTO Tarefas (titulo, descricao, data_criacao, data_limite, id_usuario, id_categoria, id_status) 
VALUES ('Organizar documentos', 'Arrumar pastas do trabalho', '2024-08-20', '2024-08-29', 2, 1, 2);
