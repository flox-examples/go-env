{
  pkgs,
  buildGo118Module,
  ...
}:
buildGo118Module rec {
  pname = "gin-example";
  version = "0.0.1";
  # In 'nix develop', we don't need a copy of the source tree
  # in the Nix store.
  src = ../../ugin;

  # This hash locks the dependencies of this package. It is
  # necessary because of how Go requires network access to resolve
  # VCS.  See https://www.tweag.io/blog/2021-03-04-gomod2nix/ for
  # details. Normally one can build with a fake sha256 and rely on native Go
  # mechanisms to tell you what the hash should be or determine what
  # it should be "out-of-band" with other tooling (eg. gomod2nix).
  # To begin with it is recommended to set this, but one must
  # remeber to bump this hash when your dependencies change.
  #vendorSha256 = pkgs.lib.fakeSha256;
  vendorSha256 = "sha256-kic3+uGr7l2IkuCYT9cze1o7WkLgBCFtxfsf9wA6mzM=";
}
