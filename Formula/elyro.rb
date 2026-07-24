class Elyro < Formula
  desc "Local Linux workspaces for developers and coding agents"
  homepage "https://github.com/cofy-x/elyro"
  version "0.1.6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cofy-x/elyro/releases/download/v0.1.6/elyro_0.1.6_darwin_arm64.tar.gz"
      sha256 "edbe576a2c207e4fbf1bf1dfe69f5fc731b3592321d684a6ed005921d032a58d"
    else
      url "https://github.com/cofy-x/elyro/releases/download/v0.1.6/elyro_0.1.6_darwin_amd64.tar.gz"
      sha256 "25425cfd5befda86db7185266c7347b8f58ba1c87071fbd509624b38ebff0712"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cofy-x/elyro/releases/download/v0.1.6/elyro_0.1.6_linux_arm64.tar.gz"
      sha256 "16c6aaaf986123ace1f501fb24b71f40e0ee745c45b2622fc608c3e17c8b9d9e"
    else
      url "https://github.com/cofy-x/elyro/releases/download/v0.1.6/elyro_0.1.6_linux_amd64.tar.gz"
      sha256 "39131952a45028a699026cecadbb045d2602f95f9fbfbb1981b4df145d97f1d8"
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
