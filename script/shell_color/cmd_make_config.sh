#!/bin/bash

source cmd_default_config.sh

# keyword color pair, highlight keyword with specified color.
keyword_color_pair=(
# keyword                                            color
${keyword_color_pair[*]}
)

exceptions=(
${exceptions[*]}
"menuconfig"
"xconfig"
"gconfig"
)
