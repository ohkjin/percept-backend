#!/bin/bash
shopt -s globstar

# if [ -n "$1" ]; then
#   kind="$1"
# else
#   kind="dev"
# fi

# db=percept-"$kind"


# for f in migrations/**/down.sql; do
#   psql -f "$f" "$db"
# done

db=percept_db  # Updated to match the dbname in config.js


# For Docker use
# ... inside the loops ...
for f in migrations/**/down.sql; do
  psql -U postgres -f "$f" "$db"  # Added -U postgres
done