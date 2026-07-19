class Elyro < Formula
  desc "Local Linux workspaces for developers and coding agents"
  homepage "https://github.com/cofy-x/elyro"
  version "0.1.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cofy-x/elyro/releases/download/v0.1.2/elyro_0.1.2_darwin_arm64.tar.gz"
      sha256 "d8a185e308f336bf23ad8b9f5446b52ff60771d16c07c2cd3b6a1a59a082d6df"
    else
      url "https://github.com/cofy-x/elyro/releases/download/v0.1.2/elyro_0.1.2_darwin_amd64.tar.gz"
      sha256 "99948c633138e4c1ccce055c35ac5bc4b67a8683d6dcb7bbdff889d152058474"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cofy-x/elyro/releases/download/v0.1.2/elyro_0.1.2_linux_arm64.tar.gz"
      sha256 "25c4ea926ef5bc98e58866719f27a7a625abf6a18e8a28cd4eda283e7b8ca1e6"
    else
      url "https://github.com/cofy-x/elyro/releases/download/v0.1.2/elyro_0.1.2_linux_amd64.tar.gz"
      sha256 "73d91d3540e84c7ad87109066813f769b23cbe4fd2f8b0ae9d672899857cc5ad"
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
