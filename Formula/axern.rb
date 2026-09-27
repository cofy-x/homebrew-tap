class Axern < Formula
  desc "Programmable execution platform for isolated AI-agent workloads"
  homepage "https://axern.cofy-x.space"
  version "0.12.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cofy-x/axern/releases/download/v0.12.0/axern_0.12.0_darwin_arm64.tar.gz"
      sha256 "bc8e2e3f284bb69643ee63a1a3a360891d338e6e09950e636fe3ef09f57eb04c"
    else
      url "https://github.com/cofy-x/axern/releases/download/v0.12.0/axern_0.12.0_darwin_amd64.tar.gz"
      sha256 "0580586e9288ce7251c9b9fa9d73a1293fb2e3196ae0b540a78ce110a8c4e23e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cofy-x/axern/releases/download/v0.12.0/axern_0.12.0_linux_arm64.tar.gz"
      sha256 "e24c3058da0596eb12c71d02dc5d9bf2027cccbf1221e5de846bb30f6b91c971"
    else
      url "https://github.com/cofy-x/axern/releases/download/v0.12.0/axern_0.12.0_linux_amd64.tar.gz"
      sha256 "ef772ec47189b8db513f98c3a85da3412134f0f76223a245d62bd10e8ea534b5"
    end
  end

  def install
    bin.install "axern"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axern version")
  end
end
