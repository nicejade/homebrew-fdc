class Fdc < Formula
  desc "A fast, elegant Rust CLI for keeping your macOS & Linux folders tidy"
  homepage "https://github.com/nicejade/fine-directory-curator"
  version "0.2.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/nicejade/fine-directory-curator/releases/download/v0.2.0/fdc-macos-aarch64.tar.gz"
      sha256 "b609024dcfea0ef2b1b008275a21b324cfb5b261a3a7939a76d0552323953621"
    else
      url "https://github.com/nicejade/fine-directory-curator/releases/download/v0.2.0/fdc-macos-x86_64.tar.gz"
      sha256 "7a26e9f9d3d52cb4d427998f610f964f2e035fae4e8139596c99310f2eaa6715"
    end
  elsif OS.linux?
    url "https://github.com/nicejade/fine-directory-curator/releases/download/v0.2.0/fdc-linux-x86_64.tar.gz"
    sha256 "e401504302310b759c12d6000dc986ef5ec1b57bb6b0b969708ed219ffcf9ec8"
  end

  def install
    bin.install "fdc"
  end

  test do
    system "#{bin}/fdc", "--version"
  end
end
