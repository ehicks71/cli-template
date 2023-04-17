#!/bin/bash

# Set the path to the refresh-database script
# @TODO Update this with the tool script
REFRESH_DB_SCRIPT="./"

# Set the name of the alias
# @TODO Update this with the tool script
ALIAS_NAME=""

# Get the user's shell profile
SHELL_PROFILE="${HOME}/.bashrc"
if [[ "${SHELL}" == *zsh ]]; then
  SHELL_PROFILE="${HOME}/.zshrc"
fi

# Check if the alias already exists
if grep -q "${ALIAS_NAME}" "${SHELL_PROFILE}"; then
  echo "The '${ALIAS_NAME}' alias already exists in '${SHELL_PROFILE}'."
else
  # Add the alias to the shell profile
  echo "alias ${ALIAS_NAME}='${REFRESH_DB_SCRIPT}'" >> "${SHELL_PROFILE}"
  echo "The '${ALIAS_NAME}' alias has been added to '${SHELL_PROFILE}'."
fi
