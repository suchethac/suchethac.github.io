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
.links {
  margin-top: 0.1rem;
  margin-bottom: 0.5rem;
}

.links .btn,
.links .btn.btn-sm.z-depth-0 {
  display: inline-block !important;
  margin: 0 2px !important;
  font-size: 0.8rem !important;
  border: 1px solid #000000 !important;
  border-radius: 3px !important;
  padding: 1px 6px !important;
  background-color: white !important;
  color: #000000 !important;
  text-decoration: none !important;
  transition: all 0.2s ease !important;
}

.links .btn:hover,
.links .btn.btn-sm.z-depth-0:hover {
  color: var(--global-theme-color) !important;
  border-color: var(--global-theme-color) !important;
  text-decoration: none !important;
  background-color: white !important;
}

.badge {
  border-radius: 3px !important;
  padding: 1px 6px !important;
  margin-bottom: 0.5rem !important;
}
</style>

<!-- Bibsearch Feature -->

<!-- {% include bib_search.liquid %} -->

**ORCiD**: [0000-0002-9217-1696](https://orcid.org/0000-0002-9217-1696).  **Google Scholar** [here](https://scholar.google.com/citations?user=r8HVLvEAAAAJ).
**NASA/ADS** list is [here](https://ui.adsabs.harvard.edu/search/filter_author_facet_hier_fq_author=AND&filter_author_facet_hier_fq_author=author_facet_hier%3A%220%2FCooray%2C%20S%22&fq=%7B!type%3Daqp%20v%3D%24fq_database%7D&fq=%7B!type%3Daqp%20v%3D%24fq_author%7D&fq_author=(author_facet_hier%3A%220%2FCooray%2C%20S%22)&fq_database=(database%3Aastronomy%20OR%20database%3Aphysics)&p_=0&q=%20author%3A%22cooray%2C%20suchetha%22&sort=date%20desc%2C%20bibcode%20desc).

<div class="Publications">

{% bibliography -f papers.bib %}

</div>
