class Axern < Formula
  desc "Programmable execution platform for isolated AI-agent workloads"
  homepage "https://axern.cofy-x.space"
  version "0.12.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cofy-x/axern/releases/download/v0.12.1/axern_0.12.1_darwin_arm64.tar.gz"
      sha256 "22e19a8b12007850e668d6c77f1f5c37ffcdc6cd7a4370672c7a11e94361c43a"
    else
      url "https://github.com/cofy-x/axern/releases/download/v0.12.1/axern_0.12.1_darwin_amd64.tar.gz"
      sha256 "9cda5b676f83ed081d8e6d4a61d0778582aeecf01a63e46705b76f3b906ff821"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cofy-x/axern/releases/download/v0.12.1/axern_0.12.1_linux_arm64.tar.gz"
      sha256 "59a66d3433d8df926615e75c339ff44c6649be9497b4f969938d5201c1ce6d54"
    else
      url "https://github.com/cofy-x/axern/releases/download/v0.12.1/axern_0.12.1_linux_amd64.tar.gz"
      sha256 "6fdb2adb8155e0869267b8828f169c3db4d6e45b5bd787b6910f17ce07dd539b"
    end
  end

  def install
    bin.install "axern"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/axern version")
  end
end
