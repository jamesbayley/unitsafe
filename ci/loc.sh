# Counts the lines of source code in the unitsafe source directory.
# Whilst line count is not a perfect metric for complexity, it can be a 
# useful heuristic to suggest that a codebase has become too complex given 
# the scoped software requirements. This script is run during CI to ensure 
# that the source code remains both succinct and focussed.

lines_of_code=$(cloc ./unitsafe/ --csv --quiet | grep SUM | awk -F, '{print $5}')
echo "$lines_of_code lines of code in unitsafe source directory."

RED='\033[0;31m'
DEFAULT='\033[0m'
loc_limit=750

if [ $lines_of_code -gt $loc_limit ]; then
  echo -e "${RED}Line count exceeded imposed limit: $loc_limit lines.${DEFAULT}"
  exit 1
fi