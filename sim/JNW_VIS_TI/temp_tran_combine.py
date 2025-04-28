import os
import yaml
import matplotlib.pyplot as plt

folder_path = "./output_tran"

# Initialize empty lists to hold all temperature, i_temp, and vref values
all_temp = [-20, -10, 0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120, 130]
all_i_temp_values = []
all_vref_values = []
curve_labels_i_temp = []  # Store labels for i_temp curves
curve_labels_vref = []    # Store labels for vref curves

# Iterate over files in the folder
for filename in os.listdir(folder_path):
    # Check if the file is a .yaml file and does not contain "Nosweep"
    if filename.endswith(".yaml") and "Nosweep" not in filename and "Lay" in filename: # remove the last and for non layout plotting
        # Construct the full path to the file
        yamlfile = os.path.join(folder_path, filename)

        # Read result yaml file
        with open(yamlfile) as fi:
            obj = yaml.safe_load(fi)

        name = os.path.splitext(filename)[0]

        # Extract temperature data
        i_temp_data = {k: v for k, v in obj.items() if k.startswith("i_temp")}
        vref_data = {k: v for k, v in obj.items() if k.startswith("vref")}

        # Sort i_temp_data by temperature and extract values
        sorted_i_temp_values = [v for k, v in sorted(i_temp_data.items(), key=lambda x: int(x[0].replace("i_temp", "")))]
        sorted_vref_values = [v for k, v in sorted(vref_data.items(), key=lambda x: int(x[0].replace("vref", "")))]

        # Append values from the current file to the overall lists
        all_i_temp_values.append(sorted_i_temp_values)
        all_vref_values.append(sorted_vref_values)

        # Add labels for the curves based on the file name
        #curve_labels_i_temp.append(f"{name} i_temp")
        #curve_labels_vref.append(f"{name} vref")

# Create a single plot to combine all the data
fig, axs = plt.subplots(2, 1, figsize=(10, 8))

# Plot all i_temp values (temperature current) on the same axis
for i_temp_values in all_i_temp_values:
    axs[0].plot(all_temp, i_temp_values)

axs[0].set_title("Temperature Current (i_temp)")
axs[0].set_xlabel("Temperature (°C)")
axs[0].set_ylabel("Current")
#axs[0].legend()  # To add a legend for each line
axs[0].grid(True, linestyle='--', alpha=0.6)

# Plot all vref values on the same axis
for vref_values in all_vref_values:
    axs[1].plot(all_temp, vref_values)

axs[1].set_title("Vref")
axs[1].set_xlabel("Temperature (°C)")
axs[1].set_ylabel("Vref")
#axs[1].legend()  # To add a legend for each line
axs[1].grid(True, linestyle='--', alpha=0.6)

# Tight layout to prevent overlapping of labels
plt.tight_layout()

# Save the combined plot as a single image
plt.savefig("combined_plot.png")
plt.show()  # Show the plot
