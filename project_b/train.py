import random
import time
from dvclive import Live
from dvc.api import params_show

params = params_show()

time.sleep(1)
with Live(save_dvc_exp=True) as live:
    time.sleep(params["sleep"])
    for i in range(params["epochs"]):
        print(f"training on epoch: {i}")
        live.log_metric("foo", i + random.random())
        live.log_metric("bar", params["epochs"] - (i + random.random()))
        live.next_step()
        time.sleep(params["sleep"])
