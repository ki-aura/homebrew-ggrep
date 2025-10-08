class Fs < Formula
  desc "Tyler File Search"
  homepage "https://github.com/ki-aura/fs"
  url "https://github.com/ki-aura/fs/archive/refs/tags/v2.4.0.tar.gz"
  sha256 "9a505d2506768304f8aedd8f1e10c119b049474e70da11fa172d2fb887b8fe3f"
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
