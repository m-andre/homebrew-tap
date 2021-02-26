# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Deploychain < Formula
  desc "Simple app to demonstrate deployment chain"
  homepage "https://www.andre.sk"
  version "0.0.2"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://s3.andre.sk/deploychain/deploychain/0.0.2/deploychain_0.0.2_darwin_amd64.tar.gz", :using => CurlDownloadStrategy
    sha256 "eb051eed93e1cb8c19826f87d5639b02174225da23bfcab0f83ad2eded7d1c47"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://s3.andre.sk/deploychain/deploychain/0.0.2/deploychain_0.0.2_darwin_arm64.tar.gz", :using => CurlDownloadStrategy
    sha256 "37308ec22f7f358bc954f2813db9ddc1d1de2bbc40bde41d8b8f2dff9e10ac80"
  end

  def install
    bin.install "deploychain"
  end

  test do
    system "#{bin}/program --version"
  end
end
