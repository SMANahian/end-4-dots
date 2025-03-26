{ lib, fetchFromGitHub, stdenv }:

stdenv.mkDerivation {
  pname = "illogical-impulse-hyprland-shaders";
  version = "latest";

  src = builtins.path {
    path = /home/smanahian/GitHub/dots-hyprland;
    name = "dots-hyprland";
  };

  installPhase = ''
    mkdir -p $out
    cp -r $src/.config/hypr/shaders/* $out/
  '';

  meta = {
    description = "Hyprland Shaders written by end-4";
    homepage = "https://github.com/SMANahian/dots-hyprland";
    license = lib.licenses.gpl3;
  };
}
