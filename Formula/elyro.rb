class Elyro < Formula
  desc "Local Linux workspaces for developers and coding agents"
  homepage "https://github.com/cofy-x/elyro"
  version "0.1.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cofy-x/elyro/releases/download/v0.1.3/elyro_0.1.3_darwin_arm64.tar.gz"
      sha256 "f61490d19d977df42bdd8b509d28862b98f9d5e67934a642985261b175eec06c"
    else
      url "https://github.com/cofy-x/elyro/releases/download/v0.1.3/elyro_0.1.3_darwin_amd64.tar.gz"
      sha256 "d7ec02404e3e550aa61525067b56ecc98ee1cac0401836210f71cbc0d250acd9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cofy-x/elyro/releases/download/v0.1.3/elyro_0.1.3_linux_arm64.tar.gz"
      sha256 "abebb3ee3b2db80e3984251ed17ab8cd12842d634691ac07d8f1cf6949eaa4c9"
    else
      url "https://github.com/cofy-x/elyro/releases/download/v0.1.3/elyro_0.1.3_linux_amd64.tar.gz"
      sha256 "8e73c5b79811a03859e76be691992030bd050ac0d77f96bb45407267dee27105"
    end
  end

  def install
    bin.install "elyro"
  end

  test do
    assert_match %Q("version": "v#{version}"), shell_output("#{bin}/elyro version --json")
    assert_match "use-elyro-workspace", shell_output("#{bin}/elyro skill show")
  end
end
