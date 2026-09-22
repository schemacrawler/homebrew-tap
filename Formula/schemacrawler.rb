# Generated with JReleaser 1.27.0-SNAPSHOT at 2026-09-22T11:23:27.2048488Z

class Schemacrawler < Formula
  desc "Free database schema discovery and comprehension tool"
  homepage "https://www.schemacrawler.com/"
  url "https://github.com/schemacrawler/SchemaCrawler-Installers/releases/download/v17.15.5/schemacrawler-17.15.5-bin.zip"
  version "17.15.5"
  sha256 "4dd3b341b48de3def978c74f2885e20c6bede14d4e3cea47a69d14279a691114"
  license "EPL-1.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/schemacrawler.sh" => "schemacrawler"
  end

  test do
    output = shell_output("#{bin}/schemacrawler --version")
    assert_match "17.15.5", output
  end
end
