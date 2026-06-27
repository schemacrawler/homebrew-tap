# Generated with JReleaser 1.25.0-SNAPSHOT at 2026-06-27T15:35:06.2594353Z

class Schemacrawler < Formula
  desc "Free database schema discovery and comprehension tool"
  homepage "https://www.schemacrawler.com/"
  url "https://github.com/schemacrawler/SchemaCrawler-Installers/releases/download/v17.11.4/schemacrawler-17.11.4-bin.zip"
  version "17.11.4"
  sha256 "2a0af5e48b7fe137580280e66e31edd70786431499da01065feb51e1e465bac7"
  license "EPL-1.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/schemacrawler.sh" => "schemacrawler"
  end

  test do
    output = shell_output("#{bin}/schemacrawler --version")
    assert_match "17.11.4", output
  end
end
