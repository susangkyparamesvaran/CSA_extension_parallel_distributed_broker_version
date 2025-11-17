#!/bin/bash

echo "Running TestAlive 100 times..."
echo

for i in {1..100}; do
    echo "== Run $i =="
    go test ./tests -v -run TestAlive -count=1
    result=$?

    if [ $result -ne 0 ]; then
        echo
        echo "❌ Test failed on run $i"
        exit 1
    fi

    echo "✔️ Run $i passed"
    echo
done

echo "===================================="
echo "🎉 All 100 runs passed successfully!"
echo "===================================="
