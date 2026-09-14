---
title: Publications
type: landing

sections:
  - block: markdown
    content:
      title: Publications
      text: >
        For the complete, continuously updated list, see [Sabine Taschner-Mandl's ORCID profile](https://orcid.org/0000-0002-1439-5301).

  - block: collection
    id: highlighted
    content:
      title: Highlighted Publications
      filters:
        folders:
          - publications
        featured_only: true
      count: 200
      sort_by: Date
      sort_ascending: false
    design:
      view: citation
      columns: '1'

  - block: collection
    id: main-contributions
    content:
      title: Main Contributions
      subtitle: First or last authorship by a group member
      filters:
        folders:
          - publications
        tag: main-contribution
      count: 200
      sort_by: Date
      sort_ascending: false
    design:
      view: citation
      columns: '1'

  - block: collection
    id: other-contributions
    content:
      title: Other Contributions
      subtitle: Collaborative and consortium publications
      filters:
        folders:
          - publications
        tag: other-contribution
      count: 200
      sort_by: Date
      sort_ascending: false
    design:
      view: citation
      columns: '1'
---
