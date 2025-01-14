---
layout: page
permalink: /publications/
title: Publications
description: 
nav: true
nav_order: 3
---

<!-- _pages/publications.md -->

<style>
.pub-buttons {
    margin: 5px 0;
}

.pub-button {
    display: inline-block;
    padding: 1px 6px;
    margin: 0 2px;
    font-size: 0.75em;
    border: 1px solid #000000;
    border-radius: 3px;
    color: #000000;
    background-color: white;
    text-decoration: none;
    transition: all 0.2s ease;
}

.pub-button:hover {
    color: var(--global-theme-color);
    border-color: var(--global-theme-color);
    background-color: white;
    text-decoration: none;
}
</style>

<!-- Bibsearch Feature -->

<!-- {% include bib_search.liquid %} -->

**ORCiD**: [0000-0002-9217-1696](https://orcid.org/0000-0002-9217-1696).  **Google Scholar** [here](https://scholar.google.com/citations?user=r8HVLvEAAAAJ).
**NASA/ADS** list is [here](https://ui.adsabs.harvard.edu/search/filter_author_facet_hier_fq_author=AND&filter_author_facet_hier_fq_author=author_facet_hier%3A%220%2FCooray%2C%20S%22&fq=%7B!type%3Daqp%20v%3D%24fq_database%7D&fq=%7B!type%3Daqp%20v%3D%24fq_author%7D&fq_author=(author_facet_hier%3A%220%2FCooray%2C%20S%22)&fq_database=(database%3Aastronomy%20OR%20database%3Aphysics)&p_=0&q=%20author%3A%22cooray%2C%20suchetha%22&sort=date%20desc%2C%20bibcode%20desc).


<div class="Publications">

{% bibliography -f papers.bib %}

</div>
