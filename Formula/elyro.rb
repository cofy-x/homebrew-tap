class Elyro < Formula
  desc "Local Linux workspaces for developers and coding agents"
  homepage "https://github.com/cofy-x/elyro"
  version "0.1.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cofy-x/elyro/releases/download/v0.1.5/elyro_0.1.5_darwin_arm64.tar.gz"
      sha256 "26ba68a53a6cbe3b70e3c7183cb330ba303b16132e71fda4f8b604f94db77122"
    else
      url "https://github.com/cofy-x/elyro/releases/download/v0.1.5/elyro_0.1.5_darwin_amd64.tar.gz"
      sha256 "56ca574e7466f4ad1a2ec95d17a54854c00b7cfeda6e758829471d71898742f7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cofy-x/elyro/releases/download/v0.1.5/elyro_0.1.5_linux_arm64.tar.gz"
      sha256 "0ac3351f94ca6c3baf275055ea4442b3c40cc01ada35e4b34281636ed3744deb"
    else
      url "https://github.com/cofy-x/elyro/releases/download/v0.1.5/elyro_0.1.5_linux_amd64.tar.gz"
      sha256 "14db1b2ad6c364d780f8805beec0cc349f24ab924362520bac60ca93c6ae1f80"
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
