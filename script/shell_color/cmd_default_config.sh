#!/bin/bash

# keyword color pair, highlight keyword with specified color.
keyword_color_pair=(
# keyword                                                      color

# error
"[Ee][Rr][Rr][Oo][Rr]"                                         "red"

# not found
"[Nn][Oo][Tt]\s*[Ff][Oo][Uu][Nn][Dd]"                          "red"

# not exist
"[Nn][Oo][Tt]\s*[Ee][Xx][Ii][Ss][Tt]"                          "red"

# warning
"[Ww][Aa][Rr][Nn][Ii][Nn][Gg]"                                 "yellow"
)

exceptions=(
"help"
)
