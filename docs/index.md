---
layout: article
title: Editing OHI for Ecuador
excerpt: documentation on getting started
tags: []
image: 
  feature: null
  teaser: null
  thumb: null
toc: true
share: false
published: true
---

## Overview

<i class="icon-zoom-in"></i> Welcome to OHI+ {{ site.study_area }} (**{{ site.git_repo }}**)!

This website is a starting point for your assessment: it is a template, based on data from the global assessment. To use the Ocean Health Index (OHI) to better capture the local characteristics and priorities of {{ site.study_area }}, you can modify goal models, reevaluate local pressures and resilience, and incorporate the best locally available data, indicators, and cultural preferences. Information to get you started is below; please learn more about how to conduct Ocean Health Index+ assessments at [ohi-science.org](http://ohi-science.org).  


## Purpose

This website was created to facilitate planning and communication for teams conducting OHI+ assessments. All input data and models displayed here are stored at [github.com/{{ site.git_slug }}](https://github.com/{{ site.git_slug }}). GitHub is an online platform for development, sharing and versioning, and stores all information specific to OHI+ {{ site.study_area }} within one place, called a *repository*. Using GitHub will make it possible for multiple members of your team to simulateneously and remotely modify data layers or goal models tracking changes made and by whom. Changes to data layers and goal models will be reflected in this website, [ohi-science.org/{{ site.git_repo }}](http://ohi-science.org/{{ site.git_repo }}), for your whole team to view.

While it is possible to edit data layers and goal models directly from [github.com/{{ site.git_slug }}](https://github.com/{{ site.git_slug }}), we recommend working locally on your own computer and syncing information back to [github.com/{{ site.git_slug }}](https://github.com/{{ site.git_slug }}). Working on their own computers, any member of your team can modify data layers using any software program (Excel, R, etc) and sync back to the online repository using the GitHub application for [Mac](https://mac.github.com/) or [Windows]. Technical changes to goal models will require [R](http://cran.r-project.org/), and we highly recommend also using [RStudio](http://www.rstudio.com/). Please see the Ocean Health Index Toolbox Manual for details about syncing and using GitHub.

** Branches and scenarios **  

GitHub stores all data files and scripts for your OHI+ assessment in a repository ('repo'), which is essentially a folder. Different copies or complements to these folders, called *branches* can also exist, which aid with versioning and drafting. This website displays information for two branches, which are currently identical:

1. [**draft**](https://github.com/{{ site.git_slug }}/tree/draft) branch is for editing. This is the default branch and the main working area where existing scenario data files can be edited and new scenarios added.

1. [**published**](https://github.com/{{ site.git_slug }}/tree/published) branch is a vetted copy of the draft branch, not for direct editing.

...scenarios