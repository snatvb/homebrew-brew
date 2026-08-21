class Imp < Formula
  desc "TypeScript/JavaScript runtime — one binary, no node_modules"
  homepage "https://github.com/snatvb/imp"
  version "v0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/snatvb/imp/releases/download/v0.1.2/imp-v0.1.2-mac-arm64.tar.gz"
      sha256 "1e14710b0eaf8f915b490fe87003b0f95cb40ac7184f48e69f77ee213bf809d4"
    else
      on_intel do
        url "https://github.com/snatvb/imp/releases/download/v0.1.2/imp-v0.1.2-linux-x64.tar.gz"
        sha256 "2f16a4148e06aac4e041c0a77d7afeb0d01f3f99361197a158e1bb632341e3c6"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/snatvb/imp/releases/download/v0.1.2/imp-v0.1.2-linux-arm64.tar.gz"
      sha256 "5173383dfa5a7018125653f8d8e48c2385144ebb182ca9b88a9028f2cb39ebfc"
    else
      url "https://github.com/snatvb/imp/releases/download/v0.1.2/imp-v0.1.2-linux-x64.tar.gz"
      sha256 "2f16a4148e06aac4e041c0a77d7afeb0d01f3f99361197a158e1bb632341e3c6"
    end
  end

  def install
    bin.install "imp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/imp --version")
  end
end
