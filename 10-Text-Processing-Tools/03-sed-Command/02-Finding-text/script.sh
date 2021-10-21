#!/bin/bash

# The p command prints out matching lines.

# The below example uses the regex /Method/ to find
# text containing the case-sensitive text Method, 
# followed by the p command to print matching lines.

# The -n option is being used here to disable the 
# input text’s automatic output so that only matching 
# lines are output.

sed -n '/Method/p' ../sample.txt
