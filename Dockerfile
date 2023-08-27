FROM python:3.10
WORKDIR /app

# Expose port you want your app on
EXPOSE 8501

# Upgrade pip and install requirements
COPY requirements.txt requirements.txt
RUN pip install -U pip
RUN pip install -r requirements.txt

# Copy app code
COPY . ./app/

# Run
ENTRYPOINT ["streamlit", "run", "app/streamlit_app.py"]