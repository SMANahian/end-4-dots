{ config, lib, pkgs, ... }:
{
  config = {
    services.gammastep = {
      enable = true;
      provider = "manual";
      latitude = 23.7;
      longitude = 90.35;
      temperature.day = 4500;
      temperature.night = 4500;
    };
  };
}
