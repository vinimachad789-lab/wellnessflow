#  WellnessFlow — SUB FIAP (Sociedade 5.0 e o Trabalho)

**Aluno:** Vinícius Machado  
**RM:** 98130  

O **WellnessFlow** é um protótipo mobile desenvolvido em **Flutter**, focado em bem-estar emocional no ambiente de trabalho digital. O objetivo é demonstrar como tecnologias acessíveis podem apoiar saúde mental, produtividade e qualidade de vida — pilares essenciais da **Sociedade 5.0**.

---

# 📱 Funcionalidades Implementadas

### ✔ 1. Registro de Humor  
O usuário pode registrar um estado emocional usando texto.  
O sistema faz uma **análise simulada** (mock de IA).

### ✔ 2. Análise Emocional Simulada  
Um algoritmo simples identifica palavras-chave como “triste” ou “feliz”.

### ✔ 3. Recomendações de Bem-Estar  
Com base no humor detectado, o app exibe uma resposta amigável.

### ✔ 4. Histórico de Emoções  
Lista simples com registros mockados.

---

# 🧱 Tecnologias Utilizadas

- **Flutter / Dart**
- **Widgets nativos Material**
- **Armazenamento local mockado**
- **Simulação de IA embarcada (sem backend real)**

---

# 🏗 Arquitetura (Microsserviços)

Embora o protótipo rode localmente, a arquitetura foi pensada em modelo de **microsserviços**, conforme exigência da FIAP:

### 🔹 Mood Service  
Responsável por armazenar registros de humor e histórico.

### 🔹 AI Service  
Realiza análise emocional (no protótipo → simulado localmente).

### 🔹 Recommendation Service  
Gera recomendações de bem-estar baseadas no humor.

### 🔹 Mobile App (Flutter)  
Consome os serviços (no protótipo → simulados internamente).

---

# 🧠 Boas Práticas de Gerenciamento de Memória

Foram adotadas práticas adequadas ao Flutter:

- Uso de `const Widgets` para reduzir rebuilds.
- `dispose()` aplicado no controlador de texto (`TextEditingController`).
- Listagem com `ListView.builder` (lazy loading).
- Processamento leve e não bloqueante.
- Evitar carregar grandes quantidades de dados em memória.

---

# ▶️ Como Executar o Projeto

### 1. Instalar Flutter  
https://docs.flutter.dev/get-started/install

### 2. Instalar dependências  
```bash
flutter pub get
