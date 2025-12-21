class Fdc < Formula
  desc "A Rust-powered CLI tool for elegantly organizing and curating files"
  homepage "https://github.com/nicejade/fine-directory-curator"
  url "https://github.com/nicejade/fine-directory-curator/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "6f7ffa76f19d0e91c6d083db932e0bca9ddcbe6e83d94796bba8459f7ec0b607"
  license "MIT"

  head "https://github.com/nicejade/fine-directory-curator.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    # 验证二进制文件是否存在并可以运行
    assert_match "fdc", shell_output("#{bin}/fdc --version")
  end
end

