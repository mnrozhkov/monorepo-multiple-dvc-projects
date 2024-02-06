# (step 1) Prepare the starting commit - in project_b 
# IMPORTANT: Different behavor when PUSH/NOT PUSH before step 2
echo "$(date '+%Y-%m-%d %H:%M:%S') - 4_test_commit_exp_inProjectA_parentCommit_isExp_inProjectB.sh" >> project_b/some_projectB_content
git add project_b/some_projectB_content
git commit -m "$(date '+%H:%M:%S') - 4_test_commit_exp_inProjectA_parentCommit_isExp_inProjectB.sh"
# git push origin main # TEST BOTH: PUSH/NOT PUSH

# (step 2) Run & Commit expriment in B
cd project_b
dvc exp run -f -m "project_b: exp - $(date '+%H:%M:%S')"
git add ./*
git commit -m "Commit dvc exp B: 4_test_commit_exp_inProjectA_parentCommit_isExp_inProjectB"
git push origin main

# (step 3) Run & Commit expriment in A
cd ../project_a
dvc exp run -f -m "project_a: exp - $(date '+%H:%M:%S')"
git add ./*
git commit -m "Commit dvc exp A: 4-test_commit_exp_inProjectA_parentCommit_isExp_inProjectB"
git push origin main 
