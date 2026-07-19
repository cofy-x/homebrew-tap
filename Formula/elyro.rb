class Elyro < Formula
  desc "Local Linux workspaces for developers and coding agents"
  homepage "https://github.com/cofy-x/elyro"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cofy-x/elyro/releases/download/v0.1.1/elyro_0.1.1_darwin_arm64.tar.gz"
      sha256 "7a97939b3db3d7af780dafe9a1983a27b21951a740c57b9cad3aa5565f745b49"
    else
      url "https://github.com/cofy-x/elyro/releases/download/v0.1.1/elyro_0.1.1_darwin_amd64.tar.gz"
      sha256 "65808be2538d03a0d11a85b5ea3a55abf76aed39032019bf0f260f8eb4b6cd51"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cofy-x/elyro/releases/download/v0.1.1/elyro_0.1.1_linux_arm64.tar.gz"
      sha256 "8a2463ad566a976e6e436570bae58d8b1477b54a0c1153d4767295e2b2207449"
    else
      url "https://github.com/cofy-x/elyro/releases/download/v0.1.1/elyro_0.1.1_linux_amd64.tar.gz"
      sha256 "24a8fa4c24f6de28126e85f19e575d97d0b0a1aa1b16ea409c3b6d41445d430f"
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
