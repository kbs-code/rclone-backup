#!/usr/bin/env bash

set -Eeuo pipefail

destination="rclone-drive:example"

while IFS= read -r source || [[ -n "$source" ]]; do
  last_folder=$(basename "$source")  
  full_destination="${destination}/${last_folder}"
  rclone copy "$source" "$full_destination" --filter-from /foo/filter-example.txt -v >> /foo/log-example.log 2>&1
done < /foo/sources-example.txt