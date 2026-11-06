# Installing Before You Build

The skills follow the open Agent Skills format: a folder with a `SKILL.md`. Pick the path that matches how you work.

## 1. Claude Code — as a plugin (recommended)

Inside Claude Code:

```
/plugin marketplace add ivnlap/before-you-build
/plugin install before-you-build@before-you-build
```

Then type `/byb-start` or just describe your idea — the skills trigger on their own.

## 2. Claude Code, Codex, Cursor and other agents — copy the folders

```bash
git clone https://github.com/ivnlap/before-you-build.git
# Claude Code, one project:
mkdir -p .claude/skills && cp -r before-you-build/skills/* .claude/skills/
# Claude Code, all projects:
mkdir -p ~/.claude/skills && cp -r before-you-build/skills/* ~/.claude/skills/
```

For other agents, copy `skills/*` into the folder your agent reads skills from (see its documentation). The skills write plain Markdown into a `validation/` folder in your project, so they work the same everywhere.

The [skills CLI](https://skills.sh) can also install them: `npx skills add ivnlap/before-you-build`.

## 3. Claude.ai (web, desktop, mobile) — no terminal

Requires a paid plan with code execution and file creation turned on.

1. Download `before-you-build-skills.zip` from the [latest release](https://github.com/ivnlap/before-you-build/releases/latest) and unzip it. You get one ZIP per skill.
2. In Claude, go to **Settings → Capabilities**, find **Skills** and choose **Upload skill**. Upload each skill ZIP (start with `byb-start`, `byb-assumptions`, `byb-test-plan` and `byb-decide`).
3. Turn the skills on.
4. **Keep your files in a Project.** Create a Claude Project for your idea. When a skill prints or creates `idea.md`, `assumptions.md` and the rest, save them and add them to the Project's files, so the next conversation picks up where you left off.

Official guide: [Using skills in Claude](https://support.claude.com/en/articles/12512180-using-skills-in-claude).

## 4. Any chat assistant — no skills support

Open the `SKILL.md` you need (for example [`skills/byb-start/SKILL.md`](../skills/byb-start/SKILL.md)), paste its content into the chat or into your assistant's custom instructions, and describe your idea. The method works without any tooling — the files are just Markdown.

## Updating

- Plugin: `/plugin marketplace update before-you-build`, then reinstall if prompted.
- Copied folders: `git pull` in your clone and copy again.
