class Axern < Formula
  desc "Programmable execution platform for isolated AI-agent workloads"
  homepage "https://axern.cofy-x.space"
  version "0.8.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cofy-x/axern/releases/download/v0.8.1/axern_0.8.1_darwin_arm64.tar.gz"
      sha256 "40b710d8d6087164c986f9de846f5ad6a0f8cccfab283f285ce7378085134648"
    else
      url "https://github.com/cofy-x/axern/releases/download/v0.8.1/axern_0.8.1_darwin_amd64.tar.gz"
      sha256 "16627713380346beb4915328756592cc78be73c39571299286aec0e5e1fb9799"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cofy-x/axern/releases/download/v0.8.1/axern_0.8.1_linux_arm64.tar.gz"
      sha256 "9ea5dce63c1ac7adfd5ec3d43be688d7b9b12d87f31ebac70592c3628bf4fe0e"
    else
      url "https://github.com/cofy-x/axern/releases/download/v0.8.1/axern_0.8.1_linux_amd64.tar.gz"
      sha256 "c89486d58b887ea18802e1eb115c1251ce2372f501aa377193f9809e1abc890b"
    end
  end

  def install
    bin.install "axern"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axern version")
  end
end
