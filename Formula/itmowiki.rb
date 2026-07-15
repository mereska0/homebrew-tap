class Itmowiki < Formula
  desc "ITMO wiki terminal client"
  homepage "https://github.com/mereska0/itmowiki"
  url "https://github.com/mereska0/itmowiki/archive/refs/tags/v0.1.7.tar.gz"
  sha256 "527d8b00374f3715fa0822aa04366b71e9f7b1cf6c0975613369eeac64c5bda2"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/itmowiki"
  end

  test do
    system "#{bin}/itmowiki", "--help"
  end
end