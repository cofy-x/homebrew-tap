class Axern < Formula
  desc "Programmable execution platform for isolated AI-agent workloads"
  homepage "https://axern.cofy-x.space"
  version "0.6.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cofy-x/axern/releases/download/v0.6.2/axern_0.6.2_darwin_arm64.tar.gz"
      sha256 "0c8be3694018bce34b0b0c33227089d03b842c49f7e0d5afe68055a1b62d01ac"
    else
      url "https://github.com/cofy-x/axern/releases/download/v0.6.2/axern_0.6.2_darwin_amd64.tar.gz"
      sha256 "e77ccf72e9cc638fcdd598bdbbd816ada72588ffad70a020ede4fb4428f8e2e7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cofy-x/axern/releases/download/v0.6.2/axern_0.6.2_linux_arm64.tar.gz"
      sha256 "6af1735ba0f75bd721189a831f1847b6cf8df7a3b69a4a35daf94f03ddec1393"
    else
      url "https://github.com/cofy-x/axern/releases/download/v0.6.2/axern_0.6.2_linux_amd64.tar.gz"
      sha256 "8b01cd5910cb3ee44e4fd39a6b0bafb8135a2baee6e4c1557c9d16b9c65845a1"
    end
  end

  def install
    bin.install "axern"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axern version")
  end
end
