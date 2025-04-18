cls
set update=%1
git add .
git commit . -m "%update%"
git push -f origin main
echo "Deploy Done"