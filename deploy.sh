#!/bin/bash
# 复制问个锤子 skill 文件到 upload 目录

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
UPLOAD_DIR="$SCRIPT_DIR/upload"

# 需要复制的文件
FILES=(
    "skill.md"
    "heartbeat.md"
    "rules.md"
    "skill.json"
)

echo "复制文件到 upload 目录..."

for file in "${FILES[@]}"; do
    if [ -f "$SCRIPT_DIR/$file" ]; then
        cp "$SCRIPT_DIR/$file" "$UPLOAD_DIR/$file"
        echo "  ✓ $file"
    else
        echo "  ✗ $file (不存在)"
    fi
done

echo "完成！"
