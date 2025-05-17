# Use Python as the base image
FROM python:3.10-slim

# Set the working directory
WORKDIR /app

# Copy app code and requirements
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port for Streamlit
EXPOSE 8501

# Run your Streamlit app
CMD ["streamlit", "run", "app.py"]
