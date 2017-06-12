import scripts
import importlib

for step in scripts.choices.STEPS:
    importlib.import_module('scripts.' + step)
