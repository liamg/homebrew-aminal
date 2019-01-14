class Aminal < Formula
  homepage "https://github.com/liamg/aminal"
  url "https://github.com/liamg/aminal/archive/v0.8.6.tar.gz"
  sha256 "ca78faf600bf3fbe2e2b51cfaa100d94f240d7fa01935c988f9453640e7be772"

  depends_on "go" => :build

  def install
    system "./build.sh v0.8.6"
    bin.install "./aminal" => "aminal"
  end

  test do
    system "#{bin}/aminal", "--version"
  end
end
