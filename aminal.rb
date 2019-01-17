class Aminal < Formula
  homepage "https://github.com/liamg/aminal"
  url "https://github.com/liamg/aminal/archive/v0.8.7.tar.gz"
  sha256 "ed59927531e7d585a42366c455e491a846c7e23ae079fa1d10d43fdd3a92eb65"

  depends_on "go" => :build

  def install
    system "./build.sh v0.8.7"
    bin.install "./aminal" => "aminal"
  end

  test do
    system "#{bin}/aminal", "--version"
  end
end
