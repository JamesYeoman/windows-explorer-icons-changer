# windows-explorer-icons-changer

I wanted to customise my icons on my Windows install, but it ended up turning into frustration as Microsoft seemed
to go out of their way to make cohesiveness impossible if you modify any icons.

Then I came across [this blog post](https://www.msftnext.com/how-to-change-icons-of-folders-in-this-pc-on-windows-10/)
and I ended up giving up an entire afternoon in order to automate as much as possible, in order to avoid making mistakes
while having access to TrustedInstaller privilages.

I then realised that my automation efforts would be useful for more than just making Quick Access, Libraries, and This PC
look nice. [This blog post](https://mywindowshub.com/complete-list-of-clsid-key-guid-shortcuts-in-windows-10/) made me realise that
many more icons would need to be changed via the registry.

If I've been through this pain, there's no reason for me to _not_ share it with others, so they can benefit.

Sure, I've not automated it _the best way_, but I'm hoping to improve the automation in the Near Future™.

The icon pack that I chose is [Lumicons](https://www.deviantart.com/vantler/art/Lumicons-662277185), and while they recommend
CustomiserGod, that software is outdated now (Win10 v1903 and beyond isn't supported). So this registry "hack" solution is
the only way. And I don't trust myself with manual registry tweaks, so I'm going to stick with automated ones.

## Usage

I use ExecTI to run `ThisPC_Icons_Trustedinstaller_Hook.bat`, because ExecTI doesn't support executing Powershell scripts...

Make sure to change the `Overwrite` variables in `ThisPC_Icons.ps1` to match where you have your icon pack stored.

## Screenshots

Humble beginnings. This is all the icons I've actually changed thus far.
![image](https://user-images.githubusercontent.com/21042602/163867689-fb66dd06-5fe2-4abe-898d-8674b2164119.png)
