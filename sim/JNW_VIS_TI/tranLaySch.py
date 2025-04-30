import yaml
import matplotlib.pyplot as plt

# fixed temperature points
Temps = [-20, -10, 0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120, 130]

def load_i_v_from_yaml(path):
    """Load and sort i_temp*/vref* arrays from one YAML file."""
    with open(path) as f:
        obj = yaml.safe_load(f)
    # extract and sort
    i_vals = [v for k, v in sorted(
        ((k, v) for k, v in obj.items() if k.startswith("i_temp")),
        key=lambda x: int(x[0].replace("i_temp", ""))
    )]
    v_vals = [v for k, v in sorted(
        ((k, v) for k, v in obj.items() if k.startswith("vref")),
        key=lambda x: int(x[0].replace("vref", ""))
    )]
    return i_vals, v_vals

# specify your two files
lay_yaml = "./output_tran/tran_LayGtKttTtVt.yaml"
sch_yaml = "./output_tran/tran_SchGtKttTtVt.yaml"

# load data
i_lay, v_lay = load_i_v_from_yaml(lay_yaml)
i_sch, v_sch = load_i_v_from_yaml(sch_yaml)

# make figure
fig, axs = plt.subplots(2, 1, figsize=(10, 8), sharex=True)

# —— Current subplot ——
axs[0].plot(Temps, i_lay, "bo-", label="Lay")
axs[0].plot(Temps, i_sch, "gs--", label="Sch")
axs[0].set_title("Temperature vs Current")
axs[0].set_ylabel("Current")
axs[0].legend()
axs[0].grid(True, linestyle="--", alpha=0.6)

# —— Vref subplot ——
axs[1].plot(Temps, v_lay, "ro-", label="Lay")
axs[1].plot(Temps, v_sch, "k^--", label="Sch")
axs[1].set_title("Temperature vs Vref")
axs[1].set_xlabel("Temperature (°C)")
axs[1].set_ylabel("Vref")
axs[1].legend()
axs[1].grid(True, linestyle="--", alpha=0.6)

plt.tight_layout()
plt.savefig("./Figures/combined_Lay_Sch.png")
plt.show()
