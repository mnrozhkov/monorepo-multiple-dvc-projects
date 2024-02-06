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
echo ".dvc_cache" > .gitignore
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

# Example for test 5_1
./scripts/5_1_test_dvc_exp_push_inProjectA_parentCommit_projectA.sh
```
