class Itmowiki < Formula
  desc "ITMO wiki terminal client"
  homepage "https://github.com/mereska0/itmowiki"
  url "https://github.com/mereska0/itmowiki/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "93e468144a0bab0d866e48f592b1bfbbe7be2aebcff6ca17fc89106c1ec5d493"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/itmowiki"
  end

  test do
    system "#{bin}/itmowiki", "--help"
  end
end