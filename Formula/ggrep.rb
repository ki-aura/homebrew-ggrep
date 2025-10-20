class Ggrep < Formula
  desc "Tyler File Search"
  homepage "https://github.com/ki-aura/ggrep"
  url "https://github.com/ki-aura/ggrep/archive/refs/tags/v2.6.2.tar.gz"
  sha256 "10a837b6e04d79593ada9ea69b4532e120fcc3c23a919d93c94e756a0709ce73"
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
