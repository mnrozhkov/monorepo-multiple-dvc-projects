# Add a new line to some_root_content file
echo "$(date '+%Y-%m-%d %H:%M:%S') - 1-test_dvc_exp_inProjectA_parentCommit_inRoot.sh" >> some_root_content

# Commit changes to Git
git add some_root_content
git commit -m "1-test_dvc_exp_inProjectA_parentCommit_inRoot.sh"

# Change directory to dproject_a
cd project_a

# Run dvc experiment
dvc exp run -f

# Commit changes to Git
# -> no commit here
