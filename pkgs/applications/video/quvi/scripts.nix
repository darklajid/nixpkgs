{stdenv, fetchurl, pkgconfig}:

stdenv.mkDerivation rec {
  name = "quvi-scripts-${version}";
  version="0.9.20131130";

  src = fetchurl {
    url = "mirror://sourceforge/quvi/libquvi-scripts-${version}.tar.xz";
    sha256 = "1qvp6z5k1qgcys7vf7jd6fm0g07xixmciwj14ypn1kqhmjgizwhp";
  };

  buildInputs = [ pkgconfig ];

  meta = { 
    description = "Web video downloader";
    homepage = http://quvi.sf.net;
    license = "LGPLv2.1+";
    platforms = stdenv.lib.platforms.linux;
    maintainers = [ stdenv.lib.maintainers.mornfall ]; 
  };
}

