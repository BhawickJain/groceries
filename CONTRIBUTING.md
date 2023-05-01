## clone project

This project has the `api` and `frontend` repositories as `git submodules` for easier setup and development. Use the following command to clone this repo and each of the services.

```bash
$ git clone --recurse-submodules git@github.com:BhawickJain/groceries.git
```

If the `git submodule` command is new, the following are some common commands that will be useful whilst contributing.

__update submodules__
You can go into each individual repo and merge new commits, however you can also use the `git submodule` command to do this. 
```bash
$ git submodule update --remote
```
The command will checkout the `default` branch of the submodule, or the one defined in the `.gitmodules` file, and merge new commits.

__specify a branch in a submodule__
Specifying a branch other than `main` could lead a new contributor to clone a stale version of a service. The only scenario where it is worth specifying is if the service of interest maintains a `stable` branch. If so the following can be set, if for example the `api` service maintains a `stable` branch:
```bash
$ git config -f .gitmodules submodule.api.branch stable
```
Running this command will update the `.gitmodule` which means the change, if committed, will affect all developers who clone or merge your changes. In general, if you need to change the branch of a `submodule`, `cd` and `checkout` is the easiest most familiar option and won't affect anyone else.

