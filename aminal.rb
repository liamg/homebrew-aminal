class Aminal < Formula
  homepage "https://github.com/liamg/aminal"
  url "https://github.com/liamg/aminal/archive/v0.7.13.tar.gz"
  sha256 "f79f64f313e9e73d9a64a02dc764952f51aa4a4f8e6cb991c13f9b4cc753ea77"

  depends_on "go" => :build

  def install
    system "./build.sh v0.7.13"
    bin.install "./aminal" => "aminal"
  end

  test do
    system "#{bin}/aminal", "--version"
  end
end
