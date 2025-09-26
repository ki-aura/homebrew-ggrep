class Fs < Formula
  desc "Tyler File Search"
  homepage "https://github.com/ki-aura/fs"
  url "https://github.com/ki-aura/fs/archive/refs/tags/v2.2.0.tar.gz"
  sha256 "9c321f4e25a4b3f3610efff840b8d60d9e3632754816ea59fbcf28eadb9781a1"
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
