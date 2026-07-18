class Elyro < Formula
  desc "Local Linux workspaces for developers and coding agents"
  homepage "https://github.com/cofy-x/elyro"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cofy-x/elyro/releases/download/v0.1.0/elyro_0.1.0_darwin_arm64.tar.gz"
      sha256 "b8ae011d396f667b6f9a084ba42d87e7b89529cf2ce864e8333164133d4b94ae"
    else
      url "https://github.com/cofy-x/elyro/releases/download/v0.1.0/elyro_0.1.0_darwin_amd64.tar.gz"
      sha256 "258447d424c8915cb6d33939c4044d391eaac0d458957760f8c64afe23dafe63"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cofy-x/elyro/releases/download/v0.1.0/elyro_0.1.0_linux_arm64.tar.gz"
      sha256 "5894ac122435018c3bccb9ea45bf857af2ba48df6cac068d0bae0aa7d95c13b1"
    else
      url "https://github.com/cofy-x/elyro/releases/download/v0.1.0/elyro_0.1.0_linux_amd64.tar.gz"
      sha256 "9e5b00992c88b0753e1ae54185424b821a649a29ce644190e961b3dec1cb1953"
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
