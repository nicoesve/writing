import yaml
import dateparser

# Prompt for details
deadline = input("Enter deadline: ")
length = input("Enter length: ")
previous = input("Enter previous: ")
next_step = input("Enter next step: ")
budget = input("Enter budget: ")

# use dateparser to convert deadline to date object
# then, convert date object to string using isoformat()
deadline = dateparser.parse(deadline).isoformat()

# Prepare data
data = {
    'deadline': deadline,
    'length': length,
    'previous': previous,
    'next': next_step,
    'budget': budget
}

# Convert data to yaml
yaml_data = yaml.safe_dump(data, explicit_start=True, explicit_end=True)

# Write yaml data to markdown file
with open('issue_body.md', 'w') as f:
    f.write(yaml_data)

