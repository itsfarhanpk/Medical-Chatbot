# 🏥 Medical Diagnosis Chatbot - MediBot 🤖

## 🌟 Introduction

MediBot is an AI-powered medical assistant that helps users get preliminary diagnoses and treatment suggestions for various health conditions. Built with cutting-edge technologies like GPT and Pinecone, it provides intelligent, context-aware medical guidance.

![image](https://github.com/user-attachments/assets/a411fd46-297a-4d2d-a050-f60f0431d707)

**Key Features**:

- 🩺 Symptom-based disease diagnosis
- 💊 Treatment recommendations
- 📚 Medical knowledge base
- 🔍 Context-aware conversations

## 🛠️ Tech Stack

### 🔧 Core Technologies

- **Python** 🐍 - Backend logic and API
- **LangChain** ⛓️ - AI orchestration framework
- **Flask** 🌶️ - Web application framework
- **OpenAI GPT** 🤖 - AI language model
- **Pinecone** 🌲 - Vector database for medical knowledge

### ☁️ Deployment & Infrastructure

- **AWS EC2** ☁️ - Cloud hosting
- **AWS ECR** 📦 - Container registry
- **Docker** 🐳 - Containerization
- **GitHub Actions** ⚡ - CI/CD pipeline

## 📂 Project Structure

```
├── .github/workflows          # CI/CD configuration
│   └── clcd.yaml
├── src/                       # Source code
│   ├── __init__.py
│   ├── helper.py              # Utility functions
│   ├── prompt.py              # AI prompt templates
├── static/                    # Static files
│   └── style.css              # CSS styles
├── templates/                 # HTML templates
│   └── chat.html              # Chat interface
├── tests/                     # Test files
│   └── test.py
├── .env                       # Environment variables
├── .gitignore                 # Git ignore rules
├── app.py                     # Main application
├── Dockerfile                 # Docker configuration
├── LICENSE                    # Project license
├── README.md                  # This file
├── requirements.txt           # Python dependencies
├── setup.py                   # Package configuration
├── store_index.py             # Pinecone index setup
└── template.py                # Template processing
```

## 🚀 How to Run

### 🛠️ Local Development Setup

1. **Clone the repository**

   ```bash
   git clone https://github.com/Aiengineer360/End-to-End-Medical-Chatbot
   cd End-to-End-Medical-Chatbot
   ```

2. **Create and activate conda environment**

   ```bash
   conda create -n medibot python=3.13 -y
   conda activate medibot
   ```

3. **Install dependencies**

   ```bash
   pip install -r requirements.txt
   ```

4. **Set up environment variables**
   Create a `.env` file in the root directory with:

   ```
   PINECONE_API_KEY="your_pinecone_api_key"
   OPENAI_API_KEY="your_openai_api_key"
   ```

5. **Initialize Pinecone index**

   ```bash
   python store_index.py
   ```

6. **Run the application**

   ```bash
   python app.py
   ```

7. **Access the chatbot**
   Open `http://localhost:8080` in your browser

### ☁️ AWS Deployment

1. **Set up AWS resources**

   - Create IAM user with policies:
     - AmazonEC2ContainerRegistryFullAccess
     - AmazonEC2FullAccess

   ![WhatsApp Image 2025-06-09 at 2 50 42 AM](https://github.com/user-attachments/assets/eed7a550-e89e-4bac-823a-09a60ddac7fe)

   - Create ECR repository

![WhatsApp Image 2025-06-09 at 2 50 42 AM](https://github.com/user-attachments/assets/09849e47-59e0-4b9e-83d5-e68e88776edb)

- Launch EC2 instance

![WhatsApp Image 2025-06-09 at 2 50 42 AM](https://github.com/user-attachments/assets/53564269-b085-46c1-ab56-86aa73428ccd)

1. **Configure EC2 instance**

   ```bash
   sudo apt-get update -y
   sudo apt-get upgrade -y
   curl -fsSL https://get.docker.com -o get-docker.sh
   sudo sh get-docker.sh
   sudo usermod -aG docker ubuntu
   newgrp docker
   ```

2. **Set up GitHub Actions**

   - Add secrets:
     - `AWS_ACCESS_KEY_ID`
     - `AWS_SECRET_ACCESS_KEY`
     - `AWS_DEFAULT_REGION`
     - `OPENAI_API_KEY`
     - `PINECONE_API_KEY`

3. **Configure self-hosted runner**
   - Set up EC2 as GitHub Actions runner

## 🤖 How MediBot Works

### 🔍 Diagnosis Process

1. **Symptom Analysis**: User describes their symptoms
2. **Context Understanding**: AI interprets the symptoms in medical context
3. **Differential Diagnosis**: System generates possible conditions
4. **Confidence Scoring**: Ranks conditions by likelihood
5. **Recommendations**: Suggests next steps and treatments

### 💡 Key Components

- **Knowledge Base**: Medical information stored in Pinecone vector database
- **Conversation Memory**: Maintains context across chat sessions
- **Safety Checks**: Flags emergencies requiring immediate care
- **Treatment Options**: Provides both conventional and alternative therapies

## ⚠️ Important Notes

1. **Not a substitute for professional care** �

   - MediBot provides preliminary information only
   - Always consult a healthcare professional for diagnosis and treatment

2. **Data Privacy** 🔒
   - Chat conversations are not stored permanently
   - No personal health information is retained

## 🤝 Contributing

I welcome contributions! Please:

1. Fork the repository
2. Create a feature branch
3. Submit a pull request

## 📜 License

This project is licensed under the MIT License -

## 📞 Contact

For questions or support, please contact:

- Email: [itsfarhan.pk@gmail.com]
- GitHub: [@itsfarhanpk](https://github.com/itsfarhanpk/Medical-Chatbot.git)

---

🌟 **Happy Diagnosing!** Remember, your health comes first - always consult a doctor for serious concerns. 🌟
