class appName < Formula
  desc "CLI tool for example.com"
  homepage "https://www.example.com/"
  url "https://github.com/example/homebrew-appName/releases/download/list/appName-mac-0.0.6.tar.gz"
  sha256 "b5b3e04a9c7c9007e9f4f713abd1e0fgrebbabbc78876b1bf71cae33a2dd5d3d"

  def install
    bin.install "appName"
  end

  test do
    system "#{bin}/appnName", "--help"
  end
end
