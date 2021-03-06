{ cabal, cryptoApi, mtl, tagged, transformers }:

cabal.mkDerivation (self: {
  pname = "monadcryptorandom";
  version = "0.6.1";
  sha256 = "0j99j0f2qwhslimfgslsdlv0xihsddas3i69pfnjwnsd9zg5pgj2";
  buildDepends = [ cryptoApi mtl tagged transformers ];
  meta = {
    homepage = "https://github.com/TomMD/monadcryptorandom";
    description = "A monad for using CryptoRandomGen";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.andres ];
  };
})
