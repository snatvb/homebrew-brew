class Imp < Formula
  desc "TypeScript/JavaScript runtime — one binary, no node_modules"
  homepage "https://github.com/snatvb/imp"
  version "v0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/snatvb/imp/releases/download/v0.1.3/imp-v0.1.3-mac-arm64.tar.gz"
      sha256 "a22b4f2eadb508556b284ea20d88cf5c69f49b2935c9cb0936e16794f9bde42f"
    else
      on_intel do
        url "https://github.com/snatvb/imp/releases/download/v0.1.3/imp-v0.1.3-linux-x64.tar.gz"
        sha256 "57b7742783465e3aa20a30297d43e17a24f9bbefcbf70c85c7be93e05a804a38"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/snatvb/imp/releases/download/v0.1.3/imp-v0.1.3-linux-arm64.tar.gz"
      sha256 "fa8f582e7c522e1951885ae204e9b3bba1ea439bbfb9ab358d5ec40301059486"
    else
      url "https://github.com/snatvb/imp/releases/download/v0.1.3/imp-v0.1.3-linux-x64.tar.gz"
      sha256 "57b7742783465e3aa20a30297d43e17a24f9bbefcbf70c85c7be93e05a804a38"
    end
  end

  def install
    bin.install "imp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/imp --version")
  end
end
