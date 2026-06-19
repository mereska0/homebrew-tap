class Itmowiki < Formula
  desc "ITMO wiki terminal client"
  homepage "https://github.com/mereska0/itmowiki"
  url "https://github.com/mereska0/itmowiki/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/itmowiki"
  end

  test do
    system "#{bin}/itmowiki", "--help"
  end
end