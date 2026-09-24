class Axern < Formula
  desc "Programmable execution platform for isolated AI-agent workloads"
  homepage "https://axern.cofy-x.space"
  version "0.11.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cofy-x/axern/releases/download/v0.11.4/axern_0.11.4_darwin_arm64.tar.gz"
      sha256 "01f78aaeefa9dda6d0f6a3ed679f9b328f21b835960320195e34859de2a63239"
    else
      url "https://github.com/cofy-x/axern/releases/download/v0.11.4/axern_0.11.4_darwin_amd64.tar.gz"
      sha256 "0f115e567f5a238e126cb054f96b599eb020196d36ef4ceb7a7004ae2cb85dc1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cofy-x/axern/releases/download/v0.11.4/axern_0.11.4_linux_arm64.tar.gz"
      sha256 "014531fd730314c093b27fd3052049b88a5babe6882cfe04e2e066ead250c230"
    else
      url "https://github.com/cofy-x/axern/releases/download/v0.11.4/axern_0.11.4_linux_amd64.tar.gz"
      sha256 "596a6f1b8db6351316a7d0dbb5ef0f061f0c3b0391c717ac1c92971e00da3666"
    end
  end

  def install
    bin.install "axern"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axern version")
  end
end
