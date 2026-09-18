class Axern < Formula
  desc "Programmable execution platform for isolated AI-agent workloads"
  homepage "https://axern.cofy-x.space"
  version "0.9.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cofy-x/axern/releases/download/v0.9.1/axern_0.9.1_darwin_arm64.tar.gz"
      sha256 "06bfbd0882af9ecced35f38be1ff67d61716de57acec4d57a724c3f0518f53d8"
    else
      url "https://github.com/cofy-x/axern/releases/download/v0.9.1/axern_0.9.1_darwin_amd64.tar.gz"
      sha256 "83b1c81e37af4ee55d6830bc941536944b0e7338ed8096e0e5b0270030f948b1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cofy-x/axern/releases/download/v0.9.1/axern_0.9.1_linux_arm64.tar.gz"
      sha256 "4f0ad2de085d32d4d4a718d4b56274f2b9f8c4661dea671af11bb624cd5be85c"
    else
      url "https://github.com/cofy-x/axern/releases/download/v0.9.1/axern_0.9.1_linux_amd64.tar.gz"
      sha256 "4bfcd035ed12150366ca071a6dd0fa8eb5be938a3c96106bb8162e1ba20a318e"
    end
  end

  def install
    bin.install "axern"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axern version")
  end
end
