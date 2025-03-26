{ lib, stdenv, fetchFromGitHub }: 

stdenv.mkDerivation {
  pname = "illogical-impulse-oneui4-icons";
  version = "unstable-2024-01-05";
  
  src = builtins.path {
    path = /home/smanahian/GitHub/OneUI4-Icons;
    name = "OneUI4-Icons";
  };
  
  patchPhase = ''
    # Remove broken symlinks
    find . -xtype l -delete
  '';

  installPhase = ''
    install -d $out/share/icons
    cp -dr --no-preserve=mode OneUI{,-dark,-light} $out/share/icons/
  '';
  
  meta = {
    description = "A fork of mjkim0727/OneUI4-Icons for illogical-impulse dotfiles.";
    homepage = "https://github.com/SMANahian/OneUI4-Icons";
    license = lib.licenses.gpl3;
  };
}
