class Axern < Formula
  desc "Programmable execution platform for isolated AI-agent workloads"
  homepage "https://axern.cofy-x.space"
  version "0.5.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cofy-x/axern/releases/download/v0.5.1/axern_0.5.1_darwin_arm64.tar.gz"
      sha256 "8f4a4c4a21daf1178f20b5e9df38b1e0f0351ee509df0b5dbd84d1b009a9c192"
    else
      url "https://github.com/cofy-x/axern/releases/download/v0.5.1/axern_0.5.1_darwin_amd64.tar.gz"
      sha256 "5f0cd56438d45319d159e6ed4204f3d7ac6bc89a8597581475ff005d9ac9d4f8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cofy-x/axern/releases/download/v0.5.1/axern_0.5.1_linux_arm64.tar.gz"
      sha256 "ffd5c967a61c6e72f2a0a4067b874327717b6c93055523d9e68f9baab4ad3c12"
    else
      url "https://github.com/cofy-x/axern/releases/download/v0.5.1/axern_0.5.1_linux_amd64.tar.gz"
      sha256 "c455755b041eb1f99c30f3fbf980e91dd8af9f0111c970dd02ef5d56b9882a30"
    end
  end

  def install
    bin.install "axern"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axern version")
  end
end
