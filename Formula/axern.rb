class Axern < Formula
  desc "Programmable execution platform for isolated AI-agent workloads"
  homepage "https://axern.cofy-x.space"
  version "0.10.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cofy-x/axern/releases/download/v0.10.0/axern_0.10.0_darwin_arm64.tar.gz"
      sha256 "850d00693170690e4fa0dd31a0424e43858d44f4a16ad940d46f5f856995d597"
    else
      url "https://github.com/cofy-x/axern/releases/download/v0.10.0/axern_0.10.0_darwin_amd64.tar.gz"
      sha256 "174ce1c324183669b750483a90221924ed04bbf754888d03e4eb824c62e6d552"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cofy-x/axern/releases/download/v0.10.0/axern_0.10.0_linux_arm64.tar.gz"
      sha256 "93a847349eb8b6289c25d1f7d2c76771e6797b3169c24cc5d0d0bfae2e93c860"
    else
      url "https://github.com/cofy-x/axern/releases/download/v0.10.0/axern_0.10.0_linux_amd64.tar.gz"
      sha256 "bc2605720be1505a9cc02cb87ec36440aaf253cd5add5ea453dd68ce3ca24592"
    end
  end

  def install
    bin.install "axern"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axern version")
  end
end
