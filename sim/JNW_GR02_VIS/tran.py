#!/usr/bin/env python3
import pandas as pd
import yaml
import matplotlib.pyplot as plt
import re
import numpy as np

def main(name):
  # Delete next line if you want to use python post processing
  yamlfile = name + ".yaml"


  if "Nosweep" in yamlfile:
    return
  

  # Read result yaml file
  with open(yamlfile) as fi:
    obj = yaml.safe_load(fi)

  fname = name +".png"
  print(f"Saving {fname}")

  Temp = [-20, -10, 0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120, 130]
  tdiff_data = {k: v for k, v in obj.items() if k.startswith("tdiff")}
  tdiff_data = list(tdiff_data.values());

  temp = []
  tdiff = []

  print(tdiff_data)
  freq = np.divide(1, tdiff_data)


  plt.figure(figsize=(10, 6))
  plt.plot(Temp, freq, 'bo-', linewidth=2, markersize=8)
  plt.xlabel('Temperature (°C)', fontsize=12)
  plt.ylabel('Frequency', fontsize=12)
  plt.title('Output frequency vs Temperature', fontsize=14)
  plt.grid(True, linestyle='--', alpha=0.7)
  plt.savefig("SensorFunction.png")
  plt.show()

