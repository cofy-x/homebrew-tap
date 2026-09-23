class Axern < Formula
  desc "Programmable execution platform for isolated AI-agent workloads"
  homepage "https://axern.cofy-x.space"
  version "0.11.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cofy-x/axern/releases/download/v0.11.3/axern_0.11.3_darwin_arm64.tar.gz"
      sha256 "db46e97c9ceb0abde7284c21f8d2cea3a5d73762aef6c4b4f9665b1798aad7fe"
    else
      url "https://github.com/cofy-x/axern/releases/download/v0.11.3/axern_0.11.3_darwin_amd64.tar.gz"
      sha256 "a2a9a13bf9c667fb588144d821a7cea01f70ac28b0723a945f12ffa2a266aa3d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cofy-x/axern/releases/download/v0.11.3/axern_0.11.3_linux_arm64.tar.gz"
      sha256 "959eee078ce9e73bb64202685c798c1b9d4348be3dd75a3abe10ed853d177473"
    else
      url "https://github.com/cofy-x/axern/releases/download/v0.11.3/axern_0.11.3_linux_amd64.tar.gz"
      sha256 "0c207480bd169baaac75cb85d7d93de4ad9b5d12837f9326ef9bf241f6942685"
    end
  end

  def install
    bin.install "axern"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axern version")
  end
end
