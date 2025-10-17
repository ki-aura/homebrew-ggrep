class Ggrep < Formula
  desc "Tyler File Search"
  homepage "https://github.com/ki-aura/ggrep"
  url "https://github.com/ki-aura/ggrep/archive/refs/tags/v2.6.1.tar.gz"
  sha256 "4959b00f35daf41f896c16009e3fca520407f4bf2fea481d9040b33b022db6e1"
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
