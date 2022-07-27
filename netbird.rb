# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Netbird < Formula
  desc "Netbird project."
  homepage "https://netbird.io/"
  version "0.8.4"
  license "BSD3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/netbirdio/netbird/releases/download/v0.8.4/netbird_0.8.4_darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "ae58458ef474ab7e267bba2f163187ca447e9f58f8f26d327e83c252d50529e4"

      def install
        bin.install "netbird"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/netbirdio/netbird/releases/download/v0.8.4/netbird_0.8.4_darwin_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "bf73471e4dc7f85810f417266cd51dcff54858bae86a505fb7203ee0b62af87a"

      def install
        bin.install "netbird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/netbirdio/netbird/releases/download/v0.8.4/netbird_0.8.4_linux_armv6.tar.gz", :using => CurlDownloadStrategy
      sha256 "ffa83e1244f0c3cc03d0c0306695c7d42a5215e8bb2c8c322a9e4bd245f9965e"

      def install
        bin.install "netbird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/netbirdio/netbird/releases/download/v0.8.4/netbird_0.8.4_linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "1009cbbe028c508f212b5c71dde7705a2e6e9e889cdcc04bf07cab49b200c010"

      def install
        bin.install "netbird"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/netbirdio/netbird/releases/download/v0.8.4/netbird_0.8.4_linux_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "3b5cfa8513b3fc97065f3179c2d04814dcfc3a37ab62162721f1192f2a62cdcc"

      def install
        bin.install "netbird"
      end
    end
  end

  conflicts_with "wiretrustee"

  test do
    system "#{bin}/netbird version"
  end
end
