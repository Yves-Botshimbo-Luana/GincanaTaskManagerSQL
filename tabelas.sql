-- Tabela de Usuários
CREATE TABLE Usuarios (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE
);

-- Tabela de Categorias
CREATE TABLE Categorias (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL
);

-- Tabela de Status das Tarefas
CREATE TABLE Status (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    descricao TEXT NOT NULL
);

-- Tabela de Tarefas
CREATE TABLE Tarefas (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    titulo TEXT NOT NULL,
    descricao TEXT,
    data_criacao DATE NOT NULL,
    data_limite DATE,
    id_usuario INTEGER,
    id_categoria INTEGER,
    id_status INTEGER,
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id),
    FOREIGN KEY (id_categoria) REFERENCES Categorias(id),
    FOREIGN KEY (id_status) REFERENCES Status(id)
);
