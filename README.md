# Spring AI RAG Demo

A simple console-based RAG (Retrieval Augmented Generation) implementation using Spring AI and PostgreSQL vector search. This demo is designed for educational purposes to teach RAG concepts through hands-on examples.

## Features

- Console interface using Spring Shell for interactive learning
- Vector similarity search using PostgreSQL pgvector extension
- Integration with Azure OpenAI for embeddings and chat completion
- Educational comments explaining RAG concepts
- Sample data for demonstration

## Prerequisites

- Java 17 or later
- Maven
- PostgreSQL with pgvector extension
- Azure OpenAI service access

## Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/thegovind/spring-ai-rag.git
   cd spring-ai-rag
   ```

2. Copy `.env.example` to `.env` and configure:
   ```bash
   cp .env.example .env
   # Edit .env with your Azure OpenAI and PostgreSQL credentials
   ```

3. Build the application:
   ```bash
   mvn clean install
   ```

4. Run the application:
   ```bash
   mvn spring-boot:run
   ```

## Usage

The application provides a shell interface with the following commands:

- `help` - Show available commands and usage information
- `ask "Your question"` - Ask questions using RAG
- `exit` - Exit the application

Example:
```bash
ask "What is Spring AI?"
```

## How It Works

1. **Vector Embedding**: User questions are converted to vector embeddings using Azure OpenAI.
2. **Similarity Search**: The system finds similar previous Q&As using PostgreSQL vector similarity.
3. **Context Enhancement**: Found Q&As provide context for generating new answers.
4. **Response Generation**: Azure OpenAI generates responses using the enhanced context.

## Educational Resources

- [Spring AI Documentation](https://docs.spring.io/spring-ai/reference/)
- [Azure OpenAI Service](https://learn.microsoft.com/azure/cognitive-services/openai/)
- [PostgreSQL pgvector](https://github.com/pgvector/pgvector)

## Contributing

Pull requests are welcome! Please read our contributing guidelines first.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
