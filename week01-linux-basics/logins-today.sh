#!/bin/bash
# Modern login history using wtmpdb

echo "🧾 Users who logged in today:"
wtmpdb last -s "$(date '+%Y-%m-%d')"
