# git/flake.nix
#
# This file packages pythoneda-artifact/git as a Nix flake.
#
# Copyright (C) 2023-today rydnr's pythoneda-artifact/git-artifact
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.
{
  description = "Domain of git artifacts";
  inputs = rec {
    nixos.url = "github:NixOS/nixpkgs/nixos-23.05";
    flake-utils.url = "github:numtide/flake-utils/v1.0.0";
    pythoneda-shared-artifact-changes-events = {
      url =
        "github:pythoneda-shared-artifact-changes/events-artifact/0.0.1a21?dir=events";
      inputs.nixos.follows = "nixos";
      inputs.flake-utils.follows = "flake-utils";
      inputs.pythoneda-shared-artifact-changes-shared.follows =
        "pythoneda-shared-artifact-changes-shared";
      inputs.pythoneda-shared-code-requests-events.follows =
        "pythoneda-shared-code-requests-events";
      inputs.pythoneda-shared-code-requests-shared.follows =
        "pythoneda-shared-code-requests-shared";
      inputs.pythoneda-shared-pythoneda-banner.follows =
        "pythoneda-shared-pythoneda-banner";
      inputs.pythoneda-shared-pythoneda-domain.follows =
        "pythoneda-shared-pythoneda-domain";
    };
    pythoneda-shared-artifact-changes-shared = {
      url =
        "github:pythoneda-shared-artifact-changes/shared-artifact/0.0.1a15?dir=shared";
      inputs.nixos.follows = "nixos";
      inputs.flake-utils.follows = "flake-utils";
      inputs.pythoneda-shared-pythoneda-banner.follows =
        "pythoneda-shared-pythoneda-banner";
      inputs.pythoneda-shared-pythoneda-domain.follows =
        "pythoneda-shared-pythoneda-domain";
    };
    pythoneda-shared-code-requests-events = {
      url =
        "github:pythoneda-shared-code-requests/events-artifact/0.0.1a11?dir=events";
      inputs.nixos.follows = "nixos";
      inputs.flake-utils.follows = "flake-utils";
      inputs.pythoneda-shared-artifact-changes-shared.follows =
        "pythoneda-shared-artifact-changes-shared";
      inputs.pythoneda-shared-code-requests-shared.follows =
        "pythoneda-shared-code-requests-shared";
      inputs.pythoneda-shared-pythoneda-banner.follows =
        "pythoneda-shared-pythoneda-banner";
      inputs.pythoneda-shared-pythoneda-domain.follows =
        "pythoneda-shared-pythoneda-domain";
    };
    pythoneda-shared-code-requests-jupyterlab = {
      url =
        "github:pythoneda-shared-code-requests/jupyterlab-artifact/0.0.1a13?dir=jupyterlab";
      inputs.nixos.follows = "nixos";
      inputs.flake-utils.follows = "flake-utils";
      inputs.pythoneda-shared-code-requests-shared.follows =
        "pythoneda-shared-code-requests-shared";
      inputs.pythoneda-shared-git-shared.follows =
        "pythoneda-shared-git-shared";
      inputs.pythoneda-shared-nix-flake-shared.follows =
        "pythoneda-shared-nix-flake-shared";
      inputs.pythoneda-shared-pythoneda-banner.follows =
        "pythoneda-shared-pythoneda-banner";
      inputs.pythoneda-shared-pythoneda-domain.follows =
        "pythoneda-shared-pythoneda-domain";
    };
    pythoneda-shared-code-requests-shared = {
      url =
        "github:pythoneda-shared-code-requests/shared-artifact/0.0.1a11?dir=shared";
      inputs.nixos.follows = "nixos";
      inputs.flake-utils.follows = "flake-utils";
      inputs.pythoneda-shared-pythoneda-banner.follows =
        "pythoneda-shared-pythoneda-banner";
      inputs.pythoneda-shared-pythoneda-domain.follows =
        "pythoneda-shared-pythoneda-domain";
    };
    pythoneda-shared-git-shared = {
      url = "github:pythoneda-shared-git/shared-artifact/0.0.1a21?dir=shared";
      inputs.nixos.follows = "nixos";
      inputs.flake-utils.follows = "flake-utils";
      inputs.pythoneda-shared-pythoneda-banner.follows =
        "pythoneda-shared-pythoneda-banner";
      inputs.pythoneda-shared-pythoneda-domain.follows =
        "pythoneda-shared-pythoneda-domain";
    };
    pythoneda-shared-nix-flake-shared = {
      url =
        "github:pythoneda-shared-nix-flake/shared-artifact/0.0.1a8?dir=shared";
      inputs.nixos.follows = "nixos";
      inputs.flake-utils.follows = "flake-utils";
      inputs.pythoneda-shared-git-shared.follows =
        "pythoneda-shared-git-shared";
      inputs.pythoneda-shared-pythoneda-banner.follows =
        "pythoneda-shared-pythoneda-banner";
      inputs.pythoneda-shared-pythoneda-domain.follows =
        "pythoneda-shared-pythoneda-domain";
      inputs.stringtemplate3.follows = "stringtemplate3";
    };
    pythoneda-shared-pythoneda-banner = {
      url = "github:pythoneda-shared-pythoneda/banner/0.0.1a16";
      inputs.nixos.follows = "nixos";
      inputs.flake-utils.follows = "flake-utils";
    };
    pythoneda-shared-pythoneda-domain = {
      url =
        "github:pythoneda-shared-pythoneda/domain-artifact/0.0.1a43?dir=domain";
      inputs.nixos.follows = "nixos";
      inputs.flake-utils.follows = "flake-utils";
      inputs.pythoneda-shared-pythoneda-banner.follows =
        "pythoneda-shared-pythoneda-banner";
    };
    stringtemplate3 = {
      url = "github:rydnr/nix-flakes/stringtemplate3-3.1?dir=stringtemplate3";
      inputs.nixos.follows = "nixos";
      inputs.flake-utils.follows = "flake-utils";
    };
  };
  outputs = inputs:
    with inputs;
    flake-utils.lib.eachDefaultSystem (system:
      let
        org = "pythoneda-artifact";
        repo = "git";
        version = "0.0.1a11";
        sha256 = "sha256-2ueX8zpB48P5a3zhsog9Mopjwqtg1jJNyRawxzU/Aqo=";
        pname = "${org}-${repo}";
        pythonpackage = "pythoneda.artifact.git";
        pkgs = import nixos { inherit system; };
        description = "Domain of git artifacts";
        license = pkgs.lib.licenses.gpl3;
        homepage = "https://github.com/${org}/${repo}";
        maintainers = with pkgs.lib.maintainers;
          [ "rydnr <github@acm-sl.org>" ];
        archRole = "B";
        space = "D";
        layer = "D";
        nixosVersion = builtins.readFile "${nixos}/.version";
        nixpkgsRelease = "nixos-${nixosVersion}";
        shared = import "${pythoneda-shared-pythoneda-banner}/nix/shared.nix";
        pythoneda-artifact-git-for = { python
          , pythoneda-shared-artifact-changes-events
          , pythoneda-shared-artifact-changes-shared
          , pythoneda-shared-code-requests-events
          , pythoneda-shared-code-requests-jupyterlab
          , pythoneda-shared-code-requests-shared, pythoneda-shared-git-shared
          , pythoneda-shared-nix-flake-shared, pythoneda-shared-pythoneda-banner
          , pythoneda-shared-pythoneda-domain, stringtemplate3 }:
          let
            pnameWithUnderscores =
              builtins.replaceStrings [ "-" ] [ "_" ] pname;
            pythonVersionParts = builtins.splitVersion python.version;
            pythonMajorVersion = builtins.head pythonVersionParts;
            pythonMajorMinorVersion =
              "${pythonMajorVersion}.${builtins.elemAt pythonVersionParts 1}";
            wheelName =
              "${pnameWithUnderscores}-${version}-py${pythonMajorVersion}-none-any.whl";
          in python.pkgs.buildPythonPackage rec {
            inherit pname version;
            projectDir = ./.;
            pyprojectTemplateFile = ./pyprojecttoml.template;
            pyprojectTemplate = pkgs.substituteAll {
              authors = builtins.concatStringsSep ","
                (map (item: ''"${item}"'') maintainers);
              desc = description;
              inherit homepage pname pythonMajorMinorVersion pythonpackage
                version;
              package = builtins.replaceStrings [ "." ] [ "/" ] pythonpackage;
              pythonedaSharedArtifactChangesEvents =
                pythoneda-shared-artifact-changes-events.version;
              pythonedaSharedArtifactChangesShared =
                pythoneda-shared-artifact-changes-shared.version;
              pythonedaSharedCodeRequestsEvents =
                pythoneda-shared-code-requests-events.version;
              pythonedaSharedCodeRequestsJupyterlab =
                pythoneda-shared-code-requests-jupyterlab.version;
              pythonedaSharedCodeRequestsShared =
                pythoneda-shared-code-requests-shared.version;
              pythonedaSharedGitShared = pythoneda-shared-git-shared.version;
              pythonedaSharedNixFlakeShared =
                pythoneda-shared-nix-flake-shared.version;
              pythonedaSharedPythonedaBanner =
                pythoneda-shared-pythoneda-banner.version;
              pythonedaSharedPythonedaDomain =
                pythoneda-shared-pythoneda-domain.version;
              src = pyprojectTemplateFile;
              stringtemplate3 = stringtemplate3.version;
            };
            src = pkgs.fetchFromGitHub {
              owner = org;
              rev = version;
              inherit repo sha256;
            };

            format = "pyproject";

            nativeBuildInputs = with python.pkgs; [ pip pkgs.jq poetry-core ];
            propagatedBuildInputs = with python.pkgs; [
              pythoneda-shared-artifact-changes-events
              pythoneda-shared-artifact-changes-shared
              pythoneda-shared-code-requests-events
              pythoneda-shared-code-requests-jupyterlab
              pythoneda-shared-code-requests-shared
              pythoneda-shared-git-shared
              pythoneda-shared-nix-flake-shared
              pythoneda-shared-pythoneda-banner
              pythoneda-shared-pythoneda-domain
              stringtemplate3
            ];

            # pythonImportsCheck = [ pythonpackage ];

            unpackPhase = ''
              cp -r ${src} .
              sourceRoot=$(ls | grep -v env-vars)
              chmod +w $sourceRoot
              cp ${pyprojectTemplate} $sourceRoot/pyproject.toml
            '';

            postInstall = ''
              pushd /build/$sourceRoot
              for f in $(find . -name '__init__.py'); do
                if [[ ! -e $out/lib/python${pythonMajorMinorVersion}/site-packages/$f ]]; then
                  cp $f $out/lib/python${pythonMajorMinorVersion}/site-packages/$f;
                fi
              done
              popd
              mkdir $out/dist
              cp dist/${wheelName} $out/dist
              jq ".url = \"$out/dist/${wheelName}\"" $out/lib/python${pythonMajorMinorVersion}/site-packages/${pnameWithUnderscores}-${version}.dist-info/direct_url.json > temp.json && mv temp.json $out/lib/python${pythonMajorMinorVersion}/site-packages/${pnameWithUnderscores}-${version}.dist-info/direct_url.json
            '';

            meta = with pkgs.lib; {
              inherit description homepage license maintainers;
            };
          };
      in rec {
        defaultPackage = packages.default;
        devShells = rec {
          default = pythoneda-artifact-git-default;
          pythoneda-artifact-git-default = pythoneda-artifact-git-python311;
          pythoneda-artifact-git-python38 = shared.devShell-for {
            package = packages.pythoneda-artifact-git-python38;
            python = pkgs.python38;
            pythoneda-shared-pythoneda-banner =
              pythoneda-shared-pythoneda-banner.packages.${system}.pythoneda-shared-pythoneda-banner-python38;
            pythoneda-shared-pythoneda-domain =
              pythoneda-shared-pythoneda-domain.packages.${system}.pythoneda-shared-pythoneda-domain-python38;
            inherit archRole layer nixpkgsRelease org pkgs repo space;
          };
          pythoneda-artifact-git-raw-python38 = shared.raw-devShell-for {
            package = packages.pythoneda-artifact-git-python38;
            python = pkgs.python38;
            pythoneda-shared-pythoneda-banner =
              pythoneda-shared-pythoneda-banner.packages.${system}.pythoneda-shared-pythoneda-banner-python38;
            pythoneda-shared-pythoneda-domain =
              pythoneda-shared-pythoneda-domain.packages.${system}.pythoneda-shared-pythoneda-domain-python38;
            inherit archRole layer nixpkgsRelease org pkgs repo space;
          };
          pythoneda-artifact-git-python39 = shared.devShell-for {
            package = packages.pythoneda-artifact-git-python39;
            python = pkgs.python39;
            pythoneda-shared-pythoneda-banner =
              pythoneda-shared-pythoneda-banner.packages.${system}.pythoneda-shared-pythoneda-banner-python39;
            pythoneda-shared-pythoneda-domain =
              pythoneda-shared-pythoneda-domain.packages.${system}.pythoneda-shared-pythoneda-domain-python39;
            inherit archRole layer nixpkgsRelease org pkgs repo space;
          };
          pythoneda-artifact-git-raw-python39 = shared.raw-devShell-for {
            package = packages.pythoneda-artifact-git-python39;
            python = pkgs.python39;
            pythoneda-shared-pythoneda-banner =
              pythoneda-shared-pythoneda-banner.packages.${system}.pythoneda-shared-pythoneda-banner-python39;
            pythoneda-shared-pythoneda-domain =
              pythoneda-shared-pythoneda-domain.packages.${system}.pythoneda-shared-pythoneda-domain-python39;
            inherit archRole layer nixpkgsRelease org pkgs repo space;
          };
          pythoneda-artifact-git-python310 = shared.devShell-for {
            package = packages.pythoneda-artifact-git-python310;
            python = pkgs.python310;
            pythoneda-shared-pythoneda-banner =
              pythoneda-shared-pythoneda-banner.packages.${system}.pythoneda-shared-pythoneda-banner-python310;
            pythoneda-shared-pythoneda-domain =
              pythoneda-shared-pythoneda-domain.packages.${system}.pythoneda-shared-pythoneda-domain-python310;
            inherit archRole layer nixpkgsRelease org pkgs repo space;
          };
          pythoneda-artifact-git-raw-python310 = shared.raw-devShell-for {
            package = packages.pythoneda-artifact-git-python310;
            python = pkgs.python310;
            pythoneda-shared-pythoneda-banner =
              pythoneda-shared-pythoneda-banner.packages.${system}.pythoneda-shared-pythoneda-banner-python310;
            pythoneda-shared-pythoneda-domain =
              pythoneda-shared-pythoneda-domain.packages.${system}.pythoneda-shared-pythoneda-domain-python310;
            inherit archRole layer nixpkgsRelease org pkgs repo space;
          };
          pythoneda-artifact-git-python311 = shared.devShell-for {
            package = packages.pythoneda-artifact-git-python311;
            python = pkgs.python311;
            pythoneda-shared-pythoneda-banner =
              pythoneda-shared-pythoneda-banner.packages.${system}.pythoneda-shared-pythoneda-banner-python311;
            pythoneda-shared-pythoneda-domain =
              pythoneda-shared-pythoneda-domain.packages.${system}.pythoneda-shared-pythoneda-domain-python311;
            inherit archRole layer nixpkgsRelease org pkgs repo space;
          };
          pythoneda-artifact-git-raw-python311 = shared.raw-devShell-for {
            package = packages.pythoneda-artifact-git-python311;
            python = pkgs.python311;
            pythoneda-shared-pythoneda-banner =
              pythoneda-shared-pythoneda-banner.packages.${system}.pythoneda-shared-pythoneda-banner-python311;
            pythoneda-shared-pythoneda-domain =
              pythoneda-shared-pythoneda-domain.packages.${system}.pythoneda-shared-pythoneda-domain-python311;
            inherit archRole layer nixpkgsRelease org pkgs repo space;
          };
        };
        packages = rec {
          default = pythoneda-artifact-git-default;
          pythoneda-artifact-git-default = pythoneda-artifact-git-python311;
          pythoneda-artifact-git-python38 = pythoneda-artifact-git-for {
            python = pkgs.python38;
            pythoneda-shared-artifact-changes-events =
              pythoneda-shared-artifact-changes-events.packages.${system}.pythoneda-shared-artifact-changes-events-python38;
            pythoneda-shared-artifact-changes-shared =
              pythoneda-shared-artifact-changes-shared.packages.${system}.pythoneda-shared-artifact-changes-shared-python38;
            pythoneda-shared-code-requests-events =
              pythoneda-shared-code-requests-events.packages.${system}.pythoneda-shared-code-requests-events-python38;
            pythoneda-shared-code-requests-jupyterlab =
              pythoneda-shared-code-requests-jupyterlab.packages.${system}.pythoneda-shared-code-requests-jupyterlab-python38;
            pythoneda-shared-code-requests-shared =
              pythoneda-shared-code-requests-shared.packages.${system}.pythoneda-shared-code-requests-shared-python38;
            pythoneda-shared-git-shared =
              pythoneda-shared-git-shared.packages.${system}.pythoneda-shared-git-shared-python38;
            pythoneda-shared-nix-flake-shared =
              pythoneda-shared-nix-flake-shared.packages.${system}.pythoneda-shared-nix-flake-shared-python38;
            pythoneda-shared-pythoneda-banner =
              pythoneda-shared-pythoneda-banner.packages.${system}.pythoneda-shared-pythoneda-banner-python38;
            pythoneda-shared-pythoneda-domain =
              pythoneda-shared-pythoneda-domain.packages.${system}.pythoneda-shared-pythoneda-domain-python38;
            stringtemplate3 =
              stringtemplate3.packages.${system}.stringtemplate3-python38;
          };
          pythoneda-artifact-git-python39 = pythoneda-artifact-git-for {
            python = pkgs.python39;
            pythoneda-shared-artifact-changes-events =
              pythoneda-shared-artifact-changes-events.packages.${system}.pythoneda-shared-artifact-changes-events-python39;
            pythoneda-shared-artifact-changes-shared =
              pythoneda-shared-artifact-changes-shared.packages.${system}.pythoneda-shared-artifact-changes-shared-python39;
            pythoneda-shared-code-requests-events =
              pythoneda-shared-code-requests-events.packages.${system}.pythoneda-shared-code-requests-events-python39;
            pythoneda-shared-code-requests-jupyterlab =
              pythoneda-shared-code-requests-jupyterlab.packages.${system}.pythoneda-shared-code-requests-jupyterlab-python39;
            pythoneda-shared-code-requests-shared =
              pythoneda-shared-code-requests-shared.packages.${system}.pythoneda-shared-code-requests-shared-python39;
            pythoneda-shared-git-shared =
              pythoneda-shared-git-shared.packages.${system}.pythoneda-shared-git-shared-python39;
            pythoneda-shared-nix-flake-shared =
              pythoneda-shared-nix-flake-shared.packages.${system}.pythoneda-shared-nix-flake-shared-python39;
            pythoneda-shared-pythoneda-banner =
              pythoneda-shared-pythoneda-banner.packages.${system}.pythoneda-shared-pythoneda-banner-python39;
            pythoneda-shared-pythoneda-domain =
              pythoneda-shared-pythoneda-domain.packages.${system}.pythoneda-shared-pythoneda-domain-python39;
            stringtemplate3 =
              stringtemplate3.packages.${system}.stringtemplate3-python39;
          };
          pythoneda-artifact-git-python310 = pythoneda-artifact-git-for {
            python = pkgs.python310;
            pythoneda-shared-artifact-changes-events =
              pythoneda-shared-artifact-changes-events.packages.${system}.pythoneda-shared-artifact-changes-events-python310;
            pythoneda-shared-artifact-changes-shared =
              pythoneda-shared-artifact-changes-shared.packages.${system}.pythoneda-shared-artifact-changes-shared-python310;
            pythoneda-shared-code-requests-events =
              pythoneda-shared-code-requests-events.packages.${system}.pythoneda-shared-code-requests-events-python310;
            pythoneda-shared-code-requests-jupyterlab =
              pythoneda-shared-code-requests-jupyterlab.packages.${system}.pythoneda-shared-code-requests-jupyterlab-python310;
            pythoneda-shared-code-requests-shared =
              pythoneda-shared-code-requests-shared.packages.${system}.pythoneda-shared-code-requests-shared-python310;
            pythoneda-shared-git-shared =
              pythoneda-shared-git-shared.packages.${system}.pythoneda-shared-git-shared-python310;
            pythoneda-shared-nix-flake-shared =
              pythoneda-shared-nix-flake-shared.packages.${system}.pythoneda-shared-nix-flake-shared-python310;
            pythoneda-shared-pythoneda-banner =
              pythoneda-shared-pythoneda-banner.packages.${system}.pythoneda-shared-pythoneda-banner-python310;
            pythoneda-shared-pythoneda-domain =
              pythoneda-shared-pythoneda-domain.packages.${system}.pythoneda-shared-pythoneda-domain-python310;
            stringtemplate3 =
              stringtemplate3.packages.${system}.stringtemplate3-python310;
          };
          pythoneda-artifact-git-python311 = pythoneda-artifact-git-for {
            python = pkgs.python311;
            pythoneda-shared-artifact-changes-events =
              pythoneda-shared-artifact-changes-events.packages.${system}.pythoneda-shared-artifact-changes-events-python311;
            pythoneda-shared-artifact-changes-shared =
              pythoneda-shared-artifact-changes-shared.packages.${system}.pythoneda-shared-artifact-changes-shared-python311;
            pythoneda-shared-code-requests-events =
              pythoneda-shared-code-requests-events.packages.${system}.pythoneda-shared-code-requests-events-python311;
            pythoneda-shared-code-requests-jupyterlab =
              pythoneda-shared-code-requests-jupyterlab.packages.${system}.pythoneda-shared-code-requests-jupyterlab-python311;
            pythoneda-shared-code-requests-shared =
              pythoneda-shared-code-requests-shared.packages.${system}.pythoneda-shared-code-requests-shared-python311;
            pythoneda-shared-git-shared =
              pythoneda-shared-git-shared.packages.${system}.pythoneda-shared-git-shared-python311;
            pythoneda-shared-nix-flake-shared =
              pythoneda-shared-nix-flake-shared.packages.${system}.pythoneda-shared-nix-flake-shared-python311;
            pythoneda-shared-pythoneda-banner =
              pythoneda-shared-pythoneda-banner.packages.${system}.pythoneda-shared-pythoneda-banner-python311;
            pythoneda-shared-pythoneda-domain =
              pythoneda-shared-pythoneda-domain.packages.${system}.pythoneda-shared-pythoneda-domain-python311;
            stringtemplate3 =
              stringtemplate3.packages.${system}.stringtemplate3-python311;
          };
        };
      });
}
