class Elyro < Formula
  desc "Local Linux workspaces for developers and coding agents"
  homepage "https://github.com/cofy-x/elyro"
  version "0.1.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cofy-x/elyro/releases/download/v0.1.4/elyro_0.1.4_darwin_arm64.tar.gz"
      sha256 "e3cb44be15393c6b2e8d973c6f5f9ce971d0384005fcaf9ebe6e9caf57bc9f52"
    else
      url "https://github.com/cofy-x/elyro/releases/download/v0.1.4/elyro_0.1.4_darwin_amd64.tar.gz"
      sha256 "2a39f6eedce7ef4301115ed544ab257144c58b149eb970bacfdf52cbaffe6f63"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cofy-x/elyro/releases/download/v0.1.4/elyro_0.1.4_linux_arm64.tar.gz"
      sha256 "c98be6868a9787d42e7cbc70c3f2bfea0ac6fe7bdaf7dd916be09c5dfe88c204"
    else
      url "https://github.com/cofy-x/elyro/releases/download/v0.1.4/elyro_0.1.4_linux_amd64.tar.gz"
      sha256 "1994767a497f836dc080ba2a95cfc597b06fa1134c669006029ca8ee4fa28f1c"
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
