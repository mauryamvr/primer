#!/bin/bash
set -e

# Path to Spinner CSS in your repo
BASE_SPINNER_PATH="packages/react/src/Spinner/Spinner.module.css"

case "$1" in
  base)
    echo "Running base tests..."
    # Check that the Spinner CSS file exists
    if [ -f "$BASE_SPINNER_PATH" ]; then
      echo "Base test passed: Spinner file exists."
    else
      echo "Base test failed: Spinner file missing!"
      exit 1
    fi
    ;;
  new)
    echo "Running new tests..."
    # Check if Spinner animation fix is applied
    if grep -q "animation: rotate-keyframes" "$BASE_SPINNER_PATH"; then
      echo "New test passed: Spinner animation present."
    else
      echo "New test failed: Spinner animation missing."
      exit 1
    fi
    ;;
  *)
    echo "Usage: ./test.sh {base|new}"
    exit 1
    ;;
esac
