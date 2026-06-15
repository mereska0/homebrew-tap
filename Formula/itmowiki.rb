class Itmowiki < Formula
  desc "ITMO wiki terminal client"
  homepage "https://github.com/mereska0/itmowiki"
  url "https://github.com/mereska0/itmowiki/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "7f4ec67667c49b07c4497f9a73a0889aae1b53c181d516a73aa78058e2cf555b"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/itmowiki"
  end

  test do
    system "#{bin}/itmowiki", "--help"
  end
end