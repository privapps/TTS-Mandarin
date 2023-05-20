from os import walk
import numpy as np
from scipy.io.wavfile import write as wvwrite
from scipy.io import wavfile

_file_path='outputs'
_, _, filenames = next(walk(_file_path), (None, None, []))
npwav = []

SAMPLE_RATE = 22050
filenames.sort()
for f in filenames:
    fn=_file_path + '/' + f
    print(fn)
    rate, data = wavfile.read(fn)
    npwav.append(data[0:len(data)-int(SAMPLE_RATE * .4)])

file_name = '__out__.wav'
if len(npwav) >= 1:
    wvwrite(file_name, SAMPLE_RATE, np.concatenate(npwav))
