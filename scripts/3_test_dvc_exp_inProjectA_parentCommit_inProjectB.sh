# (step 1) Prepare the starting commit - in project_b 
echo "$(date '+%Y-%m-%d %H:%M:%S') - 3-test_dvc_exp_inProjectA_parentCommit_inProjectB.sh" >> project_b/some_projectB_content
git add project_b/some_projectB_content
git commit -m "3-test_dvc_exp_inProjectA_parentCommit_inProjectB.sh"
git push origin main # -> only changes in project_b/some_projectB_content

# (step 2) Run expriment in A
cd project_a
dvc exp run -f

# (step 3) Push DVC experiment from Project A
cd ..
git add project_a/*
git commit -m "Commit dvc exp: 3-test_dvc_exp_inProjectA_parentCommit_inProjectB.sh"
git push origin main 
