class Aminal < Formula
  homepage "https://github.com/liamg/aminal"
  url "https://github.com/liamg/aminal/archive/v0.8.5.tar.gz"
  sha256 "d6e54e6b39fb08fad58859e04bdf7282bfe94bf0a37630adaa04cc553c29bdc4"

  depends_on "go" => :build

  def install
    system "./build.sh v0.8.5"
    bin.install "./aminal" => "aminal"
  end

  test do
    system "#{bin}/aminal", "--version"
  end
end
