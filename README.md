# Ocean Health Index for Ecuador (ECU) - Github Pages (gh-pages)

[![](https://travis-ci.org/OHI-Science/<%=key%>/svg?branch=gh-pages)](https://travis-ci.org/OHI-Science/<%=key%>?branch=gh-pages)

A fail could simply mean broken links were found.

The flag above provides links to the latest build results. To test this site locally, install [jekyll](http://jekyllrb.com/docs/installation/) and run:

```bash
jekyll serve --baseurl ''
```

To test links, install html-proofer (`sudo gem install html-proofer`) and run:

```bash
jekyll serve --baseurl ''
# Ctrl-C to stop
htmlproof ./_site
```
