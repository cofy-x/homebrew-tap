class Axern < Formula
  desc "Programmable execution platform for isolated AI-agent workloads"
  homepage "https://axern.cofy-x.space"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cofy-x/axern/releases/download/v0.5.0/axern_0.5.0_darwin_arm64.tar.gz"
      sha256 "f2fb0dd64e098abdf2ff50fb5abbcbdb5f87a17d99e05d2a25f773bc919c5055"
    else
      url "https://github.com/cofy-x/axern/releases/download/v0.5.0/axern_0.5.0_darwin_amd64.tar.gz"
      sha256 "353edd6efbb171f37e2bd640e3ef56d9d94cb5e7cf28d5f439eefc4cfdb9c586"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cofy-x/axern/releases/download/v0.5.0/axern_0.5.0_linux_arm64.tar.gz"
      sha256 "f6b969cdb6082d48075daeffe3d23961e97a85eded41d790bf8e706dee09d228"
    else
      url "https://github.com/cofy-x/axern/releases/download/v0.5.0/axern_0.5.0_linux_amd64.tar.gz"
      sha256 "fd098fe5fc3c3e683255a050676f497e997bc03c2771c7e11e6d3471744a972f"
    end
  end

  def install
    bin.install "axern"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axern version")
  end
end
