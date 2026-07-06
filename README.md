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

---

# What Linux Distro I'm Currently Using and Why

After years of experimenting with various Linux distributions, I've found my permanent home with **Arch Linux**. This isn't a decision I made lightly, but rather one that emerged from understanding what I truly value in an operating system.

## The Short Answer

I use **vanilla Arch Linux** with the **i3 window manager** as my daily driver, and I occasionally switch to **Qtile** when I want a change of pace. I strictly avoid the AUR (Arch User Repository), relying exclusively on official packages, Flatpaks, and AppImages for additional software. I do not use GNOME, KDE, or any other desktop environment, and I **completely avoid Wayland** and any Wayland-based compositors. For the core of my system, I run the **linux-lts** kernel because I want my foundation to be extremely stable—like a tank.

## Why Arch Linux?

### The Arch Way Philosophy

What draws me to Arch isn't just its rolling release model—it's the philosophy behind it. Arch embodies the **KISS principle** (Keep It Simple, Stupid) in a way that resonates with me:

- **Simplicity**: Arch provides a clean, minimalist base without unnecessary clutter. The complexity isn't hidden; it's organized and transparent.
- **Purity**: Software is kept as close to upstream source as possible. Unlike Ubuntu or Fedora, Arch doesn't heavily patch packages or add distro-specific modifications. When I install a package, I'm getting it exactly as the developers intended.
- **User-centric**: I have complete control and responsibility over my system. There's no hand-holding, no "helper" tools that obscure what's happening underneath.

### The Rolling Release Model

I love that I always have the latest software without needing to upgrade my entire distribution every six months. Security patches and new features arrive continuously. Combined with Arch's philosophy of minimal patching, this means I'm running software in its purest, most up-to-date form—but only in user-space. The kernel itself is a different story.

## My Package Philosophy: Official Repos Only

I'm strictly against using AUR packages. I don't have `paru` or `yay` installed, and I never will. Here's why:

### Advantages of Official Packages

- **Stability**: Official packages are tested together in the `testing` repositories before reaching stable. This ensures compatibility across critical libraries like `glibc` and `python`.
- **Security**: All official packages are cryptographically signed and built on secure, isolated build servers. The AUR requires trusting random shell scripts from unknown maintainers.
- **Flawless Updates**: `pacman -Syu` is anxiety-free. I never have to wait for AUR maintainers or deal with dependency conflicts.
- **Official Support**: Arch developers take bug reports seriously when you're running an official system. On the forums, the first question is always "Do you have AUR packages?"—and my answer is always "no."

### What I Do for Missing Software

When I need software that isn't in the official repos, I use:

- **Flatpaks**: For sandboxed, containerized applications.
- **AppImages**: For portable, self-contained binaries.
- **Source Compilation**: In extreme cases, I compile from source with my own toolchain.

This layered approach gives me security and isolation without compromising my base system.

## My Desktop Setup: Pure X11 with i3 and Qtile

I exclusively use **X11** and have zero interest in Wayland. For me, the choice is clear:

- **i3wm** is my daily driver—a minimalist, keyboard-driven tiling window manager that maximizes screen real estate and reduces clutter. I configure everything through a simple text file, keeping my system transparent and fully under my control.
- **Qtile** is my occasional alternative. When I feel like a change of pace, I switch to it—always running on its **X11 backend**, never Wayland.

### Why I Avoid Wayland Entirely

I've had enough Wayland problems to last a lifetime. Avoiding it eliminates a massive source of potential issues:

- No screen tearing or input lag quirks
- No broken clipboard or copy-paste frustrations
- No screen-sharing problems in video calls
- No inconsistent window behavior
- No chasing after Wayland-specific fixes in every application
- Problems with my gaming laptop that uses an hybrid GPU system, Wayland doesnt work well with my hardware

With i3 and Qtile on X11, everything just works predictably. I don't use GNOME, KDE, or any desktop environment—they add layers of complexity I don't need. I don't use Wayland-based compositors like Sway, Hyprland, or River. My workflow is purely X11, purely keyboard-driven, and purely minimal.

## Kernel Choice: LTS for Maximum Stability

This is where I make a deliberate and conscious choice that defines my entire system's reliability. I run the **linux-lts** kernel—the Long-Term Support version—because **I want the core of my operating system to be extremely stable, like a tank**.

My philosophy is simple: the foundation of my computer must be absolutely rock-solid and completely predictable. By choosing the LTS kernel, I proactively **eliminate the possibility of bugs and errors** that can occasionally slip into the latest mainline kernel (`linux`). The mainline kernel is bleeding-edge, which means it often carries experimental features, new drivers, and performance tweaks that haven't been battle-tested in the wild. These can introduce regressions, boot failures, or hardware quirks that I simply don't have time to troubleshoot.

With the LTS kernel:
- **Changes are minimal**: Updates are exclusively limited to critical security patches and essential bug fixes. No experimental features, no sudden architectural changes, no surprises.
- **It just works**: I've never had a kernel update break my system, because the LTS branch is maintained specifically for users who prioritize stability over novelty.
- **Perfect for X11**: Since I run i3 on X11, I don't need the cutting-edge graphics or Wayland patches found in the mainline kernel. The LTS kernel supports my hardware flawlessly.

I do keep the mainline kernel installed as a fallback option in my bootloader, but honestly, I almost never need to use it. The LTS kernel gives me a bulletproof core, allowing me to focus entirely on my work without worrying about system instability after an update. For me, the kernel is the single most critical piece of software on my machine, and I treat it with the respect it deserves—stability above all else.

## The Bigger Picture: Why Not Distro Derivatives?

I've tried EndeavourOS and Manjaro, but they don't appeal to me:

- **EndeavourOS** is essentially Arch with an installer—useful for newcomers, but I'm comfortable with `archinstall` and prefer the vanilla experience.
- **Manjaro** holds back updates and adds its own tools and modifications. It's not Arch—it's a separate distribution with its own philosophy.

I prefer pure Arch. No middlemen, no extra layers, no modifications.

## Conclusion

My Arch Linux setup is a reflection of my values: **simplicity, transparency, and control**. I want my system to be predictable, secure, and true to upstream sources. I don't want to maintain AUR packages, fight with Wayland regressions, or worry about breakage during updates.

By combining a rock-solid LTS kernel with i3 (and occasional Qtile) on X11, Arch Linux gives me exactly what I need—a rolling release user-space, a pure and unmodified software stack, a keyboard-driven workflow, and a core foundation that is as stable and unshakeable as a tank.

---

*"Arch Linux is what you make it."* — Judd Vinet, founder of Arch Linux

---

*This article reflects my personal experience and preferences. Everyone's needs are different, and there's no single "right" distribution for everyone.*