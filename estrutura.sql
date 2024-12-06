-- Tabela cliente
CREATE TABLE cliente (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) UNIQUE NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    user_name VARCHAR(255) NOT NULL
);

-- Tabela prato
CREATE TABLE prato (
    prato_id INT AUTO_INCREMENT PRIMARY KEY,
    url VARCHAR(255),
    description TEXT,
    name VARCHAR(255) NOT NULL,
    price DECIMAL(10,2) NOT NULL
);

-- Tabela carrinho
CREATE TABLE carrinho (
    id_item INT AUTO_INCREMENT PRIMARY KEY,
    id_prato INT NOT NULL,
    user_id INT NOT NULL,
    quantidade INT NOT NULL,
    FOREIGN KEY (id_prato) REFERENCES prato(prato_id),
    FOREIGN KEY (user_id) REFERENCES cliente(user_id)
);

-- Tabela pedido
CREATE TABLE pedido (
    pedido_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    status ENUM('PENDING', 'PAID', 'CANCELLED') DEFAULT 'PENDING',
    valor_total DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES cliente(user_id)
);
