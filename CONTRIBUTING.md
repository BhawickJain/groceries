# Contributing

<hr>
<p align='center'>
🚧 The services under the project are currently private, but you can raise issues against this repo so I can triage them. 🚧
</p>
<hr>

## Local Development (with git submodules)

This project has the `api` and `frontend` repositories as `git submodules` for easier setup and development. Use the following command to clone this repo and each of the services.

You will notice that both submodules have an `@ <commit-SHA>` which is the `commit-SHA` that is set as the `HEAD` of the default branch (i.e. the latest commit).

If the `git submodule` command is new to you, the following are some common commands that will be useful whilst contributing.


### Clone project
```bash
$ git clone --recurse-submodules git@github.com:BhawickJain/groceries.git
```

### Update submodules
You can go into each individual repo and merge new commits, however you can also use the `git submodule` command to do this. 
```bash
$ git submodule update --init --recursive
```
The command will checkout the `default` branch of the submodule, or the one defined in the `.gitmodules` file, and merge new commits.

### Specify a branch in a submodule
Specifying a branch other than `main` could lead a new contributor to clone a stale version of a service. The only scenario where it is worth specifying is if the service of interest maintains a `stable` branch. If so the following can be set, if for example the `api` service maintains a `stable` branch:
```bash
$ git config -f .gitmodules submodule.api.branch stable
```
Running this command will update the `.gitmodule` which means the change, if committed, will affect all developers who clone or merge your changes. In general, if you need to change the branch of a `submodule`, `cd` and `checkout` is the easiest most familiar option and won't affect anyone else.

For more information refer to the guides in [github docs](https://github.blog/2016-02-01-working-with-submodules/) and official [git docs](https://git-scm.com/book/en/v2/Git-Tools-Submodules).

## Docker

The project uses docker, once you have cloned the project and its sub-modules, perform the following:
```
$ cd docker/
$ docker compose up
```

This will setup the `front-end` and `api` environments. You can enter containers using VSCode.

> 🚨️ __environment variables__  
> Both containers setups rely on an `.env` file which needs to be setup and present in each of the submodules. You need to write them, a `example.env` template is available. The `.env` contains secrets, so follow the [Secret Keys Setup]() section below.


## Secret Keys Setup [^!]

Both the front-end and api use environment variables to setup secret keys in line with the [Heroku 12 factor method](https://12factor.net). Each project has a `example.env` file that needs to be filled out to form a `.env` file. The file will contains firebase and GCP public private keys that allow the authentication, id verification and data encryption. **NEVER** share this to anyone.

To setup an instance of the firebaase auth and google cloud platform key management service, follow the guides referenecs below.

#### Firebase
> [Authenticate using Google](https://firebase.google.com/docs/web/setup#create-firebase-project-and-app): register to firebase, [create a firebase project](https://firebase.google.com/docs/web/setup#create-firebase-project-and-app)and [register your app](https://firebase.google.com/docs/web/setup#register-app) setup a project in firebase. From you firebase console, you get a `firebaseConfig` which needs to be copied into the `.env` file as separate variables. For the `api` you need to [initialise an Admin SDK account](https://firebase.google.com/docs/admin/setup). You will be given a `service account file` which need to be copied into the `api`'s `.env` file as separate variables.

#### Google Cloud Platform Key Management Service (`GCP KMS`)[^1]
> [Register with Google Cloud Platform]() and follow the '[encrypting and decrypted data with a symmetric key](https://cloud.google.com/kms/docs/encrypt-decrypt)' guide. This show you [how to create a keyring and symmetric key](https://cloud.google.com/kms/docs/create-key#create-symmetric). You also need to create a service account which is how the `api` will communicate to `GCP KMS`. Read the [Access Control with IAM](https://cloud.google.com/kms/docs/iam) guide, create a service account with a role and permission as decribed in the ['before you begin' section of the earlier guide](https://cloud.google.com/kms/docs/encrypt-decrypt). The '[Create and delete service account keys](https://cloud.google.com/iam/docs/keys-create-delete)' will guide how to retrieve a `service account key` which needs to be added to the `.env` file as separate variables. You may have trouble with finding the `location_id` of the `keyring`, you can find the [location codes in GCP docs](https://cloud.google.com/kms/docs/locations#worldwide).

The `service account keys` allow the `api` to authenticate and, with the correct persmissions, performs its `token verification` and `data encrypt/decrypt` actions.

#### `example.env`
You will encounter configuration and `service account keys` for both which you can use to fill in the `.env` file. The _shape_ of the values is reflected the `example.env` to help you out:
```
39   GCP_KMS_TYPE="xxxxxxxxxxxxxxxxx"
40   GCP_KMS_PROJECT_ID="xxxxxxxxxxxxxxxxxx"
41   GCP_KMS_PRIVATE_KEY_ID="xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
42   GCP_KMS_PRIVATE_KEY="-----BEGIN PRIVATE KEY-----
43   xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
44   xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
45   xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
..   ...
69   -----END PRIVATE KEY-----"
```

The snippet above shows, for example, that the private key should have `newlines` instead of `\n` that is represent in the `service-acount-key.json` format.

[^!]: this guide isn't fit for production or anything serious
[^1]: strongly recommend using a separate account for this one