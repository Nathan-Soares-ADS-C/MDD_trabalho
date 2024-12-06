Modelo Físico de Dados e Banco de Dados MySQL

Este projeto implementa o banco de dados para um sistema de gerenciamento de carrinhos, pedidos e clientes em um restaurante. O banco de dados foi projetado com base em um Modelo Físico de Dados (MFD) e implementado no MySQL utilizando comandos DDL (Data Definition Language).

🎨 Modelo Físico de Dados
	O banco de dados foi modelado considerando os seguintes relacionamentos:

	Cliente e Pedido: Um cliente pode fazer vários pedidos, mas um pedido pertence a um único cliente.
	Prato e Carrinho: Um prato pode aparecer em vários carrinhos, e um item no carrinho está relacionado a um único prato.
	Cliente e Carrinho: Um cliente pode ter vários carrinhos, e um carrinho pertence a um único cliente.
	Carrinho e Pedido: Um pedido pode conter vários itens de um carrinho, e cada item no carrinho pertence a um único pedido.
	O diagrama do Modelo Físico de Dados pode ser encontrado na pasta MFD/ do repositório.

📜 Scripts DDL
	O arquivo estrutura.sql contém os seguintes comandos DDL:

	Criação das tabelas:

	cliente: Armazena informações dos clientes.
	prato: Armazena informações dos pratos disponíveis.
	carrinho: Representa os itens adicionados ao carrinho.
	pedidos: Registra os pedidos realizados pelos clientes.
	Definição de chaves primárias e estrangeiras:

	Chaves primárias: user_id, prato_id, id_item, pedido_id.
	Chaves estrangeiras: Associando as tabelas com base nos relacionamentos.

	Restrições:
	NOT NULL: Garantindo que certos campos sejam obrigatórios.
	UNIQUE: Evitando duplicidade, quando necessário.
