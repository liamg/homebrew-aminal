class Aminal < Formula
  homepage "https://github.com/liamg/aminal"
  url "https://github.com/liamg/aminal/archive/v0.8.4.tar.gz"
  sha256 "b861313687f0a195d30417770df20c4b91dec40e6f0b596ec7ebbf168522266b"

  depends_on "go" => :build

  def install
    system "./build.sh v0.8.4"
    bin.install "./aminal" => "aminal"
  end

  test do
    system "#{bin}/aminal", "--version"
  end
end
