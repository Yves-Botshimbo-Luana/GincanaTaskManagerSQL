-- Consulta para exibir as tarefas do usuário com id 1 (Maria Silva)
SELECT Tarefas.titulo, Tarefas.descricao, Tarefas.data_criacao, Tarefas.data_limite, Categorias.nome AS categoria, Status.descricao AS status
FROM Tarefas
JOIN Categorias ON Tarefas.id_categoria = Categorias.id
JOIN Status ON Tarefas.id_status = Status.id
WHERE Tarefas.id_usuario = 1;

-- Consulta para exibir as tarefas da categoria 'Trabalho'
SELECT Tarefas.titulo, Tarefas.descricao, Usuarios.nome AS usuario, Status.descricao AS status
FROM Tarefas
JOIN Usuarios ON Tarefas.id_usuario = Usuarios.id
JOIN Status ON Tarefas.id_status = Status.id
WHERE Tarefas.id_categoria = (SELECT id FROM Categorias WHERE nome = 'Trabalho');
