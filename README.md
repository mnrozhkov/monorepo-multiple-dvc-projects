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

## Run tests 

```bash
chmod +x scripts/* 

# Example for test 5_1
./scripts/5_1_test_dvc_exp_push_inProjectA_parentCommit_projectA.sh
```
