import os

with open('/workspace/__input__.txt', 'wt') as f:
    f.write(os.environ['INPUT_TEXT'])
with open('/workspace/__voice__.txt', 'wt') as f:
    f.write(os.environ['INPUT_VOICE'])