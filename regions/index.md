---
layout: article
title: "Regions"
excerpt: "OHI regions for Ecuador"
share: false
ads: false
branch_scenario: published/subcountry2014
toc: true
---

<nav class="navbar navbar-default" role="navigation">   <div class="container-fluid">     <div class="navbar-header">       <a class="navbar-brand" href="#">Branch/Scenario</a>     </div>     <div class="collapse navbar-collapse" id="navbar-1">       <ul class="nav navbar-nav">         <li class="dropdown">           <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">published/subcountry2014<span class="caret"></span></a>           <ul class="dropdown-menu" role="menu">                       <li><a href="{{ site.baseurl }}/draft/subcountry2014/regions/">draft/subcountry2014</a></li>                     </ul>         </li>       </ul>     </div>   </div> </nav> 

<!--script src="https://embed.github.com/view/geojson/OHI-Science/ecu/published/subcountry2014/spatial/regions_gcs.geojson"></script-->
![](results/{{ page.branch_scenario }}/reports/figures/regions_600x400.png)

Template data for {{ site.study_area }} has the following subcountry regions, each with a unique ID:

{% capture regions_csv %}regions_{{ page.branch_scenario | replace:'/','_' }}{% endcapture %}
{% assign regions = site.data[regions_csv] %}

| ID               | NAME            |
|-----------------:|:----------------|
{% for rgn in regions %}| {{ rgn.region_id }} | {{ rgn.rgn_title }} |
{% endfor %}

The entire study area ({{ site.study_area }}) has a special region ID of 0.  IDs for subcountry regions were assigned geographically by increasing longitude. Exclusive economic zones (EEZs) were identified by [www.marineregions.org/](http://www.marineregions.org) and the largest subcountry regions were identified by [gadm.org](http://www.gadm.org). Region boundaries were extended offshore to divide the EEZ of {{ site.study_area }} offshore regions. It is possible to use different regions than the ones provided here: see [ohi-science.org/pages/create_regions.html](http://ohi-science.org/pages/create_regions.html) for more details.

