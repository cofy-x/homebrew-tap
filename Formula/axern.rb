class Axern < Formula
  desc "Programmable execution platform for isolated AI-agent workloads"
  homepage "https://axern.cofy-x.space"
  version "0.13.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cofy-x/axern/releases/download/v0.13.0/axern_0.13.0_darwin_arm64.tar.gz"
      sha256 "22cbe4f8f2e538e45cd5830c7eab42744e434cf7dbaf0279299b1f10db324a90"
    else
      url "https://github.com/cofy-x/axern/releases/download/v0.13.0/axern_0.13.0_darwin_amd64.tar.gz"
      sha256 "07fbefcb1da4d4ecbb3a71e9500cd68360ef440864449d812d53d3f94bb6ec75"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cofy-x/axern/releases/download/v0.13.0/axern_0.13.0_linux_arm64.tar.gz"
      sha256 "dc0daa42d83a3a3b679422abfa0b7d91809bf36ed8ba8aece480682a00744968"
    else
      url "https://github.com/cofy-x/axern/releases/download/v0.13.0/axern_0.13.0_linux_amd64.tar.gz"
      sha256 "a79d7eaac207886b3c3adead58fbef4c119dd817b7878d86132bfbdaa5921610"
    end
  end

  def install
    bin.install "axern"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axern version")
  end
end
