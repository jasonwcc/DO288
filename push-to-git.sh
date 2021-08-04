if [ $# -eq 0 ]
then
  echo "pushing to main"
else
  echo "pushing to $1 branch"
  git checkout -b $1    
  git add .
  git commit -am "Updated `date +%D` | by J"
  git push origin $1
fi
