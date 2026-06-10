---
title: 'Learning Data Science website'
tags:
  - Statistics
  - Data Science
  - R
  - Education
  - Multimedia
authors:
  - name: Ben Rush
    orcid: 0000-0002-9530-1927
    affiliation: "1,2" # (Multiple affiliations must be quoted)
  - name: Claudia Solis-Lemus
    orcid: 0000-0002-9789-8915
    affiliation: "1, 3, 4"
affiliations:
 - name: Institute for Discovery, University of Wisconsin-Madison
   index: 1
 - name: Department of Radiology, University of Wisconsin-Madison School of Medicine and Public Health
   index: 2
 - name: Department of Plant Pathology, University of Wisconsin-Madison
   index: 3
- name: Department of Statistics, University of Wisconsin-Madison
   index: 4
date: 16 October 2023
bibliography: paper.bib
---

# JOSE papers should include:

-List all authors and affiliations.
_Maybe Heidi in here too?_
<!-- -Describe the submission, and explain its eligibility for JOSE.
-Include a “Statement of Need” section, explaining how the submitted artifacts contribute to computationally 
  enabled teaching and learning, and describing how they might be adopted by others.
-For software submissions, describe the functionality of the software, usage and recent experience of use
 in teaching and learning situations.
-For learning modules, describe the learning objectives, content, instructional design, and experience of 
  use in teaching and learning situations.
-Tell us the “story” of the project: how did it come to be?
-Cite key references, including a link to the open archive of the sofware or the learning module.
-JOSE welcomes submissions with diverse educational contexts. You should write your paper for a non-specialist reader. 
  Your submission should probably be around 1000 words (or around two pages).
- Create bibliography
- Name of software product (maybe PonderStats... ponderstats.wid.wisc.edu) -->

# Summary
We created a website on GitHub pages for containing intrductory statistics learning materials accompanied by engaging media and R scripts for middle and highschool students. The website and scripts are designed to mirror an introductory course to statistics and tie it to serveral realworld
fields using statistics and data science, like genetics. Similar to other education materials aimed at students in grade school `[@Thompson:2022]`, the website, starts with an introduction that middle school and high school students can grasp- the diversity of dog breeds.
We introduce the character of Rhonda, a tall female golden retriever. We lead readers through the thinking "how do we actually know Rhonda
is tall?". Next, readers read through comparisons of Rhonda to other golden retreivers based on personal observations, defining
a metric of "tallness", types of variables, comparing Rhonda to other golden retreivers, and eventually other comparing to
bog breeds. Thia approach helps lay the foundation for statistics and data science for students through self-paced exploration `[@Chittora:2020]`. 
Students read through these concepts all while provided humorous examples and comments, links for further learning, RShiny Apps for readers to 
learn experientially, visuals, embedded videos, and the scripts for students to follow along. In sum, students have access to 11 different lessons 
to learn about introductory statistics and data science at their own pace.

# Statement of Need
In our experience, the introduction to statistics and data science rely heavily on the mathematical
formulas instead of the applications of these formulas and without a humanist perspective in student learning `[@Lee:2021]`. In fact, one of the authors 
struggled in calculus because the applications to the real-world seemed extremely distant. He stopped taking
math classes until forced to take statistics to complete his undergraduate degree. Despite his hesitation,
he fell in love with statistics and absorbed all of the information possible. The authors hope that 
this website might be able to connect with and inspire younger learners to pursue the applied mathematics
fields of statistics and data science. The website and open scripts are aimed to be fun and engaging through a mix 
of media that focus on why these fields are important for individual decision making and
potential career paths. The option to delve further into the formulas in statics are available, which can encourage learning `[@Lee:2021]`, but the
interpretations of statistical tests to real-world applications are prioritized. RShiny apps and the code that
generated many of the figures are available for students to interact with. We believe this website and script can
serve to provide an intriguing first encounter with statistics and data scientists in a relevant way `[@Weiland:2023]` , especially for those students
who might be conditioned to be math averse. We also plan to expand the website to include more topics on data science
and machine learning, which seem possible to be introduced to younger students `[@Sanusi:2023]`.

# Website description
The website provides an introduction to statistics and data science for middle school, high school, and undergraduate students. 
The writing and multiple media are designed to be engaging and fun while still covering the topics of an introductory statistics
course. The website is focused much more on the reasoning behind the statistics and data science than the mathematical formulas.
The website is hosted on GitHub pages and can be found at _ponderstats.wid.wisc.edu_. The website is divided into 11 lessons, navigable to from the home page. The lessons are :

| Lesson Name | Topic |
|:---------|:---------|
| I've never seen a dog before    | Why data science?    |
| In a world of possibilities   | Genetic diversity     |
| Finding average ground | Averages and medians |
| Seeing (data) is believing (data) | Variance and distributions |
| Catching Z's | Probabilities and z-scores |
| I love being rejected | Hypothesis testing |
| Things might be different now | Comparing two groups (t-tests) |
| More things might be different now | Comparing more than two groups (ANOVA) |
| χ<sup>2</sup> marks the spot | Comparing frequencies (χ<sup>2</sup> tests) |
| What goes up must go down, or up, or nowhere | Correlations |
| With great power comes maybe good effect size | Statistics in the real world |

# Learning objectives
For a list of specific learning objectives by lesson, visit this [page](https://benrushscience.github.io/learning-data-science/lecture-notes/learning-objectives.html).

# Active Script Learning via PonderStats
We created an R script that accompanies the website. The script is designed to be used by students to follow along with the lessons so
they can create similar data and figures as those featured on the website. The script is sectioned according to the website lessons and
states what will be learned in each section. The script is designed to be used by students who have no prior experience with R. The script
can be found [here](https://github.com/benrushscience/learning-data-science/blob/main/code/PonderStats_script.R).

# Figures

_Website photos?_

# Acknowledgements

We acknowledge contributions the feedback from Hedi Lauffer, Hailey Louw, Reed Nelson, Sungsik Kong, Mengze Tang, Evan Gorstein,
Xudong Tang, Yibo Kong, Nathan Kolbow, Yunju Ha, Tianyi Xu, and Rosa Aghdam.

# References