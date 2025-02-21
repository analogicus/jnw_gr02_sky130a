#!/usr/bin/env python3
import yaml
import matplotlib.pyplot as plt

def main(name):
  # Delete next line if you want to use python post processing
  # return
  yamlfile = name + ".yaml"

  # Read result yaml file
  with open(yamlfile) as fi:
    obj = yaml.safe_load(fi)

  fname = name +".png"
  print(f"Saving {fname}")

  Temp = [-20, -10, 0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120, 130]
  # Initialize empty lists
  current = []
  vref = []

  i_temp_data = {k: v for k, v in obj.items() if k.startswith("i_temp")}
  vref_data = {k: v for k, v in obj.items() if k.startswith("vref")}

  # Sort i_temp_data by temperature and extract values
  sorted_i_temp_values = [v for k, v in sorted(i_temp_data.items(), key=lambda x: int(x[0].replace("i_temp", "")))]

  # Sort vref_data by temperature and extract values
  sorted_vref_values = [v for k, v in sorted(vref_data.items(), key=lambda x: int(x[0].replace("vref", "")))]


  print(sorted_i_temp_values)

  fig, axs = plt.subplots(2, 1, figsize=(10, 8))

  axs[0].plot(Temp, sorted_i_temp_values, 'bo-')
  axs[0].set_title("Temperature current")

  axs[1].plot(Temp, sorted_vref_values, 'ro-')
  axs[1].set_title("Vref")

  axs[0].grid(True, linestyle='--', alpha=0.6)
  axs[1].grid(True, linestyle='--', alpha=0.6)

  plt.tight_layout()
  
  plt.show()

  print(vref)
