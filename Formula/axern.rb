class Axern < Formula
  desc "Programmable execution platform for isolated AI-agent workloads"
  homepage "https://axern.cofy-x.space"
  version "0.8.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cofy-x/axern/releases/download/v0.8.0/axern_0.8.0_darwin_arm64.tar.gz"
      sha256 "76e184ab4d740a45157c9e0772ded929303055d5930ada56212e13b869bea1cb"
    else
      url "https://github.com/cofy-x/axern/releases/download/v0.8.0/axern_0.8.0_darwin_amd64.tar.gz"
      sha256 "05f77b513a17e8481185ab651703163555dcf220667d7d5870675903cd0351ae"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cofy-x/axern/releases/download/v0.8.0/axern_0.8.0_linux_arm64.tar.gz"
      sha256 "a211665b66436d4132b7e2be9bd1452f5abe5239b7497a49a22bb3b658d6d68d"
    else
      url "https://github.com/cofy-x/axern/releases/download/v0.8.0/axern_0.8.0_linux_amd64.tar.gz"
      sha256 "9ba3665d73dbb0accda7f2fc614c4b5e5a5ded6198d2b8aa05019d97470341f6"
    end
  end

  def install
    bin.install "axern"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axern version")
  end
end
