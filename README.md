This repository contains commonly shared modules and is intended to be used as a git submodule.

Each submodule may include additional instructions to be used properly. Please check the folder containing that module to see if anything extra needs to be done.

To use shared modules for packaging an application, add the submodule:

```
git submodule add https://github.com/flathub/shared-modules.git
```

Then modules from this repository can be specified in a JSON manifest file like this:

```json
"modules": [
  "shared-modules/SDL/SDL-1.2.15.json",
  {
    "name": "foo"
  }
]
```
And for a YAML manifest:
```YAML
modules:
  - shared-modules/SDL/SDL-1.2.15.json

  - name: foo
```


To update the submodule:

```
git submodule update --remote --merge
```

To remove the submodule:

```
git submodule deinit -f -- shared-modules
rm -rf .git/modules/shared-modules
git rm -f shared-modules
rm .gitmodules
```


Please do not request adding modules unless they have many users in the Flathub repository.
