# 🏫 Escola - Sistema de Gestão Acadêmica
🚀 Projeto baseado em Docker + PostgreSQL + Python para gerenciamento de professores, matérias e horários.

## 📌 Visão Geral
O objetivo deste sistema é fornecer ao professor Girafales, novo diretor da escola do Chavito, uma forma eficiente de acessar dados sobre:
- A quantidade de horas que cada professor tem comprometida em aulas.
- A lista de salas com horários livres e ocupados.

## 🛠 Tecnologias Utilizadas
- **Docker** → Para gerenciar os containers da aplicação.
- **PostgreSQL** → Banco de dados relacional utilizado para armazenar informações acadêmicas.
- **Python** → Para execução das consultas e integração com o banco de dados.
- **SQL** → Utilizado para estruturar e manipular os dados.
- **Pandas** → Biblioteca para processamento e análise dos dados retornados pelo banco.
- **SQLAlchemy** → Recomendado para conectar ao banco de dados de forma mais eficiente.

## ⚙️ Como Configurar o Projeto

## 1️⃣ Clonar o Repositório

```sh
git clone https://github.com/seu-usuario/escola.git
cd escola
```

## 2️⃣ Criar os containers com Docker

```sh
sh
docker-compose up -d --build
```

## 3️⃣ Acessar o banco via terminal

```sh
docker exec -it escola-db psql -U admin -d escola
```

## 4️⃣ Testar consultas

```sh
docker run --rm --network=escola_escola-net escola-app python consulta.py
```

## Dentro do PostgreSQL:

## 📊 Consultas Importantes

# ✅ Consulta a lista de professores
```sql
SELECT * FROM PROFESSOR;
```

# ✅ Carga horária dos professores

```sql
SELECT p.name, SUM(EXTRACT(EPOCH FROM (cs.end_time - cs.start_time)) / 3600) AS total_hours
FROM PROFESSOR p
JOIN SUBJECT s ON p.id = s.taught_by
JOIN CLASS c ON s.id = c.subject_id
JOIN CLASS_SCHEDULE cs ON c.id = cs.class_id
GROUP BY p.id, p.name;
```
# ✅ Carga horária por matéria

```sql
SELECT s.name, SUM(EXTRACT(EPOCH FROM (cs.end_time - cs.start_time)) / 3600) AS total_hours
FROM SUBJECT s
JOIN CLASS c ON s.id = c.subject_id
JOIN CLASS_SCHEDULE cs ON c.id = cs.class_id
GROUP BY s.id, s.name;
```

## 📝 Futuras Melhorias

🔹 Criar uma API REST para permitir consultas dinâmicas  
🔹 Desenvolver uma interface web para visualização dos horários disponíveis  
🔹 Criar um dashboard com estatísticas acadêmica  