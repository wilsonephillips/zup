# sudo zypper dup

Update REPO and Flaptpak packages in one shot.

openSUSE Tumbleweed ONLY. Do not run this on openSUSE LEAP without editing the command in the script for leap.

This was strictly a "Let's see if I can make this work!" I only did it to prove to myself that it could be done. You can actually click a mouse to run a bash script, but the key is the .desktop file. I have not figured out any way to make it work without it.

This runs the zypper dist-upgrade from a script. It works by clicking the zup.desktop file on your desktop, or wherever you want to put it. You must click the .desktop file to run it. You cannot run it by clicking the script itself. It is the .desktop file that makes Konsole open to run the script. It requires the correct shebang in the script as well.

Open the zup.desktop file in a text editor and change username to match yours in both path locations. Once this is done, right click the .desktop and make sure the paths are correct in the Properties. They should pickup what is in the .desktop file. Note: This is not a Link, but a Link to Application.

Place the zup.sh file into your ~/.local/bin folder, so it will be in your $PATH. Make sure it is executable.

What does it do?
Clicking the zup.desktop file links to the zup.sh file.
It opens in Konsole and runs sudo zypper dist-upgrade to upgrade all system packages on openSUSE Tumbleweed.
It then asks for your sudo password. Once you type in your password, it runs just as if you had opened
Konsole and typed it in from the command line.

Once finished, it then runs flatpak update and grabs the updates for all of your Flatpaks, if needed.

On completion, it waits for you to hit any key to close the window. I had to do this to keep it from closing the window
automatically. You can comment this section out if you want it to do so.
