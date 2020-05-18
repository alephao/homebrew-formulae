class Stencil < Formula
  desc "Render Stencil templates from a JSON or YAML data source"
  homepage "https://github.com/alephao/stencil-cli"
  url "https://github.com/alephao/stencil-cli.git"
  version "v0.0.6"
  sha256 "b93b9442f153a3b9735a952c7a9de7d449ab3b40"

  depends_on :xcode => ["11.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/stencil"
  end
end
