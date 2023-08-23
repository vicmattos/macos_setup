#!/usr/bin/env zsh


echo "\n<<< Starting Colima Setup >>>\n"

if ! exists limactl; then
  echo "limactl required to configure colima"
else
  echo "Running limactl to configure environment"
  limactl start
  colima start
fi
