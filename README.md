# 📦 Projeto SQL - Treinamento de Banco de Dados

Este projeto foi desenvolvido com o objetivo de aperfeiçoar conhecimentos em SQL Server, focando em modelagem de dados, criação de tabelas e consultas relacionais.

---

## 🎯 Objetivo

Praticar conceitos fundamentais e intermediários de banco de dados, como:

- Criação de tabelas
- Relacionamentos entre entidades
- Manipulação de dados (INSERT, UPDATE, DELETE)
- Uso de JOINs
- Subqueries
- Tratamento de valores nulos com CASE

---

## 🗄️ Estrutura do Banco

### 📌 Produto
Armazena os produtos cadastrados.

### 📌 ProdutoCategoria
Relaciona produtos com suas categorias.

### 📌 ProdutoEstoque
Controla a quantidade de produtos em estoque.

### 📌 Cliente
Armazena dados de clientes e permite montagem de nome completo.

---

## 🔗 Relacionamentos

- Produto → ProdutoCategoria (ID_Produto)
- Produto → ProdutoEstoque (ID_Produto)

---

## ⚙️ Principais consultas praticadas

- Listagem de produtos com JOIN entre tabelas
- Filtro e remoção por categoria usando subquery
- Atualização de registros
- Ordenação de dados
- Geração de nome completo com CASE e tratamento de NULL

---

## 🧠 Aprendizados

- Estruturação de banco relacional
- Organização de dados em tabelas separadas
- Consulta com múltiplas tabelas (JOIN)
- Lógica de exclusão com subquery
- Tratamento de dados inconsistentes

---

## 🚀 Finalidade

Projeto criado exclusivamente para prática e evolução em SQL Server, simulando cenários comuns de um sistema de loja.

---

## 👨‍💻 Autor
Gabriel Costa Domiciano
