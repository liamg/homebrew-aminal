class Aminal < Formula
  homepage "https://github.com/liamg/aminal"
  url "https://github.com/liamg/aminal/archive/v0.7.12.tar.gz"
  sha256 "bd424230d2ee2f23c80703208ab22a6ed09d45862557094ef540a219adf25544"

  depends_on "go" => :build

  def install
    system "make build"
    bin.install "./aminal" => "aminal"
  end

  test do
    system "#{bin}/aminal", "--version"
  end
end
