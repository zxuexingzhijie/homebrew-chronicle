# typed: false
# frozen_string_literal: true

class Chronicle < Formula
  desc "AI-driven CLI interactive novel game"
  homepage "https://github.com/zxuexingzhijie/clichat"
  version "1.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zxuexingzhijie/clichat/releases/download/v#{version}/chronicle-darwin-arm64.tar.gz"
      sha256 "43130303d5507e6d78e36d3b9693d0d1926e4527a6fa89dbced41437fc1131f8"
    else
      url "https://github.com/zxuexingzhijie/clichat/releases/download/v#{version}/chronicle-darwin-x64.tar.gz"
      sha256 "a0950860afa5cb3c5f952c8a0639cce602ad37455d5019ff7bda9c4fa140800a"
    end
  end

  on_linux do
    url "https://github.com/zxuexingzhijie/clichat/releases/download/v#{version}/chronicle-linux-x64.tar.gz"
    sha256 "1561058b104443f2cb0c380b536a9a6f8e35be922afdbbbc3b15f7855de783c1"
  end

  def install
    bin.install "chronicle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chronicle --version")
  end
end
