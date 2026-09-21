class Axern < Formula
  desc "Programmable execution platform for isolated AI-agent workloads"
  homepage "https://axern.cofy-x.space"
  version "0.11.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cofy-x/axern/releases/download/v0.11.2/axern_0.11.2_darwin_arm64.tar.gz"
      sha256 "b13f2302fc4a5f6919493a7a76e6d7b3dfa0a1ff850ea08d9f34704dc65f4304"
    else
      url "https://github.com/cofy-x/axern/releases/download/v0.11.2/axern_0.11.2_darwin_amd64.tar.gz"
      sha256 "f549a48151a55339655f02f0410f86fb8415205b411c4c526ebc7254b9816351"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cofy-x/axern/releases/download/v0.11.2/axern_0.11.2_linux_arm64.tar.gz"
      sha256 "bcffb804b65baa6415c6dc69e1e9fe22f11d8fd81d1e3ba6414a34b84f2a8ac2"
    else
      url "https://github.com/cofy-x/axern/releases/download/v0.11.2/axern_0.11.2_linux_amd64.tar.gz"
      sha256 "40e546d07873503590bd3a4d659309c365b8c9cc223472781d25c646cd9899ed"
    end
  end

  def install
    bin.install "axern"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axern version")
  end
end
