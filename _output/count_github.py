import pandas as pd

Files = [
    "/home/ubuntu/assignment-01-Jean422/question_tags.csv",
    "/home/ubuntu/assignment-01-Jean422/questions.csv"
]

count = 0

for file in Files:
    df = pd.read_csv(file, nrows=1000)  
    count += df.apply(
        lambda row: row.astype(str).str.contains("GitHub", case=False).any(), axis=1
    ).sum()

print(f"Total lines containing 'GitHub': {count}")