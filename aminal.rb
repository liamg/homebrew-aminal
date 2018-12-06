class Aminal < Formula
  homepage "https://github.com/liamg/aminal"
  url "https://github.com/liamg/aminal/archive/v0.7.11.tar.gz"
  sha256 "81243638d1478cefde422a2d61e76753743e34baf20ba34cf8723c563432eaa1"

  depends_on "go" => :build

  def install
    system "make build"
    bin.install "/tmp/.gobuild/src/github.com/liamg/aminal/aminal" => "aminal"
  end

  test do
    system "#{bin}/aminal", "--version"
  end
end
