# Random Folder - A Dart random folder generator

## Randomly Named Directories

Often it is difficult to come up with a name for a project. Random Folder generates a directory with a random name to help you get started building faster with a simple `mkrdir`.

## Installation

If you want to use Random Folder on the command line,
install it using `pub global activate`:

```console
> pub global activate random_folder
```

To update Random Folder, use the same `pub global activate` command.

## Usage

Random Folder generates an empty directory with a random name.
For example, here's how you create a package with Random Folder:

```console
$ mkrdir
```

Generates directory named randomname000000

### Options

```console
$ mkrdir -c # Camel Case Folder Name
$ mkrdir -s # Snake Case Folder Name
```
