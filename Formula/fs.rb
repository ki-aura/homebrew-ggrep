class Fs < Formula
  desc "Tyler File Search"
  homepage "https://github.com/ki-aura/fs"
  url "https://github.com/ki-aura/fs/archive/refs/tags/v2.2.1.tar.gz"
  sha256 "9b1e47916b10d8c161d7a53e2bde66b58e280f65ca2b949a2b162ded2455d0ce"
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
