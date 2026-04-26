# typed: false
# frozen_string_literal: true

class Chronicle < Formula
  desc "AI-driven CLI interactive novel game"
  homepage "https://github.com/zxuexingzhijie/clichat"
  version "1.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zxuexingzhijie/clichat/releases/download/v#{version}/chronicle-darwin-arm64.tar.gz"
      sha256 "929bd631f68c247106757f0a14cbe40e039f6ff58b45a38490ac138f0c3fa25c"
    else
      url "https://github.com/zxuexingzhijie/clichat/releases/download/v#{version}/chronicle-darwin-x64.tar.gz"
      sha256 "5484c8bbe6c030868ba1225770a23a616e4c9f78e72fd5eca63c984d54a1b500"
    end
  end

  on_linux do
    url "https://github.com/zxuexingzhijie/clichat/releases/download/v#{version}/chronicle-linux-x64.tar.gz"
    sha256 "74cf50469c6f52a94c9b04b9b015cabf6b238ef49b9fcd701f6c941de8e932cd"
  end

  def install
    bin.install "chronicle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chronicle --version")
  end
end
