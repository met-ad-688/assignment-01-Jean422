FILES=(
    "/home/ubuntu/assignment-01-Jean422/question_tags.csv"
    "/home/ubuntu/assignment-01-Jean422/questions.csv"
)
for file in "${FILES[@]}"; do
    if [[ -f "$file" ]]; then
        # 统计包含 "python"（大小写不敏感）的行数
        file_count=$(grep -i "python" "$file" | wc -l)
        echo "File: $file -> $file_count lines containing 'python'"
        count=$((count + file_count))
    else
        echo "Warning: File $file not found!"
    fi
done
echo "Total lines containing 'python': $count"