class Mddir < Formula
  desc "Local personal knowledge base — save web pages as markdown"
  homepage "https://github.com/AliOsm/mddir"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AliOsm/mddir/releases/download/#{version}/mddir-macos-arm64-#{version}"
      sha256 "bd035a7a701835507b286e1575c55e84c8dfd7cd1fa18708320125003e856550"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AliOsm/mddir/releases/download/#{version}/mddir-linux-arm64-#{version}"
      sha256 "0df437561d77bcf56c52352a7aee6af5743257baf59cbdfeb31e512e709c68fa"
    end

    on_intel do
      url "https://github.com/AliOsm/mddir/releases/download/#{version}/mddir-linux-amd64-#{version}"
      sha256 "8a500960645e6417cccf363f06fc1aeb1ddde2a0405b8adf81c9b617e81ced11"
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
