class Itmowiki < Formula
  desc "ITMO wiki terminal client"
  homepage "https://github.com/mereska0/itmowiki"
  url "https://github.com/mereska0/itmowiki/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "292e427825997437740fb3c576a8a498ceb478f775ab654e61026028205e2139"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/itmowiki"
  end

  test do
    system "#{bin}/itmowiki", "--help"
  end
end