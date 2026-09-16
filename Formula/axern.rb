class Axern < Formula
  desc "Programmable execution platform for isolated AI-agent workloads"
  homepage "https://axern.cofy-x.space"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cofy-x/axern/releases/download/v0.7.0/axern_0.7.0_darwin_arm64.tar.gz"
      sha256 "4a8fbc4ba69c12270483f8de0f0096ebffccc03e33065c611d80f29f522e0a1f"
    else
      url "https://github.com/cofy-x/axern/releases/download/v0.7.0/axern_0.7.0_darwin_amd64.tar.gz"
      sha256 "967cc64ba104e750064a02f1a31fd0c7359251bf0677f5f8101270ef06a446fa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cofy-x/axern/releases/download/v0.7.0/axern_0.7.0_linux_arm64.tar.gz"
      sha256 "eed22af5ffca2a5bbb542f9d52d3bc69682d0564b78fe4ff0851652061925161"
    else
      url "https://github.com/cofy-x/axern/releases/download/v0.7.0/axern_0.7.0_linux_amd64.tar.gz"
      sha256 "68bb568fc0e099d14a4cf288b6eff461cee5b4a949754ce766ef6c00ebfc07bb"
    end
  end

  def install
    bin.install "axern"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axern version")
  end
end
