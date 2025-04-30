#!/usr/bin/env python3
import yaml
import re
import numpy as np
import matplotlib.pyplot as plt

# ─── 1) POINT THESE AT YOUR TWO YAMLS ─────────────────────────────
lay_yaml = "./output_tran/tran_LayGtKttTtVt.yaml"
sch_yaml = "./output_tran/tran_SchGtKttTtVt.yaml"
# ─────────────────────────────────────────────────────────────────────

# fixed temperature points
TEMPS = [-20, -10, 0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120, 130]

def load_freq(path):
    """Reads all tdiff* entries from a YAML, sorts them by number, and returns 1/tdiff."""
    with open(path, 'r') as f:
        d = yaml.safe_load(f)
    # extract tdiff keys and sort by their numeric suffix
    tvals = [
        v for k, v in sorted(
            ((k, v) for k, v in d.items() if k.startswith("tdiff")),
            key=lambda kv: int(re.search(r"\d+", kv[0]).group())
        )
    ]
    return 1.0 / np.array(tvals)

# ─── 2) LOAD BOTH CURVES ──────────────────────────────────────────────
freq_lay = load_freq(lay_yaml)
freq_sch = load_freq(sch_yaml)

# ─── 3) PLOT THEM TOGETHER ───────────────────────────────────────────
plt.figure(figsize=(10, 6))
plt.plot(TEMPS, freq_lay, 'bo-',   linewidth=2, markersize=8, label="Lay")
plt.plot(TEMPS, freq_sch, 'gs--',  linewidth=2, markersize=8, label="Sch")

plt.xlabel('Temperature (°C)', fontsize=12)
plt.ylabel('Frequency (1/tdiff)', fontsize=12)
plt.title('Output Frequency vs Temperature', fontsize=14)
plt.legend()
plt.grid(True, linestyle='--', alpha=0.7)
plt.tight_layout()

# ─── 4) SAVE & SHOW ─────────────────────────────────────────────────
outpng = "SensorFunction_combined.png"
print(f"Saving {outpng}")
plt.savefig(outpng)
plt.show()

