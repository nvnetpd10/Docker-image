FROM node:18-alpine

WORKDIR /server

COPY package.json .
RUN npm install

COPY tsconfig.json .

EXPOSE 3000

# Add your built application code to the working directory
COPY dist/ .

CMD ["npm", "start"]
