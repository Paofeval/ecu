---
layout: article
title: "Regions"
excerpt: "OHI regions for Ecuador"
share: false
ads: false
branch_scenario: published/subcountry2014
toc: false
---

Regions are the key spatial units of the Ocean Health Index. Data are required for every region since scores are calculated for each region individually and combined (with an offshore area-weighted average) to produce scores for the entire study area: {{ site.study_area }}. The regions below can be modified. These are template regions that were identified as the largest subcountry division within {{ site.study_area }}.

<nav class="navbar navbar-default" role="navigation">   <div class="container-fluid">     <div class="navbar-header">       <a class="navbar-brand" href="#">Branch/Scenario</a>     </div>     <div class="collapse navbar-collapse" id="navbar-1">       <ul class="nav navbar-nav">         <li class="dropdown">           <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">published/subcountry2014<span class="caret"></span></a>           <ul class="dropdown-menu" role="menu">                       <li><a href="{{ site.baseurl }}/draft/subcountry2014/regions/">draft/subcountry2014</a></li>                     </ul>         </li>       </ul>     </div>   </div> </nav> 

<!--script src="https://embed.github.com/view/geojson/OHI-Science/ecu/published/subcountry2014/spatial/regions_gcs.geojson"></script-->
![]({{ site.baseurl }}/results/{{ page.branch_scenario }}/figures/regions_600x400.png)

OHI {{ site.study_area }} has the following subcountry regions, each with a unique identifier (ID):

{% capture regions_csv %}regions_{{ page.branch_scenario | replace:'/','_' }}{% endcapture %}
{% assign regions = site.data[regions_csv] %}

| ID               | NAME            |
|-----------------:|:----------------|
{% for rgn in regions %}| {{ rgn.region_id }} | {{ rgn.rgn_title }} |
{% endfor %}

IDs for subcountry regions were assigned geographically by increasing longitude. The entire study area ({{ site.study_area }}) has a special region ID of 0.  

Exclusive economic zones (EEZs) were identified by [www.marineregions.org/](http://www.marineregions.org) and the largest subcountry regions were identified by [gadm.org](http://www.gadm.org). Region boundaries were extended offshore to divide the EEZ of {{ site.study_area }} offshore regions. It is possible to use different regions than the ones provided here: see [ohi-science.org/pages/create_regions.html](http://ohi-science.org/pages/create_regions.html) for more details.

