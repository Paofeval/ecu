---
layout: article
title: Making Changes
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

Welcome to OHI<i class="fa fa-search-plus"></i> {{ site.study_area }} (**{{ site.git_repo }}**)!

This website is a starting point for your assessment: a template, based on data from the global assessment. To use the Ocean Health Index (OHI) to better capture the local characteristics and priorities of {{ site.study_area }}, you can modify goal models, reevaluate local pressures and resilience, and incorporate the best locally available data, indicators, and cultural preferences. Information to get you started is below; please learn more about how to conduct Ocean Health Index<i class="fa fa-search-plus"></i> assessments at [ohi-science.org](http://ohi-science.org).  


## Purpose

This website was created to facilitate planning and communication for teams conducting OHI<i class="fa fa-search-plus"></i> assessments. All input data and models displayed here are stored at [github.com/{{ site.git_slug }}](https://github.com/{{ site.git_slug }}). GitHub is an online platform for development, sharing and versioning, and stores all information specific to OHI<i class="fa fa-search-plus"></i> {{ site.study_area }} within one place, called a *repository*. Using GitHub will make it possible for multiple members of your team to simulateneously and remotely modify data layers or goal models tracking changes made and by whom. Changes to data layers and goal models will be reflected in this website, [ohi-science.org/{{ site.git_repo }}](http://ohi-science.org/{{ site.git_repo }}), for your whole team to view.

While it is possible to edit data layers and goal models directly from [github.com/{{ site.git_slug }}](https://github.com/{{ site.git_slug }}), we recommend working locally on your own computer and syncing information back to [github.com/{{ site.git_slug }}](https://github.com/{{ site.git_slug }}). Working on their own computers, any member of your team can modify data layers using any software program (Excel, R, etc) and sync back to the online repository using the GitHub application for [Mac](https://mac.github.com) or [Windows](https://windows.github.com). Technical changes to goal models will require [R](http://cran.r-project.org), and we highly recommend also using [RStudio](http://www.rstudio.com). Please see the Ocean Health Index Toolbox Manual for details about syncing and using GitHub.

## Branches and Scenarios

You'll notice a "Branch/Scenario" drop-down list available throughout the site.

The **branch** is either "draft" if in the process of editing, or "published" if it scores are in a final state. The term branch technically refers to how the data files are stored in Github:

1. [**draft**](https://github.com/{{ site.git_slug }}/tree/draft) branch is for editing. This is the default branch and the main working area where existing scenario data files can be edited and new scenarios added.

1. [**published**](https://github.com/{{ site.git_slug }}/tree/published) branch is a vetted copy of the draft branch, not for direct editing.

An Ocean Health Index **scenario** contains all the files needed to calculate scores. The most likely form of a new scenario is for assessments updated annually. For example, the existing _subcountry2014_ scenario could be copied & pasted into a new folder called _subcountry2015_ and updated with the next year's worth of data. Scenarios can also be used to explore outcomes of policy alternatives, such as implementation of a proposed Marine Protected Area network or a fisheries regulation.

## App Data tab

The App will start on the **Data** tab by default.

The **Map** subtab shows the study area with subcountry regions. When you move your cursor over each region on the map, the region's name (with unique numerical identifier in parentheses) will appear in the top right corner of the map. A value will also appear, which is determined by the display options on the left (either Output Score or Input Layer).

You may view each region as a distribution on the **Histogram** subtab and numerically on the **Table** subtab.

The left panel has several drop-down menus that indicate the information being displayed. The primary distinction is whether information is prepared **Input Layers** or calculated **Output Scores**. Drop-down menus and descriptions will appear below, depending on previous selections and available options for the chosen score or layer.

## App Compare tab

The **Compare** tab allows you to visualize score differences between different branches, scenarios and/or commits (ie each online save). It proves most useful for error checking during the editing phase of development.
