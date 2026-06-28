class Imp < Formula
  desc "TypeScript/JavaScript runtime — one binary, no node_modules"
  homepage "https://github.com/snatvb/imp"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/snatvb/imp/releases/download/v#{version}/imp-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_MAC_ARM64_SHA256"
    else
      url "https://github.com/snatvb/imp/releases/download/v#{version}/imp-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_MAC_X64_SHA256"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/snatvb/imp/releases/download/v#{version}/imp-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER_LINUX_ARM64_SHA256"
    else
      url "https://github.com/snatvb/imp/releases/download/v#{version}/imp-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER_LINUX_X64_SHA256"
    end
  end

  def install
    bin.install "imp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/imp --version")
  end
end
