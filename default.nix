with import <nixpkgs> {};

pythonPackages.buildPythonPackage rec {
  name = "hetzner-${version}";
  version = "0.7.2";
  src = ./.;
  doCheck = false;
  installCommand = "python setup.py install --prefix=$out";
}
