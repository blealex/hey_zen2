# Use the official Python 3.10.9 slim-buster image
FROM python:3.10.9-slim-buster

# Update the package list, upgrade all packages, and install git
RUN apt update && apt upgrade -y && apt install git -y

# Set the working directory
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt requirements.txt

# Upgrade pip and install the required Python packages
RUN pip install -U pip && pip install -U -r requirements.txt

# Copy the rest of the application into the container
COPY . .

# Expose the necessary port (e.g., 8080)
EXPOSE 8080

# Set the default command to run the bot
CMD ["python3", "bot.py"]
