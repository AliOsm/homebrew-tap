class Mddir < Formula
  desc "Local personal knowledge base — save web pages as markdown"
  homepage "https://github.com/AliOsm/mddir"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AliOsm/mddir/releases/download/#{version}/mddir-macos-arm64-#{version}"
      sha256 "ad244e521197f83b80aeac6bbe3ba5a2f9d29611d8426964d8d6bb5bb9f9ba17"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AliOsm/mddir/releases/download/#{version}/mddir-linux-arm64-#{version}"
      sha256 "dc15120780d6211ba562e932dd3fca08d3bb0cb2d21ffee4c9053546ebccc0e6"
    end

    on_intel do
      url "https://github.com/AliOsm/mddir/releases/download/#{version}/mddir-linux-amd64-#{version}"
      sha256 "d8f648fa933ba2e2c8c22297782ecf56abdfee046439ba8ee3006f9565a0295a"
    end
  end

  def install
    binary_name = stable.url.split("/").last
    bin.install binary_name => "mddir"
  end

  test do
    assert_match "mddir #{version}", shell_output("#{bin}/mddir version")
  end
end
