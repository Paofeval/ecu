language="c" 

default_branch_scenario="published/subcountry2014"
study_area="Ecuador"

"before_install:"
curl -OL http://raw.github.com/craigcitro/r-travis/master/scripts/travis-tool.sh
curl -OL http://raw.github.com/OHI-Science/ohi-webapps/master/ohi-travis-functions.R
chmod 755 ./travis-tool.sh
./travis-tool.sh bootstrap

"install:"
./travis-tool.sh install_r zoo
./travis-tool.sh install_r psych
./travis-tool.sh install_r tidyr
./travis-tool.sh install_github ropensci/git2r
./travis-tool.sh install_github ohi-science/rCharts
./travis-tool.sh install_github ohi-science/ohicore@dev # @master or @2f7a3d7 to specify by commit (https://github.com/OHI-Science/ohicore/commits/master)
git config --global user.email "bbest@nceas.ucsb.edu"
git config --global user.name "Ben Best"

"script:"
# execute as a sequence, so if any fail, none of the subsequent commands are executed
- Rscript ohi-travis-functions.R calculate_scores && \"
  Rscript ohi-travis-functions.R create_results && \"
  Rscript ohi-travis-functions.R push_branch draft && \"
  Rscript ohi-travis-functions.R push_branch published && \"
  Rscript ohi-travis-functions.R create_pages && \"
  Rscript ohi-travis-functions.R push_branch gh-pages"

"after_failure:"
./travis-tool.sh dump_logs"

