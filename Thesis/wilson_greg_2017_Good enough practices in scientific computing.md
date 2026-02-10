---
title: wilson_greg_2017_Good enough practices in scientific computing
aliases: []
summary: 
created: 2021-09-17 12:15
modified: 2021-09-17 12:15
tags: []
---

# Info
**Title**: Good enough practices in scientific computing
**Journal**: #plos-computational-biology
**Year**: #y2017
**Authors**: [[Greg Wilson]],  [[Jennifer Bryan]], [[Karen Cranston]], [[Justin Kitzes]], [[Lex Nederbragt]], [[Tracy K. Teal]]

**Link**: [paperpile]()
**Tags**: #paper
**Rating**:

---
**Connections**:

[[methods]]
[[programming]]
[[experimental design]]

# Notes
## Summary
**DATA MANAGEMENT**
Raw Data -> Tidy Data
1. Save the raw data
2. Ensure raw data are backed up to more than one location (or on the cloud)
3. Create the data you would want to use (analysis friendly)^[wide vs. long]
4. Document steps used to process data^[data cleaning in separate script]
5. Submit data to reputable DOI-issuing repository so others can access and cite

**SOFTWARE**
1. Place brief explanation at start of program
2. Decompose program into functions^[idea of helper functions]
3. Avoid duplication
4. Use well-maintained libraries (and test before use)
5. Give functions and variables meaningful names^[pep8 and docstrings]
6. Make dependencies and requirements explicit
7. Provide simple example or test data set
8. Submit code to DOI-issuing repo

**COLLABORATION**
1. Create overview of project^[readme]
2. Create shared "to-do" list for the project
3. Decide on communication strategies
4. Make the license explicit
5. Make the project citable

**PROJECT ORGANIZATION**
1. Each project in its own directory
2. Put text documents in a `doc` directory
3. Divide raw data and cleaned data into separate directories
4. Put project source code in the `src` directory
5. Put external scripts or compiled programs in the `bin` directory
6. Name files to reflect content/function

**TRACKING CHANGES**
1. Back up everything ^[pcloud]
2. Keep changes small
3. Share changes frequently
4. Create, maintain, and use checklist for saving and sharing changes to project
5. Add file called `CHANGELOG.txt` to the project's `docs` subfolder
6. Use version control

**MANUSCRIPTS**
1. Find something that works for you
	1. Paperpile/Google docs...version control built in

## Thoughts


# Resources
