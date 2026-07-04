# E-commerce API

> API REST para gestão de clientes, produtos e pedidos, construída com Spring Boot e MySQL, seguindo boas práticas de arquitetura em camadas, versionamento de banco de dados, segurança e testes automatizados.

**Status:** 🚧 Em desenvolvimento — projeto construído em etapas diárias e documentado publicamente. Veja o progresso detalhado, decisões técnicas e troubleshooting em:

### ▶️ [`docs/project_log.md`](./docs/project_log.md).

---

## Sobre o projeto

Este repositório é um projeto de portfólio construído do zero, simulando a entrega de um serviço freelancer típico (ex.: Workana): uma API REST para e-commerce com CRUD de clientes, catálogo de produtos, pedidos com controle de estoque, autenticação via JWT e documentação Swagger.

O desenvolvimento é feito e documentado dia a dia — cada etapa (infraestrutura, camada web, segurança, regras de negócio, testes, documentação) é registrada em detalhe no [log de execução](./docs/project_log.md), incluindo comandos exatos, erros encontrados e suas soluções. A ideia é que o histórico de construção seja tão parte do portfólio quanto o código final.

## Stack Tecnológica

| Categoria | Tecnologia |
|---|---|
| Linguagem | Java 21 |
| Framework | Spring Boot 4.1.x |
| Persistência | Spring Data JPA + Hibernate |
| Banco de Dados | MySQL 8.0 (via Docker) |
| Migrations | Flyway |
| Boilerplate | Lombok |
| Validação | Jakarta Bean Validation |
| Segurança | Spring Security + JWT *(planejado)* |
| Documentação da API | SpringDoc OpenAPI / Swagger *(planejado)* |
| Testes | JUnit 5 + Mockito *(planejado)* |
| Build | Maven |
| Infra local | Docker / Docker Compose |

## Progresso atual

| Etapa | Status |
|---|---|
| Infraestrutura (Docker + MySQL) | ✅ Concluído |
| Versionamento de banco (Flyway) | ✅ Concluído |
| Entidade `Cliente` + `ClienteRepository` | ✅ Concluído |
| Camada Web (`ClienteController`, DTOs, validação) | ⏳ Em andamento |
| Segurança (Spring Security + JWT) | 🔜 Planejado |
| Entidades `Produto` / `Pedido` + controle de estoque | 🔜 Planejado |
| Testes unitários e de integração | 🔜 Planejado |
| Documentação Swagger + Actuator | 🔜 Planejado |

> Roteiro completo, dia a dia, com todos os detalhes técnicos: [`docs/project_log.md`](./docs/project_log.md).

## Estrutura do projeto

```
ecommerce-api/
├── docker-compose.yml
├── pom.xml
├── docs/
│   └── project_log.md          # Log de execução detalhado, dia a dia
├── src/
│   └── main/
│       ├── java/com/arthur/ecommerce_api/
│       │   ├── EcommerceApiApplication.java
│       │   ├── model/
│       │   │   └── Cliente.java
│       │   └── repository/
│       │       └── ClienteRepository.java
│       └── resources/
│           ├── application.properties
│           └── db/migration/
│               └── V1__criar_tabela_cliente.sql
```

## Pré-requisitos

- [Docker](https://docs.docker.com/get-docker/) e Docker Compose
- Java 21 (JDK)
- Maven (ou use o wrapper `./mvnw` incluso no projeto)

## Como rodar o projeto

1. Clone o repositório:
   ```bash
   git clone https://github.com/<seu-usuario>/ecommerce-api.git
   cd ecommerce-api
   ```

2. Suba o banco de dados MySQL via Docker:
   ```bash
   docker compose up -d
   ```

3. Rode a aplicação:
   ```bash
   ./mvnw spring-boot:run
   ```
   Ou execute a classe `EcommerceApiApplication` diretamente pela sua IDE.

4. A aplicação sobe em `http://localhost:8080`. O Flyway aplica as migrações automaticamente na inicialização.

## Roadmap

O roadmap completo, com o detalhamento técnico de cada dia de desenvolvimento (o que foi feito, comandos utilizados, erros e soluções), está em [`docs/project_log.md`](./docs/project_log.md). Resumo:

1. **Infraestrutura e Base** — Docker, MySQL, Flyway, entidade `Cliente`. ✅
2. **Camada Web e Validação** — DTOs, `ClienteController`, Bean Validation, tratamento global de exceções.
3. **Segurança** — Spring Security, autenticação JWT.
4. **Regras de Negócio e Transações** — entidades `Produto`/`Pedido`, controle de estoque com `@Transactional`.
5. **Qualidade de Software** — testes unitários (JUnit 5 + Mockito) e de integração.
6. **Documentação e Observabilidade** — Swagger (SpringDoc OpenAPI) e Spring Boot Actuator.

## Licença

Este projeto está disponibilizado sob a licença [`MIT LICENSE`](./LICENSE).

## Autor

**Arthur Haerdy Jr** 
<br>LinkedIn: [arthur-haerdy-jr](https://www.linkedin.com/in/arthur-haerdy-jr/)