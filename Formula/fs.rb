class Fs < Formula
  desc "Tyler File Search"
  homepage "https://github.com/ki-aura/fs"
  url "https://github.com/ki-aura/fs/archive/refs/tags/v2.3.1.tar.gz"
  sha256 "bf682d0c6ef206dd19a33676be4073c36c2336b16dcf0c14f3d4ae2256cce029"
  license "MIT"

  def install
    system "make", "release"
    bin.install "fs"
  end

  test do
    # Check basic execution
    system "#{bin}/fs", "-h"
  end
end
