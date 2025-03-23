{ lib, fetchFromGitHub, stdenv }:

stdenv.mkDerivation {
  pname = "illogical-impulse-kvantum";
  version = "latest";

  src = fetchFromGitHub {
    owner = "SMANahian";
    repo = "dots-hyprland";
    rev = "6ce7d07b5b0d26afff64002341fbfcfde0e02369";
    sha256 = "sha256-yJf/B7ZT3Y9Is7xMoVnvZZl/qBWxn7BLpz9Ab6v7Hys=";
  };

  installPhase = ''
    mkdir -p $out
    cp -r .config/Kvantum/* $out/

    runHook postInstall
  '';

  postInstall = ''
    mv $out/MaterialAdw/MaterialAdw.svg $out/MaterialAdw/MaterialAdw.svg.sample
    mv $out/MaterialAdw/MaterialAdw.kvconfig $out/MaterialAdw/MaterialAdw.kvconfig.sample
  '';

  meta = {
    description = "Kvantum theme written by end-4";
    homepage = "https://github.com/SMANahian/dots-hyprland";
    license = lib.licenses.gpl3;
  };
}
