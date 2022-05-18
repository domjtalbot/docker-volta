# ---------------------------------------------------------
# Example Dockerfile 
# ---------------------------------------------------------

# Define the Volta image to use
FROM domjtalbot/volta:latest

# Copy across package.json containing Volta config
COPY package.json .

# Set up Volta using the config from package.json
RUN volta setup

# Test the node & yarn versions
CMD node --version && yarn --version
