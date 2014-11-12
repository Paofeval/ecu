---
layout: article
title: "Scores"
date: 2014-06-02T09:44:20-04:00
modified: 2014-08-27T14:56:44-04:00
excerpt: "OHI scores for whole study area and by region"
share: false
ads: false
branch: dev
scenario: ecu2014
toc: true
---

{% assign branch   = page.branch %}
{% assign scenario = page.scenario %}
{% capture url_figures %}https://raw.githubusercontent.com/{{ site.git_owner }}/{{ site.git_repo }}/{{ page.branch }}/{{ page.scenario }}/reports/figures{% endcapture %}


|Region|Score|
|:-----|----:|
|Heard and McDonald Islands|90.29|
|Ile Europa|89.48|
|Bassas da India|88.17|
|Howland Island and Baker Island|85.89|
|Juan de Nova Island|83.84|
|Glorioso Islands|83.79|
|Kerguelen Islands|82.84|
|Northern Saint-Martin|82.58|
|Nauru|82.18|
|Seychelles|81.93|


{% assign scores = site.data[branch][scenario].scores | where:"region_id", 0 | where:"dimension", "score" | sort:"goal" %}
{% assign index  = scores | where:"goal","Index" %}
## {{ site.study_area }}

![flower plot for {{ site.study_area }}]({{ url_figures }}/flower_GLOBAL.png)

| Goal  | Score |
|------:|:------|
| Index | {{ index.score }}
{% for row in scores %}
| {{ row.goal }} | {{ row.score }} |
{% endfor %}


{% for rgn in site.data[branch][scenario].layers.rgn_labels %}
{% assign rgn_scores = site.data[branch][scenario].scores | where:"region_id", rgn.rgn_id | where:"dimension", "score" | sort:"goal" %}
{% assign rgn_index  = rgn_scores | where:"goal","Index" %}
## {{ rgn.label }}

![flower plot for {{ rgn.label }}]({{ url_figures }}/flower_{{ rgn.label | replace:' ','_'  }}.png)

| goal | score |
|-----:|:------|
| Index | {{ index.score }}
{% for row in rgn_scores %}
{% if row.region_id != 0 and row.goal != 'Index' %}
| {{ row.goal }} | {{ row.score }} |
{% endif %}
{% endfor %}

{% endfor %}
