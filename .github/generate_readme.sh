cat >README.md <<Endofmessage

# CGDS Repository Discovery
Greetings! This repositiory contains an automatically updated listing (in the form or this README) and
logical organization of all repositiories owned/mainteined by CGDS. You can discovery more information
on what's being worked on within the organization through a quick review of this document or navigate
to a specific section if you know what type of tool, software, analysis, workflow, etc. you're looking
for in specific. You can learn more about how this repo was setup and how it's automagically populated
by checking out the [setup instructions](setup.md). The setup instructions also contain details on
customizing the setup of this README and how repos are queried and listed.

[![Generation Status](https://github.com/uab-cgds-worthey/CGDS-Repo-Discovery/actions/workflows/organize-readme.yml/badge.svg)](https://github.com/uab-cgds-worthey/CGDS-Repo-Discovery/actions/workflows/organize-readme.yml)

## Software Development
$(gh repo list --limit 10000 uab-cgds-worthey --topic software --json description,name,url,repositoryTopics --jq 'sort_by(.name) | .[] | .repositoryTopics = [.repositoryTopics[]?.name] | .repositoryTopics = (.repositoryTopics | join(", ")) | "  - [\(.name)](\(.url)) - \(.description) -  _Repo Topics_: \(.repositoryTopics)"')

## DevOps
$(gh repo list --limit 10000 uab-cgds-worthey --topic devops --json description,name,url,repositoryTopics --jq 'sort_by(.name) | .[] | .repositoryTopics = [.repositoryTopics[]?.name] | .repositoryTopics = (.repositoryTopics | join(", ")) | "  - [\(.name)](\(.url)) - \(.description) -  _Repo Topics_: \(.repositoryTopics)"')

## SciOps
$(gh repo list --limit 10000 uab-cgds-worthey --topic sciops --json description,name,url,repositoryTopics --jq 'sort_by(.name) | .[] | .repositoryTopics = [.repositoryTopics[]?.name] | .repositoryTopics = (.repositoryTopics | join(", ")) | "  - [\(.name)](\(.url)) - \(.description) -  _Repo Topics_: \(.repositoryTopics)"')

### Pipelines
$(gh repo list --limit 10000 uab-cgds-worthey --topic pipeline --json description,name,url,repositoryTopics --jq 'sort_by(.name) | .[] | .repositoryTopics = [.repositoryTopics[]?.name] | .repositoryTopics = (.repositoryTopics | join(", ")) | "  - [\(.name)](\(.url)) - \(.description) -  _Repo Topics_: \(.repositoryTopics)"')

### Support
$(gh repo list --limit 10000 uab-cgds-worthey --topic support --json description,name,url,repositoryTopics --jq 'sort_by(.name) | .[] | .repositoryTopics = [.repositoryTopics[]?.name] | .repositoryTopics = (.repositoryTopics | join(", ")) | "  - [\(.name)](\(.url)) - \(.description) -  _Repo Topics_: \(.repositoryTopics)"')

## Miscellaneous
$(gh repo list --limit 10000 uab-cgds-worthey --json description,name,url,repositoryTopics --jq '["support","pipeline", "software", "devops", "sciops", "workflow", "cystic-fibrosis", "mecfs", "nf1", "ptc", "pvp", "pah", "udn", "pws"] as $blacklist | sort_by(.name) | .[] | .repositoryTopics = [.repositoryTopics[]?.name] | (.repositoryTopics | length) as $origlen | select((.repositoryTopics - $blacklist | length) == $origlen) | .repositoryTopics = (.repositoryTopics | join(", ")) | "  - [\(.name)](\(.url)) - \(.description) -  _Repo Topics_: \(.repositoryTopics)"')

Endofmessage
