with import <nixpkgs> {};
stdenv.mkDerivation {
	name = "dmenu";
	src = nix-gitignore.gitignoreSource [] ./.;
	buildInputs = [ xorg.libX11 xorg.libXinerama xorg.libXft ];

  makeFlags = [ "PREFIX=${placeholder "out"}" ];
}
