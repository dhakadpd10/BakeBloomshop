#!/bin/bash

echo "=== Bake Bloom Team Photo Check ==="
echo ""

PHOTO_PATH="/home/z/my-project/public/images/prashant-dhakad.png"

if [ -f "$PHOTO_PATH" ]; then
    echo "✅ Photo file exists: $PHOTO_PATH"
    echo "📊 File size: $(du -h "$PHOTO_PATH" | cut -f1)"
    echo "📅 Last modified: $(stat -c %y "$PHOTO_PATH")"
    echo ""
    echo "🌐 Your photo will appear at:"
    echo "   - Team page: http://localhost:3000/team"
    echo "   - Homepage: http://localhost:3000/"
    echo ""
    echo "💡 If this is not your actual photo, please replace:"
    echo "   $PHOTO_PATH"
    echo "   with your actual photo file."
else
    echo "❌ Photo file not found: $PHOTO_PATH"
    echo ""
    echo "📝 To add your photo:"
    echo "   1. Save your photo as 'prashant-dhakad.png'"
    echo "   2. Place it in: /home/z/my-project/public/images/"
    echo ""
fi

echo "==============================="