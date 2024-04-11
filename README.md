# Discord Auto Updater For Debian Based Linux
---

## Use
To use this utility you just have to clone this repository:

```
    git clone https://github.com/yarete03/discord_updater_deb.git
```

Then you will have to place the bash script **auto_update_discord.sh** wherever 
you want, and you just have to execute it every single time you want to open discord.

The script will search for new Discord versions before executing it, if it finds a 
newer version, the script will automatically update it before executing Discord. 
Otherwise Discord will be launched as if we've executed it from the oficial binary.

### > [!WARNING]
> Since this script will update Discord if there is a newer version, you will have to 
execute it with a privileged user (root or a user with at least permissions in the 
sudoers to execute /usr/bin/apt). It is recommended to set this user whit NOPASSWD 
in the /etc/sudoers (or /etc/sudoers.d) when executing the following command:

```
    /usr/bin/sudo /usr/bin/apt install ./discord_update.deb
```

Example of the sugested configuration in /etc/sudoers file:

```
    username   ALL=(ALL:ALL) NOPASSWD: /usr/bin/sudo /usr/bin/apt install ./discord_update.deb
```
