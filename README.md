# xi.docker-base
Repository for basic docker images for use in other projects

### Images
#### python-base
Basic docker image with the latest system & pip updates, sometimes bundled with a dependency manager, such as poetry

Tags are formed in a pattern: `python-{PYTHON_VERSION}-{PACKAGE_MANAGER}-{PACKAGE_MANAGER_VERSION}`, for example, `python-3.13-poetry-2.1.2` contains Python 3.13 and Poetry 2.1.2 with default configs (poetry is configured not to create virtual environments)

#### python-script
Basic docker image for simple scripts, with:[requirements.txt](python-script%2Frequirements.txt)
- Python 3.13
- Commonly used dependencies (described in `python-script/requirements.txt`)
- The working directory set to `/script`
- Buffering is disabled (`PYTHONUNBUFFERED=1`)
- Writing byte-code is disabled (`PYTHONDONTWRITEBYTECODE=1`)

### Contribution
1. Clone the project and run `pre_commit install` to setup basic linters
2. Make the changes
3. Test your images using docker compose
4. Submit a pull request & ask for review

Deployment will be done via CI/CD pipeline after merging changes into the main branch
