echo "Install dependencies and start the web app..."
cd server
echo "Installing dependencies for backend"
npm install
echo "Starting backend with pm2"
pm2 start index.js --name "server"
cd ..

cd public
echo "Installing dependencies for frontend"
npm install
echo "Building webpack"
npm run build
cd .. 
echo "Starting frontend with pm2"
pm2 start public/index.js --name "public"

echo "Web app deployed! check the port to access the web."
echo "Web running at http://eop.id.vn:5001"

