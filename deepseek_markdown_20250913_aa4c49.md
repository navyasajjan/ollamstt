# Voice Assistant Setup Guide

## Prerequisites
- Node.js (v18 or higher)
- OpenAI API key
- Modern browser with microphone access

## Local Development

1. Clone the repository
2. Navigate to the backend directory: `cd backend`
3. Install dependencies: `npm install`
4. Create a `.env` file with your OpenAI API key
5. Start the server: `npm run dev`
6. Open your browser to `http://localhost:3001`

## Production Deployment

### Option 1: Docker Deployment
1. Build the image: `docker build -t voice-assistant .`
2. Run the container: `docker run -p 3001:3001 -e OPENAI_API_KEY=your_key voice-assistant`

### Option 2: Vercel Deployment
1. Install Vercel CLI: `npm i -g vercel`
2. Deploy: `vercel --prod`

### Option 3: Render Deployment
1. Connect your repository to Render
2. Set environment variables in the Render dashboard
3. Deploy

## Environment Variables
- `OPENAI_API_KEY`: Your OpenAI API key (required)
- `MODEL_NAME`: OpenAI model to use (default: gpt-4o)
- `PORT`: Server port (default: 3001)
- `ENABLE_RAG`: Enable Retrieval Augmented Generation (default: false)

## RAG Setup (Optional)
1. Set `ENABLE_RAG=true` in your environment variables
2. Add documents to the `backend/rag/documents/` folder as text files
3. Restart the server

## Usage
1. Open the application in your browser
2. Grant microphone permissions when prompted
3. Press and hold the "Hold to Talk" button to record your question
4. Release the button to send your query
5. The AI will respond with both text and audio