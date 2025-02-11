#!/usr/bin/env python3
import yaml
import matplotlib.pyplot as plt

def main(name):
  # Delete next line if you want to use python post processing
  
  yamlfile = name + ".yaml"

  # Read result yaml file
  with open(yamlfile) as fi:
    obj = yaml.safe_load(fi)

  fname = name +".png"
  print(f"Saving {fname}")

  Temp = [-25, 0, 25, 50, 75, 100]

  # Initialize empty lists
  current = []
  vref = []

  # Iterate through the dictionary and separate the values
  for key, value in obj.items():
    if key.startswith('i_temp'):
      current.append(value)
    elif key.startswith('vref'):
      vref.append(value)

  current.append(current.pop(2))  # Move 3rd entry (index 2) to the end
  vref.append(vref.pop(2))        # Move 3rd entry (index 2) to the end

  fig, axs = plt.subplots(2, 1, figsize=(10, 8))

  axs[0].plot(Temp, current)
  axs[0].set_title("Temperature current")

  axs[1].plot(Temp, vref)
  axs[1].set_title("Vref")

  plt.tight_layout()
  plt.show()

  print(vref)
