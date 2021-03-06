{ cabal, binary, mtl }:

cabal.mkDerivation (self: {
  pname = "ghc-events";
  version = "0.4.3.0";
  sha256 = "128p651hp8v1i0iaccmfh3ap6lajcrzdihjb853s71pgnpal6izr";
  isLibrary = true;
  isExecutable = true;
  buildDepends = [ binary mtl ];
  testDepends = [ binary mtl ];
  jailbreak = true;
  doCheck = false;
  meta = {
    description = "Library and tool for parsing .eventlog files from GHC";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.andres ];
  };
})
