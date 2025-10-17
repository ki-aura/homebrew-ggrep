class GGrep < Formula
  desc "Tyler File Search"
  homepage "https://github.com/ki-aura/ggrep"
  url "https://github.com/ki-aura/ggrep/archive/refs/tags/v2.5.0.tar.gz"
  sha256 "6604d3ae908d216ca8808c7a17fcab7646f7cd825605048d32ec3686e1030d1e"
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
