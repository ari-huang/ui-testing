# README for the robot

Describe your robot here. E.g., what it does, what the requirements are, how to run it.

## Development guide
Set up:

```
1. 安裝 venv
    python3 -m venv venv

2. 加載 venv
    source ./venv/bin/activate

3. 安裝依賴套件
    python -m pip install -U pip setuptools
    pip install -r requirements.txt
```

Run the robot locally:

```
 python -m robot --report NONE --outputdir output --logtitle "Task log" tasks.robot
```


### Suggested directory structure

The directory structure given by the template:

```
├── devdata
├── keywords
│   └── keywords.robot
├── libraries
│   └── MyLibrary.py
├── resources
│   └── variables.py
├── conda.yaml
├── robot.yaml
└── tasks.robot
```

where

- `devdata`: A place for all data/material related to development, e.g., test data. Do not put any sensitive data here!
- `keywords`: Robot Framework keyword files.
- `libraries`: Python library code.
- `resources`: Define your resources in a centralized place. For example the robot variables can be defined in here. Do not put any sensitive data here!
- `conda.yaml`: Environment configuration file.
- `robot.yaml`: Robot configuration file.
- `tasks.robot`: Robot Framework task suite - high-level process definition.

In addition to these, you can create your own directories (e.g. `bin`, `tmp`). Add these directories to the `PATH` or `PYTHONPATH` section of `robot.yaml` if necessary.

Logs and artifacts are stored in `output` by default - see `robot.yaml` for configuring this.

Learn how to [handle variables and secrets](https://robocorp.com/docs/development-guide/variables-and-secrets/secret-management).

### Configuration

Give the task name and startup commands in `robot.yaml` with some additional configuration. See [Docs](https://robocorp.com/docs/setup/robot-structure#robot-configuration-file-robot-yaml) for more.

Put all the robot dependencies in `conda.yaml`. These are used for managing the execution environment.

### Additional documentation

See [Robocorp Docs](https://robocorp.com/docs/) for more documentation.
