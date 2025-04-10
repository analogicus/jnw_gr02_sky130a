import os
import re
import numpy as np
import matplotlib.pyplot as plt
from PySpice.Spice import RawFile
from scipy.signal import find_peaks

def calculate_frequency(time, signal):
    # Detect rising-edge peaks
    peaks, _ = find_peaks(signal, height=np.mean(signal))
    if len(peaks) < 2:
        return 0
    period = (time[peaks[-1]] - time[peaks[0]]) / (len(peaks) - 1)
    return 1 / period

# Folder containing your .raw files
raw_dir = "./output_tran"

# Match filenames like tran_SchGtKttTtVt_-20.raw
pattern = r"tran_SchGtKttTtVt_(-?\d+)\.raw"

# Gather and sort files by temperature
raw_files = []
for f in os.listdir(raw_dir):
    match = re.match(pattern, f)
    if match:
        temp = int(match.group(1))
        raw_files.append((temp, f))

raw_files.sort()

print(raw_files)

# Extract frequency vs temperature
temperatures = []
frequencies = []

for temp, filename in raw_files:
    full_path = os.path.join(raw_dir, filename)
    try:
        raw = RawFile(full_path)
        trace = raw.get_trace('V(VOUT)')
        time = np.array(trace.abscissa)
        vout = np.array(trace.ordinate)

        freq = calculate_frequency(time, vout)

        temperatures.append(temp)
        frequencies.append(freq)
        print(f"T = {temp}°C → Frequency = {freq:.2f} Hz")
    except Exception as e:
        print(f"Failed to process {filename}: {e}")

# Plot frequency vs temperature
plt.figure(figsize=(8, 4))
plt.plot(temperatures, frequencies, marker='o')
plt.xlabel("Temperature (°C)")
plt.ylabel("Frequency (Hz)")
plt.title("V(out) Frequency vs Temperature")
plt.grid(True)
plt.tight_layout()
plt.show()
