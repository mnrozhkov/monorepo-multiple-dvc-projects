# Tests for Monorepo scenarios in DVC Studio

## Install 

1. Fork the repo
2. Create project in Studio 
3. Clone & install deps

```bash
git clone https://github.com/mnrozhkov/monorepo-multiple-dvc-projects.git
cd monorepo-multiple-dvc-projects

python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt 
```

## Set up DVC

Create a local  cache dir in the root of the project (arbitrary location)

```bash
mkdir -p .dvc_cache 
echo "*\n/\!.gitignore" >> .dvc_cache/.gitignore
echo ".dvc_cache" >> .gitignore
```

Set up all DVC projects to use the same cache dir

```bash
cd project_a && dvc config cache.dir ../.dvc_cache
cd ../project_b && dvc config cache.dir ../.dvc_cache
```

## Download shared data

```bash
dvc import-url https://data.dvc.org/get-started/data.xml data/shared_data.xml
```

## Run tests 

```bash
chmod +x scripts/* 

./scripts/1_test_dvc_exp_inProjectA_parentCommit_inRoot.sh
./scripts/2_test_commit_exp_inProjectA_parentCommit_inRoot.sh
./scripts/3_test_dvc_exp_inProjectA_parentCommit_inProjectB.sh
./scripts/4_test_commit_exp_inProjectA_parentCommit_isExp_inProjectB.sh
./scripts/5_1_test_dvc_exp_push_inProjectA_parentCommit_projectA.sh
./scripts/5_2_test_dvc_exp_push_inProjectA_parentCommit_outside_root.sh
./scripts/5_3_test_dvc_exp_push_inProjectA_parentCommit_outside_inProjectB.sh
```
