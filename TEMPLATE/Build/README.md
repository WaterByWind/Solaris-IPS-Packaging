Template for Solaris IPS Package

Replicate this hierarchy as a starting point for new packages.

- `LICENSE`  
  License under which the packaging is distributed  
- `Makefile`  
  standard set of package creation dependencies and rules  
- `README.md`  
  package description and details  
- `BUILDNOTES.md`  
  details and hints for compilation and assembly  
- `custom.mog`  
  app/package specific transforms  
- `defs.mk`  
  standard set of definitions for package creation  
- `deps.mog`  
  manual specific package dependencies  
- `fix-attrs.mog`  
  transforms to ensure proper ownerships and \*nix permissions  
- `metadata.mog`  
  generic pkg metadata  
- `os-dist.mog`  
  transforms to exclude standard OS-provided paths  
- `src-repo.mog`  
  transforms to exclude source repository control files  
- `std-transforms.mog`  
  standard platform transforms, with additional local equivalents  
- `usergroup.mog`  
  pkg transforms for user/group creation  
