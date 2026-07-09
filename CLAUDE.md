# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Static HTML/CSS portfolio website deployed to AWS using S3 and CloudFront, provisioned with Terraform, and automated via GitHub Actions.

## Local Development

No build step. Open directly in a browser or serve locally:

```bash
python3 -m http.server 8000
# then visit http://localhost:8000
```

No linters, no test suite, no package manager.

## Architecture

Single-page site (`index.html`) plus two standalone pages (`privacy.html`, `terms.html`), one stylesheet (`style.css`), and an `images/` directory.

- **`index.html`** — All content: navbar, hero, about/services, courses, books, community stats, contact, footer
- **`style.css`** — Mobile-first responsive CSS (media query breakpoints: 900px, 768px, 600px); uses CSS Grid and Flexbox; keyframe animations for fade-ins
- Font Awesome 6.5.0 loaded from CDN

**Missing JS:** `index.html` references `goToSection()` and `toggleMenu()` in `onclick` attributes, but no JavaScript file exists. The hamburger mobile menu and smooth-scroll CTAs are non-functional as a result.

 Pure HTML5 and CSS3. No JavaScript. No build step. No framework.

## DMI Ownership Requirement

Per the README, students must edit the footer in `index.html` to prove deployment ownership:

```html
<!-- Add below the existing footer credit line -->
<p><strong>Deployed by:</strong> DMI Cohort X | Your Name | Group X | Week 1 | DD-MM-YYYY</p>
```

## Commands

terraform init
terraform plan
terraform apply

## Conventions

 - All infrastructure changes go through Terraform — never modify AWS resources manually
 - No JavaScript in this project
 - CSS uses mobile-first approach with breakpoints at 900px, 768px, and 600px

 ## Safety

 Never put secrets in this file. No API keys, passwords, or AWS credentials.