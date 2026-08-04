class Axern < Formula
  desc "Programmable execution platform for isolated AI-agent workloads"
  homepage "https://axern.cofy-x.space"
  version "0.4.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cofy-x/axern/releases/download/v0.4.1/axern_0.4.1_darwin_arm64.tar.gz"
      sha256 "6156f64b96cb733c44aa1ac7d62dc82c6bedd2361460b72afab2023ffdac0950"
    else
      url "https://github.com/cofy-x/axern/releases/download/v0.4.1/axern_0.4.1_darwin_amd64.tar.gz"
      sha256 "be43e5727a656ecd44d324ea8f6b84d04abdb57f11a93f324c6585923cdc7595"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cofy-x/axern/releases/download/v0.4.1/axern_0.4.1_linux_arm64.tar.gz"
      sha256 "883958d5ae8f492b8b606df6734d945aae897e01fe7382924d0239015504493b"
    else
      url "https://github.com/cofy-x/axern/releases/download/v0.4.1/axern_0.4.1_linux_amd64.tar.gz"
      sha256 "f44defe48f882848e25e2ba96e97146dca356636d3d9a74ef4048ab98387df2d"
    end
  end

  def install
    bin.install "axern"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axern version")
  end
end
