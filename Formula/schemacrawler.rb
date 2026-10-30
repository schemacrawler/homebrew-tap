# Generated with JReleaser 1.27.0-SNAPSHOT at 2026-10-30T12:27:55.7240436Z

class Schemacrawler < Formula
  desc "Free database schema discovery and comprehension tool"
  homepage "https://www.schemacrawler.com/"
  url "https://github.com/schemacrawler/SchemaCrawler-Installers/releases/download/v18.0.1/schemacrawler-18.0.1-bin.zip"
  version "18.0.1"
  sha256 "31ee08c3eb249e7a7566aa30e32da5d1d1faa97eee042f9ce297212cc370e8d4"
  license "EPL-1.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/schemacrawler.sh" => "schemacrawler"
  end

  test do
    output = shell_output("#{bin}/schemacrawler --version")
    assert_match "18.0.1", output
  end
end
