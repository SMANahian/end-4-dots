{ config, lib, pkgs, ... }:
{
  services.gammastep = lib.mkMerge [
    {
      enable = true;
      provider = "manual";
      latitude = 23.7;
      longitude = 90.35;
      temperature.day = 4500;
      temperature.night = 4500;
    }
    config.services.gammastep
  ];
}
