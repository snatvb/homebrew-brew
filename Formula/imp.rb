class Imp < Formula
  desc "TypeScript/JavaScript runtime — one binary, no node_modules"
  homepage "https://github.com/snatvb/imp"
  version "v0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/snatvb/imp/releases/download/v0.1.3/imp-v0.1.3-mac-arm64.tar.gz"
      sha256 "ea254c2dd77ac9fdf43f39a3161886f02729f7c9baa3e47c35d493993ac0b892"
    else
      on_intel do
        url "https://github.com/snatvb/imp/releases/download/v0.1.3/imp-v0.1.3-linux-x64.tar.gz"
        sha256 "a2cef118349da28c05bde85b518456558c09ad76c023a4c3a940fe7a30f75391"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/snatvb/imp/releases/download/v0.1.3/imp-v0.1.3-linux-arm64.tar.gz"
      sha256 "235343e6713155e612f571e9d865f6797a2d6cbb359538547534661d4ed048bf"
    else
      url "https://github.com/snatvb/imp/releases/download/v0.1.3/imp-v0.1.3-linux-x64.tar.gz"
      sha256 "a2cef118349da28c05bde85b518456558c09ad76c023a4c3a940fe7a30f75391"
    end
  end

  def install
    bin.install "imp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/imp --version")
  end
end
