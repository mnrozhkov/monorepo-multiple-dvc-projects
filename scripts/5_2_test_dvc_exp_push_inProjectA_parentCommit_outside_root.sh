# 5.2 Test DVC experiment push in Project A
# - use case: dvc exp push 
# - parent commit: outside (root)

# (step 1) Prepare the starting commit - in project_a 
echo "$(date '+%Y-%m-%d %H:%M:%S') - 5_2_test_dvc_exp_push_inProjectA_parentCommit_outside_root.sh" >> some_root_content
git add some_root_content
git commit -m "$(date '+%H:%M:%S') - 5_2_test_dvc_exp_push_inProjectA_parentCommit_outside_root.sh"
git push origin main

# (step 2) Clean experiments in A
cd project_a
dvc exp remove -A

# (step 3) Run expriment in A
dvc exp run -f

# (step 4) Push exp ref 
dvc exp push origin -A
