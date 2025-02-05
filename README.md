# ag1
Unofficial learning material for BI-AG1 course on FIT CTU
### Running locally to see changes before creating pull request

1. git pull your fork to your machine
2. Create a new branch
3. Make a change
4. Create a python virtual environment and use it to install mkdocs
```bash
python3 -m venv venv # create a python virtual environment
source venv/bin/activate # activate it
pip install mkdocs-material
```
5. Start application
```
cd {your fork folder containing mkdocs.yml file}
mkdocs serve
```
6. Go to your web browser and paste http://127.0.0.1:8000/
7. You do not need to restart mkdocs for changes to be made, those will be refreshed automatically


---

### Creating a Pull request

You can also fix the issue yourself with a pull request

1. Create a fork of the repository
2. Fix the issue in your fork
    - please try to prefix all your commits with `fix: (commit message)` 
4. Request merge to `main` branch of `truepeak78/ag1`
