# Dotfiles Repository

This repository contains personal dotfiles, including shell configuration and aliases for improved workflow and productivity.

## Contents

- **.bash_aliases**: Custom Bash shell aliases for common commands and shortcuts.
- _(Other dotfiles may be included as the repository evolves.)_

## Usage

### .bash_aliases

The `.bash_aliases` file contains a collection of useful Bash aliases. To use these aliases:

1. **Clone the repository:**

```bash
git clone https://github.com/jcnichols22/dotfiles.git
```

2. **Symlink or copy the `.bash_aliases` file to your home directory:**

```bash
ln -s /path/to/dotfiles/.bash_aliases ~/.bash_aliases
```

Or, for a quick copy:

```bash
cp /path/to/dotfiles/.bash_aliases ~/.bash_aliases
```

3. **Source your `.bashrc` or `.bash_aliases` to activate the aliases:**

```bash
source ~/.bashrc
```

_(Note: Ensure your `.bashrc` includes a line like `source ~/.bash_aliases` if you want the aliases to load automatically.)_

## Customizing Aliases

Feel free to edit the `.bash_aliases` file to add, modify, or remove aliases to suit your needs.

## Contributing

Contributions are welcome! If you have suggestions for new aliases or improvements, please open an issue or submit a pull request.
