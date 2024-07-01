cat >README.md <<Endofmessage

# CGDS Repository Discovery
Greetings! This repositiory contains an automatically updated listing (in the form or this README) and
logical organization of all repositiories owned/mainteined by CGDS. You can discovery more information
on what's being worked on within the organization through a quick review of this document or navigate
to a specific section if you know what type of tool, software, analysis, workflow, etc. you're looking
for in specific.

[![Generation Status](https://github.com/uab-cgds-worthey/CGDS-Repo-Discovery/actions/workflows/organize-readme.yml/badge.svg)](https://github.com/uab-cgds-worthey/CGDS-Repo-Discovery/actions/workflows/organize-readme.yml)

## Software Development
$(gh repo list --limit 10000 uab-cgds-worthey --topic software --json description,name,url,repositoryTopics --jq 'sort_by(.name) | .[] | .repositoryTopics = [.repositoryTopics[]?.name] | .repositoryTopics = (.repositoryTopics | join(", ")) | "  - [\(.name)](\(.url)) - \(.description) -  _Repo Topics_: \(.repositoryTopics)"')

## Project-based Analysis

### Cystic Fibrosis (CF)
$(gh repo list --limit 10000 uab-cgds-worthey --topic cystic-fibrosis --json description,name,url,repositoryTopics --jq 'sort_by(.name) | .[] | .repositoryTopics = [.repositoryTopics[]?.name] | .repositoryTopics = (.repositoryTopics | join(", ")) | "  - [\(.name)](\(.url)) - \(.description) -  _Repo Topics_: \(.repositoryTopics)"')

### Myalgic Encephalomyelitis/Chronic Fatigue Syndrome (ME/CFS)
$(gh repo list --limit 10000 uab-cgds-worthey --topic mecfs --json description,name,url,repositoryTopics --jq 'sort_by(.name) | .[] | .repositoryTopics = [.repositoryTopics[]?.name] | .repositoryTopics = (.repositoryTopics | join(", ")) | "  - [\(.name)](\(.url)) - \(.description) -  _Repo Topics_: \(.repositoryTopics)"')

### Neurofibromatosis type 1 (NF1)
$(gh repo list --limit 10000 uab-cgds-worthey --topic nf1 --json description,name,url,repositoryTopics --jq 'sort_by(.name) | .[] | .repositoryTopics = [.repositoryTopics[]?.name] | .repositoryTopics = (.repositoryTopics | join(", ")) | "  - [\(.name)](\(.url)) - \(.description) -  _Repo Topics_: \(.repositoryTopics)"')

### Pediatric Thyroid Cancer (PTC)
$(gh repo list --limit 10000 uab-cgds-worthey --topic ptc --json description,name,url,repositoryTopics --jq 'sort_by(.name) | .[] | .repositoryTopics = [.repositoryTopics[]?.name] | .repositoryTopics = (.repositoryTopics | join(", ")) | "  - [\(.name)](\(.url)) - \(.description) -  _Repo Topics_: \(.repositoryTopics)"')

### Placental Vascular Pathology (PVP)
$(gh repo list --limit 10000 uab-cgds-worthey --topic pvp --json description,name,url,repositoryTopics --jq 'sort_by(.name) | .[] | .repositoryTopics = [.repositoryTopics[]?.name] | .repositoryTopics = (.repositoryTopics | join(", ")) | "  - [\(.name)](\(.url)) - \(.description) -  _Repo Topics_: \(.repositoryTopics)"')

### Pulmonary Arterial Hypertension (PAH)
$(gh repo list --limit 10000 uab-cgds-worthey --topic pah --json description,name,url,repositoryTopics --jq 'sort_by(.name) | .[] | .repositoryTopics = [.repositoryTopics[]?.name] | .repositoryTopics = (.repositoryTopics | join(", ")) | "  - [\(.name)](\(.url)) - \(.description) -  _Repo Topics_: \(.repositoryTopics)"')

### Undiagnosed Diseases Network (UDN)
$(gh repo list --limit 10000 uab-cgds-worthey --topic udn --json description,name,url,repositoryTopics --jq 'sort_by(.name) | .[] | .repositoryTopics = [.repositoryTopics[]?.name] | .repositoryTopics = (.repositoryTopics | join(", ")) | "  - [\(.name)](\(.url)) - \(.description) -  _Repo Topics_: \(.repositoryTopics)"')

### Prader-Willi Syndrome
$(gh repo list --limit 10000 uab-cgds-worthey --topic pws --json description,name,url,repositoryTopics --jq 'sort_by(.name) | .[] | .repositoryTopics = [.repositoryTopics[]?.name] | .repositoryTopics = (.repositoryTopics | join(", ")) | "  - [\(.name)](\(.url)) - \(.description) -  _Repo Topics_: \(.repositoryTopics)"')

## DevOps
$(gh repo list --limit 10000 uab-cgds-worthey --topic devops --json description,name,url,repositoryTopics --jq 'sort_by(.name) | .[] | .repositoryTopics = [.repositoryTopics[]?.name] | .repositoryTopics = (.repositoryTopics | join(", ")) | "  - [\(.name)](\(.url)) - \(.description) -  _Repo Topics_: \(.repositoryTopics)"')

## SciOps
$(gh repo list --limit 10000 uab-cgds-worthey --topic sciops --json description,name,url,repositoryTopics --jq 'sort_by(.name) | .[] | .repositoryTopics = [.repositoryTopics[]?.name] | .repositoryTopics = (.repositoryTopics | join(", ")) | "  - [\(.name)](\(.url)) - \(.description) -  _Repo Topics_: \(.repositoryTopics)"')

### Pipelines
$(gh repo list --limit 10000 uab-cgds-worthey --topic pipeline --json description,name,url,repositoryTopics --jq 'sort_by(.name) | .[] | .repositoryTopics = [.repositoryTopics[]?.name] | .repositoryTopics = (.repositoryTopics | join(", ")) | "  - [\(.name)](\(.url)) - \(.description) -  _Repo Topics_: \(.repositoryTopics)"')

### Support
$(gh repo list --limit 10000 uab-cgds-worthey --topic support --json description,name,url,repositoryTopics --jq 'sort_by(.name) | .[] | .repositoryTopics = [.repositoryTopics[]?.name] | .repositoryTopics = (.repositoryTopics | join(", ")) | "  - [\(.name)](\(.url)) - \(.description) -  _Repo Topics_: \(.repositoryTopics)"')

### Workflow Management
$(gh repo list --limit 10000 uab-cgds-worthey --topic workflow --json description,name,url,repositoryTopics --jq 'sort_by(.name) | .[] | .repositoryTopics = [.repositoryTopics[]?.name] | .repositoryTopics = (.repositoryTopics | join(", ")) | "  - [\(.name)](\(.url)) - \(.description) -  _Repo Topics_: \(.repositoryTopics)"')

## Miscellaneous
$(gh repo list --limit 10000 uab-cgds-worthey --json description,name,url,repositoryTopics --jq '["support","pipeline", "software", "devops", "sciops", "workflow", "cystic-fibrosis", "mecfs", "nf1", "ptc", "pvp", "pah", "udn", "pws"] as $blacklist | sort_by(.name) | .[] | .repositoryTopics = [.repositoryTopics[]?.name] | (.repositoryTopics | length) as $origlen | select((.repositoryTopics - $blacklist | length) == $origlen) | .repositoryTopics = (.repositoryTopics | join(", ")) | "  - [\(.name)](\(.url)) - \(.description) -  _Repo Topics_: \(.repositoryTopics)"')

Endofmessage
