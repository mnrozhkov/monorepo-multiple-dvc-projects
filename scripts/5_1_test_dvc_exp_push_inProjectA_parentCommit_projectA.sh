# 5.1 Test DVC experiment push in Project A
# - use case: dvc exp push 
# - parent commit: commited in same subdir (project_a) & NOT PUSHED

# (step 1) Prepare the starting commit - in project_a 
echo "$(date '+%Y-%m-%d %H:%M:%S') - 5_1_test_dvc_exp_push_inProjectA.sh" >> project_a/some_projectA_content
git add project_a/some_projectA_content
git commit -m "$(date '+%H:%M:%S') - 5_1_test_dvc_exp_push_inProjectA.sh"
git push origin main  # Comment this line to simulate NOT PUSHED parent commit scenario

# (step 2) Clean experiments in A
cd project_a
dvc exp remove -A

# (step 3) Run expriment in A
dvc exp run -f

# (step 4) Push exp ref 
dvc exp push origin -A
