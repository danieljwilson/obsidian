---
type: note
created: 2026-02-13
modified: 2026-02-13 13:48
tags:
categories:
  - academics
  - research
  - papers
  - psychology
projects:
  - dgibg paper
priority:
permalink:
---
---
## Next steps

We need to first process the data from Qualtrics which is a bit messy.

## Data overview
Please explore the data thoroughly to understand possible differences in the Qualtrics surveys that were administered. These difference could include things like missing or additional items, and differences in variable naming.
## Moving from Raw to Interim data
### Preprocessing
#### Filtering
processing will start by filtering dataframes to select subjects/rows which have a value of 100 for "Progress" to ensure that they finished the survey.
   ![[Pasted image 20260213135733.png]]
#### Rename variables
Rename variables where it can make it easier to understand what the variable is. Use a consistent logic and styling for all variables and update any variables that are lacking this. Save a document that lists the old and new variable names for all variables.
   Here is an example from /Users/djw/Documents/pCloud_synced/Academics/Projects/2020_thesis/thesis_experiments/3_experiments/3_1_gap_measure/3_1_1_raw_data_measure/qualtrics/SONA_2023_Fall/IBGap_SONA_Nov42023.csv of some rough examples of variables to rename (but again, use logical syntax and formatting):
```md
EndDate - > date_surveyCompletion

Duration (in seconds) -> duration_in_minutes (perform the conversion)

ResponseId ->qualtrics_responseID

Q3_1 -> consent_understoodInstructions

Q3_2 -> consent_gradeUsage

Q3_3 -> consent_participation

Q5 -> studentNumber

Q7 -> consent_prescreenData

retest_email -> (convert to two columns) 1: retest_study (1 if a value is present, otherwise 0), 2: retest_email (the email address where provided)
```

Note that when renaming variables be careful not to remove measure items that have an "r" appended as this allows us to understand they are to be reverse scored.
e.g. `happiness_4r`

Also sometimes subscale information is included in the variable name, like `dass_1s` from the DASS scale which indicates that this question is association with the stress subscale.
#### Intensive longitudinal field study subjects
Note that there are a special group of subjects who were part of a larger longitudinal field study. Identify these subjects based on this document which contains multiple options for cross-referencing IDs: /Users/djw/Documents/pCloud_synced/Academics/Projects/2026_paper_dgibg/data/1_raw/organize/subjectDetail_ild.csv
	1. Also note that within this group there are two "cohorts" - in this document they are identified as run_1 and run_2 in the "Experiment Version" column
	2. Also note that within each cohort most subject completed the measure twice - the first time should be labeled as onboarding and the second time as offboarding
	3. Also note that there are some subjects who took part in both run_1 and run_2 of the study. Do not remove these as duplicates.
	4. Note that this data is a bit messy/scattered - especially for run_2, where I have 4 csv files (see pasted image below) - I am not sure which of these are valid and there may be duplicates. ![[Pasted image 20260213143339.png]]
#### Duplicate entries
Deal with duplicate entries (survey completions) by the same subject (e.g. same Student Number or email or other clear identifying information) by keeping the most recent completed version of the survey. Note that for the longitudinal field study subjects we expect duplicate entries at onboarding and offboarding, however if we have entries from the same subject that are within one month of each other AND are in the same run (e.g. run_1 or run_2) these should be treated as duplicates. Again keep the most recent version. 
#### Test-retest subjects
Find any subjects who are NOT part of the longitudinal field study who completed the same measure on two different dates more than one month apart. Use robust cross referencing (i.e. check student number and/or email address or any other personal ID information)
#### Domain categories
Carefully identify each goal domain category for each survey as they may differ between surveys. Use the text description on the second row to help understand what the variable is. For example in the file run2_on_ibGap_part1.csv, there is a column (first row) called `ib_domain_goal_1`. In the same column in the second row there is the text: 

`Domain Questions Below we list a wide variety of categories where you may have goals.  We would like to know, for each category, whether or not, in general, you have actual goals for that particular category. For example, one person may have a goal to cook their own dinner every night while you might not care at all whether you cook or eat out or order take out. Remember  goals do not have to be specific, even if you have a general or vague goal then indicate that you DO have a goal for that category  goals can be either a desire to DO something as well as a desire to NOT DO something - Diet` 

It is the last work after the dash, "Diet" that indicates the category.

Also note that only on more recent surveys we ask subjects who choose the "Other" category to indicate what their "Other" goal is.

#### Scales
Make a document that compares the scales that are collected for each subject sample. For example the most recent subjects completed the PMCQ scale but I don't think that earlier subjects did this. I want to get a clear picture of the overlaps and gaps.
# Important
Any data with personally identifying information (e.g. student numbers, emails, etc. should never be committed to git)