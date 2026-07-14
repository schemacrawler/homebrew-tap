# Generated with JReleaser 1.25.0-SNAPSHOT at 2026-07-14T12:11:58.9329725Z

class Schemacrawler < Formula
  desc "Free database schema discovery and comprehension tool"
  homepage "https://www.schemacrawler.com/"
  url "https://github.com/schemacrawler/SchemaCrawler-Installers/releases/download/v17.12.1/schemacrawler-17.12.1-bin.zip"
  version "17.12.1"
  sha256 "1b2f0914f64d1d40e972ed254eea45b2659b00b6d912c8d1373231ab44a4247a"
  license "EPL-1.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/schemacrawler.sh" => "schemacrawler"
  end

  test do
    output = shell_output("#{bin}/schemacrawler --version")
    assert_match "17.12.1", output
  end
end
