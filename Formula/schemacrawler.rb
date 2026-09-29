# Generated with JReleaser 1.27.0-SNAPSHOT at 2026-09-29T23:08:48.629952Z

class Schemacrawler < Formula
  desc "Free database schema discovery and comprehension tool"
  homepage "https://www.schemacrawler.com/"
  url "https://github.com/schemacrawler/SchemaCrawler-Installers/releases/download/v17.15.7/schemacrawler-17.15.7-bin.zip"
  version "17.15.7"
  sha256 "5d318ef93419c07a25cbabeb4c6dab9b8ac308aecb8f3ec2d7433f08bdf78cda"
  license "EPL-1.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/schemacrawler.sh" => "schemacrawler"
  end

  test do
    output = shell_output("#{bin}/schemacrawler --version")
    assert_match "17.15.7", output
  end
end
