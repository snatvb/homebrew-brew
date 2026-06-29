class Imp < Formula
  desc "TypeScript/JavaScript runtime — one binary, no node_modules"
  homepage "https://github.com/snatvb/imp"
  version "v0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/snatvb/imp/releases/download/v#{version}/imp-#{version}-mac-arm64.tar.gz"
      sha256 "a63fe9d90c35eb0332a27d9acc742c64a6a69fdfd268163526b3866606d9bd8c"
    else
      on_intel do
        url "https://github.com/snatvb/imp/releases/download/v#{version}/imp-#{version}-linux-x64.tar.gz"
        sha256 "4737e7e5b73e2611f56038592b892028650f38aa734f255715255949363639bf"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/snatvb/imp/releases/download/v#{version}/imp-#{version}-linux-arm64.tar.gz"
      sha256 "a77448c7e5ededcfb0874647dabc7b429cf69b770f343b586f23d83e689b091c"
    else
      url "https://github.com/snatvb/imp/releases/download/v#{version}/imp-#{version}-linux-x64.tar.gz"
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
