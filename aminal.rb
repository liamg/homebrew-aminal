class Aminal < Formula
  homepage "https://github.com/liamg/aminal"
  url "https://github.com/liamg/aminal/archive/v0.8.3.tar.gz"
  sha256 "b55ec0df1c2fe0685a16c8e37c45dcceae933dfe9323eafffa64a7572496d8d4"

  depends_on "go" => :build

  def install
    system "./build.sh v0.8.3"
    bin.install "./aminal" => "aminal"
  end

  test do
    system "#{bin}/aminal", "--version"
  end
end
