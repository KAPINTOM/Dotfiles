# Dotfiles

Linux dotfiles are configuration files used by shell programs, text editors, window managers, and other tools. They are usually hidden in the home directory because their names start with a dot (`.`), for example `.bashrc`, `.vimrc`, or `.gitconfig`.

A dotfiles GitHub repository is a centralized place to store and share these configuration files. The objective is to:

- keep personal Linux environment settings version-controlled,
- make it easy to set up a new system with the same configuration,
- share useful customizations and scripts across machines,
- document the tools and preferences used in the setup.

In short, a dotfiles repository helps manage and reproduce a consistent Linux development environment.

This GitHub repository contains my personal dotfiles that I constantly update.

## How do I backup my dotfiles

To efficiently manage and back up my dotfiles, I have implemented a practical, version-controlled workflow that prioritizes automation and clarity. 

The core of this system is a lightweight shell script, `backup_dotfiles.sh`, which automates the initial stage of the process. When executed, this script copies the selected dotfiles from their native system locations directly into a local directory designated as a Git repository, which is already linked to a remote GitHub origin. 

Once the files are successfully staged within this cloned repository, I proceed to synchronize the changes with the remote server. To facilitate the Git version control operations, specifically committing and pushing updates, I leverage the integrated source control interfaces of either Code-OSS or Visual Studio Code. The choice between these two editors depends on the specific Linux distribution I am currently running, ensuring compatibility across different environments. 

This structured approach not only streamlines the backup routine but also maintains a complete, trackable history of all configuration changes.