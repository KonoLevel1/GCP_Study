#!/bin/sh
RAILS_PORT=3000
if [ -n "$PORT" ]; then
  RAILS_PORT=$PORT
fi

# migration


# Remove a potentially pre-existing server.pid for Rails.
rm -f tmp/pids/server.pid

bin/rails s -p $RAILS_PORT -b 0.0.0.0