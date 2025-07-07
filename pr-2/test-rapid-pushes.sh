#!/bin/bash

# Test script to simulate multiple rapid-fire pushes
# This tests the comment lifecycle management under stress

set -e

echo "🧪 Testing comment lifecycle with rapid-fire pushes..."

# Create temporary test files to trigger different workflow runs
for i in {1..5}; do
    echo "Creating test change $i"
    
    # Create a small change
    echo "<!-- Test change $i at $(date) -->" >> _posts/2025-04-19-website.md
    
    # Commit and push immediately
    git add _posts/2025-04-19-website.md
    git commit -m "Test rapid push $i - $(date +%s)"
    
    # Small delay to simulate rapid but not simultaneous pushes
    sleep 2
done

echo "✅ Created 5 rapid test commits"
echo "🚀 Pushing all changes to trigger multiple workflow runs..."

# Push all commits at once to trigger rapid workflow execution
git push origin fix/baseurl-compatibility

echo "📊 Monitor the workflows and comments to verify only 1 unarchived comment remains"
echo "You can check the GitHub Actions and PR comments to see the results"