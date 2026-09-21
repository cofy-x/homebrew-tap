class Axern < Formula
  desc "Programmable execution platform for isolated AI-agent workloads"
  homepage "https://axern.cofy-x.space"
  version "0.11.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cofy-x/axern/releases/download/v0.11.0/axern_0.11.0_darwin_arm64.tar.gz"
      sha256 "3031ea9e8d2beb7d23913b2e90aca97d30d04dba73442c217e3fdb6f75da752f"
    else
      url "https://github.com/cofy-x/axern/releases/download/v0.11.0/axern_0.11.0_darwin_amd64.tar.gz"
      sha256 "87a4b4fcb8cecb8f822e4217db5ee44db50c98c4ec0f779f88ca7f571fdd4949"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cofy-x/axern/releases/download/v0.11.0/axern_0.11.0_linux_arm64.tar.gz"
      sha256 "e488ff42f78fa3dcd201af2d1227d891777635fadeb7a7f33bbb3aa3021ec449"
    else
      url "https://github.com/cofy-x/axern/releases/download/v0.11.0/axern_0.11.0_linux_amd64.tar.gz"
      sha256 "00c8768ece99e3201ebd4c44f6e4179b3f8ef38740317732ada38afd936c0c1e"
    end
  end

  def install
    bin.install "axern"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axern version")
  end
end
