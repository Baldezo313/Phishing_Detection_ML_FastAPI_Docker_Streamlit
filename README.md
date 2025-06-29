<h1 align="center">
Deploying ML Model for Phishing Detection 🛡️
  
FastAPI - Streamlit - Docker
</h1>

<p align="center">
  <img src="https://github.com/Baldezo313/Phishing_Detection_ML_FastAPI_Docker_Streamlit/blob/main/data/image.png">
</p>

## Overview

This project demonstrates how to build and deploy a machine learning model that detects phishing websites based on URL features. 
- Using `scikit-learn` for model training, `FastAPI` for the backend API, and `Streamlit` for the user interface, we've created an application that helps users identify potentially malicious websites. The entire solution is containerized with `Docker` for easy deployment across different environments.


## Problem Statement

Phishing attacks remain one of the most common cybersecurity threats, with millions of people falling victim each year. These attacks trick users into revealing sensitive information through fake websites that look legitimate. Traditional detection methods often rely on blocklists, which cannot identify new phishing sites. This project addresses this challenge by developing a machine learning model that can identify potential phishing websites based on their URL features. 


## 🛠️ Project Steps and Tech Stack

1. **Understanding the Problem:** Defining the phishing detection challenge
2. **Exploratory Data Analysis:** Understanding the dataset structure
3. **Data Preprocessing:** Preparing the data for modeling
4. **Model Development:** Building RandomForest Classifier model
5. **Model Optimisation:** Hyperparameter tuning of the models
6. **Deployment:** Creating a web application with FastAPI and Docker
    - **API Development**: Created a FastAPI backend to serve predictions.
    - **Containerization**: Packaged the application with Docker for easy deployment.
    - **UI Creation**: Built a user-friendly interface with Streamlit.
    - **Testing**: Developed test scripts to ensure the API works correctly.


## ⬇️ Installation

### Option 1: Using Docker (Recommended)

1. **Clone the Repository**
   ```bash
   git clone https://github.com/Baldezo313/Phishing_Detection_ML_FastAPI_Docker_Streamlit.git
   cd Phishing-Detection-ML-FastAPI-Docker-Streamlit
   ```

2. **Build the Docker Image**
   ```bash
   docker build -t phishing_detector .
   ```

3. **Run the Container**
   ```bash
   docker run -p 8000:8000 --name phishing-api phishing-detector
   ```

4. **Access the API**
   - FastAPI Swagger UI: http://localhost:8000/docs

### Option 2: Using Virtual Environment

1. **Clone the Repository and Enter the Main Folder**

2. **Create and Activate a Virtual Environment**
   ```bash
   # Create virtual environment
   python -m venv venv
   
   # Activate on Windows
   venv\Scripts\activate
   ```

3. **Install Required Packages**
   ```bash
   pip install -r requirements.txt
   ```

4. **Run the Application**
   ```bash
   # Start the FastAPI backend (in one terminal)
   uvicorn app.app:app --host 0.0.0.0 --port 8000
   
   # Start the Streamlit frontend (in another terminal)
   streamlit run app/appUI.py
   ```

5. **Access the Application**
   - Streamlit UI: https://phishingdetectionmlfastapidockerappgit-trpyczm5jrkucmrsmyhccb.streamlit.app/



## 📂 Project Structure

```
phishing-detection-app/
├── app/
│   ├── app.py            # FastAPI backend application
│   └── test_api.py       # API test script
├── data/
│   └── Website Phishing.csv  # Dataset
├── models/
│   ├── model_training.py     # Model training script
│   └── RFC_best_model.pkl    # Trained Random Forest model
├── UI/
│   └── appUI.py          # Streamlit frontend
├── venv/                 # Virtual environment
├── .gitignore            # Git ignore file
├── Dockerfile            # Docker configuration
├── README.md             # Project documentation
└── requirements.txt      # Project dependencies
```



## 🌱 About Me

I'm Mamadou BALDE, a Data Scientist with a curiosity for learning and development in the fields of Machine Learning and Generative AI.


If you find this repository helpful, don't forget to give it a ⭐ star.

Happy coding! 👩‍💻✨

---
