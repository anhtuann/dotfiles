from scripts import choices
import importlib

for step in choices.STEPS:
    importlib.import_module('scripts.' + step)
