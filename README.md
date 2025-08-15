# 🎬 Cinebox App

Aplicativo Flutter desenvolvido durante uma imersão da **Academia do Flutter** com o objetivo de praticar conceitos essenciais de desenvolvimento mobile moderno, incluindo gerenciamento de estado com Riverpod, consumo de APIs e organização de projeto.

## 📚 Sobre o projeto

O **Cinebox** é um catálogo de filmes e séries, onde o usuário pode:

- Pesquisar títulos
- Visualizar detalhes de filmes e séries
- Favoritar conteúdos para assistir mais tarde

> Este projeto é **didático** e serve como base para estudos, podendo ser expandido para outros casos de uso.

---

## 🛠 Tecnologias utilizadas

- **[Flutter](https://flutter.dev/)** (SDK 3.8.1)
- **[Riverpod](https://riverpod.dev/)** para gerenciamento de estado
- **[GoRouter](https://pub.dev/packages/go_router)** para navegação declarativa
- **[Dio](https://pub.dev/packages/dio)** para requisições HTTP
- **[Intl](https://pub.dev/packages/intl)** para formatação de datas e números
- **[Cached Network Image](https://pub.dev/packages/cached_network_image)** para otimização de imagens
- **[Json Serializable](https://pub.dev/packages/json_serializable)** para geração automática de modelos

---

## 🚀 Como executar o projeto

### 1️⃣ Pré-requisitos

- [Flutter SDK](https://flutter.dev/docs/get-started/install) (>=3.8.1)
- Dart >= 3.8.1
- Dispositivo ou emulador Android/iOS configurado

### 2️⃣ Clonar o repositório

```bash
git clone https://github.com/seu-usuario/cinebox_app.git
cd cinebox_app
```

### 3️⃣ Instalar dependências

```bash
flutter pub get
```

### 4️⃣ Rodar o projeto

```bash
flutter run
```

### 📂 Estrutura do projeto

```bash
lib/
├── core/                # Utilidades, temas e helpers
├── features/
│   └── movies/          # Módulo de filmes (camadas domain/data/presentation)
├── router/              # Configuração de rotas (GoRouter)
├── main.dart            # Ponto de entrada do app
```

### 🧠 Conceitos praticados

- Estruturação modular de projeto
- Clean Code aplicado a Flutter
- Gerenciamento de estado com Riverpod
- Navegação com GoRouter
- Consumo e tratamento de APIs REST
- Boas práticas de UI com Material Design

### 📌 Observações

Este projeto não é destinado a publicação na Play Store ou App Store, mas pode servir como ponto de partida para projetos reais.

Feito com 💙 durante a Imersão da Academia do Flutter
