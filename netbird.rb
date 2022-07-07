# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Netbird < Formula
  desc "Netbird project."
  homepage "https://netbird.io/"
  version "0.8.1"
  license "BSD3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/netbirdio/netbird/releases/download/v0.8.1/netbird_0.8.1_darwin_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "7f506ed441284a0cf8a1b7c0910958b694552f9a746fff43c2896500053b1618"

      def install
        bin.install "netbird"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/netbirdio/netbird/releases/download/v0.8.1/netbird_0.8.1_darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "cacd3261628f868011b1ab6a69526539e790d2af0d9229a5c83903db0ca45879"

      def install
        bin.install "netbird"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/netbirdio/netbird/releases/download/v0.8.1/netbird_0.8.1_linux_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "123d1325dc95720a134be7653984362ad6902e3e05b233ac0dc89ee4c825edd6"

      def install
        bin.install "netbird"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/netbirdio/netbird/releases/download/v0.8.1/netbird_0.8.1_linux_armv6.tar.gz", :using => CurlDownloadStrategy
      sha256 "cee7c13c17dd2077244bc46395a3af9a736bf041251877d7ecd9b96354b5fefb"

      def install
        bin.install "netbird"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/netbirdio/netbird/releases/download/v0.8.1/netbird_0.8.1_linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "2e01e6bdc2215b12c0419d7e6acf1823b6a6bc30dfe8e7517900de34e4836ce0"

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
