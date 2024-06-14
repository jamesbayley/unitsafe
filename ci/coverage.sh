# Combines Pytest with Coverage to ensure a thorough test suite. In the case 
# that a test fails, the entire process will exit to throw a CI failure.

poetry run coverage run -m pytest --quiet
PERCENTAGE=$(poetry run coverage report --format=total)
LIMIT=95

INFO='\033[0;34m'
ERROR='\033[0;31m'
DEFAULT='\033[0m'

if [ $PERCENTAGE -lt $LIMIT ]; then
    echo -e "\n${ERROR}Test coverage is below $LIMIT% ($PERCENTAGE%).${DEFAULT}"
    echo -e "${INFO}Info:${DEFAULT} Test all code paths to increase coverage."
    exit 1
fi