---
layout: article
title: "Scores"
date: 2014-06-02T09:44:20-04:00
modified: 2014-08-27T14:56:44-04:00
excerpt: "OHI scores for whole study area and by region"
share: false
ads: false
branch: dev
scenario: subcountry2014
---

# {{ site.country }}

{% for rgn in site.data._data.dev.subcountry2014.layers.rgn_labels.csv %}

# {{ rgn.label }}

{% endfor %}
