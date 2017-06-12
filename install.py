import scripts.choices

for step in scripts.choices.STEPS:
    import 'scripts.' + step
