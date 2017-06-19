import importlib
import os
import sys

script = sys.argv[-1].split('/')
script[-1] = os.path.splitext(script[-1])[0]
script = '.'.join(script)

importlib.import_module(script)
