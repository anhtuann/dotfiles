import choices
import importlib
import os

for step in choices.STEPS:
    importlib.import_module('scripts.' + os.path.splitext(step)[0]) #stripped from file extension
