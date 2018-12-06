class Aminal < Formula
  homepage "https://github.com/liamg/aminal"
  url "https://github.com/liamg/aminal/archive/v0.7.10.tar.gz"
  sha256 "82cc6bb652a48e61d162c12937dddbc0c4d8b4c77375d0d16f778605ba1d2ee7"

  depends_on "go" => :build

  def install
    system "make build"
    bin.install "/tmp/.gobuild/src/github.com/liamg/aminal/aminal" => "aminal"
  end

  test do
    system "#{bin}/aminal", "--version"
  end
end
