class Elyro < Formula
  desc "Local Linux workspaces for developers and coding agents"
  homepage "https://github.com/cofy-x/elyro"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cofy-x/elyro/releases/download/v0.1.1/elyro_0.1.1_darwin_arm64.tar.gz"
      sha256 "ee00ba35bf606198d8ec3e8b1f787889d49e3ae8899c4b808233bfd89f3cd8ed"
    else
      url "https://github.com/cofy-x/elyro/releases/download/v0.1.1/elyro_0.1.1_darwin_amd64.tar.gz"
      sha256 "cbdda91c673a3af6c355ff9450ebc4cdff705522be6b3ee50dfdef885f3ffa75"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cofy-x/elyro/releases/download/v0.1.1/elyro_0.1.1_linux_arm64.tar.gz"
      sha256 "5dce33525b21fcd43fcf6d83ecc8c4a2eba202763a7edc0f9c08c4d76198e06c"
    else
      url "https://github.com/cofy-x/elyro/releases/download/v0.1.1/elyro_0.1.1_linux_amd64.tar.gz"
      sha256 "d24b45bae17ff0c07878bbe5ba8ea316b0943a0e575ae06bf6cc36e735ff0c2a"
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
