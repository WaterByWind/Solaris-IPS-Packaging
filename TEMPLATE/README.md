### Template for Solaris IPS Package

Replicate this hierarchy as a starting point for new packages.  Note that `defs.mk` should contain majority of edits and that the Makefile should not require any changes itself.

Generically, software should be "installed" or copied to the `Proto.dist/dist` directory as-is.  Relocations, exclusions, etc should all be handled by package transforms.

Additions to the distribution installation should be placed in the `Proto.custom` directory.  This may include service definitions (SMF manifests), extra configurations, additional scripts such as service methods, and any other desired items.

- `LICENSE`  
  License under which the packaging is distributed.  
- `Makefile`  
  A standard set of package creation dependencies and rules.  Note that GNU make (gmake) is required rather than default BSD make.  There are three standard targets available:  
    - <u>manifest</u>:	(default target)  Build a ready-to-publish manifest, with dependencies identified and resolved.  
    - <u>pkglint</u>:	Run 'pkglint(1)' on the generated manifest against the standard OS repository.  
    - <u>publish</u>:	Publish the package to IPS repository.  
- `README.md`  
  Package description and details.  
- `BUILDNOTES.md`  
  Details and hints for compilation and assembly.  
- `custom.mog`  
  App/package specific transforms.  
- `defs.mk`  
  Standard set of definitions for package creation.  
- `deps.mog`  
  Manual (explicitly-defined) specific package dependencies.  
- `fix-attrs.mog`  
  Transforms to ensure proper ownerships and \*nix permissions.  
- `metadata.mog`  
  Generic pkg metadata.  
- `os-dist.mog`  
  Transforms to exclude standard OS-provided paths.  
- `src-repo.mog`  
  Transforms to exclude source repository control files.  
- `std-transforms.mog`  
  Standard platform transforms, with additional local equivalents.  
- `usergroup.mog`  
  Transforms for user/group creation.  
