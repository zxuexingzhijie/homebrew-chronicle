# typed: false
# frozen_string_literal: true

class Chronicle < Formula
  desc "AI-driven CLI interactive novel game"
  homepage "https://github.com/zxuexingzhijie/clichat"
  version "1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zxuexingzhijie/clichat/releases/download/v#{version}/chronicle-darwin-arm64.tar.gz"
      sha256 "d2f9e7ae9621feda3e2924479b8564241750bb7cdc7d224dcd6d219ee4c13ae9"
    else
      url "https://github.com/zxuexingzhijie/clichat/releases/download/v#{version}/chronicle-darwin-x64.tar.gz"
      sha256 "6c3cd9b4f5f6928856baf501c3352d29b7643788932b64d71004a0017712de6a"
    end
  end

  on_linux do
    url "https://github.com/zxuexingzhijie/clichat/releases/download/v#{version}/chronicle-linux-x64.tar.gz"
    sha256 "c6f4003b0a71951f7f78dd454f9978bbc367e7a41d3eeb5b06aaf56887b2d861"
  end

  def install
    bin.install "chronicle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chronicle --version")
  end
end
