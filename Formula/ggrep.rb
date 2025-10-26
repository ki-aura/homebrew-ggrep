class Ggrep < Formula
  desc "Tyler File Search"
  homepage "https://github.com/ki-aura/ggrep"
  url "https://github.com/ki-aura/ggrep/archive/refs/tags/v2.6.3.tar.gz"
  sha256 "10b8829a75cd2308c32da7892372b573b48cc23e73ef39385472d6f02382bfa2"
  license "MIT"

  def install
    system "make", "release"
    bin.install "ggrep"
  end

  test do
    # Check basic execution
    system "#{bin}/ggrep", "-h"
  end
end
