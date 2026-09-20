# Generated with JReleaser 1.27.0-SNAPSHOT at 2026-09-20T21:26:58.1062936Z

class Schemacrawler < Formula
  desc "Free database schema discovery and comprehension tool"
  homepage "https://www.schemacrawler.com/"
  url "https://github.com/schemacrawler/SchemaCrawler-Installers/releases/download/v17.15.4/schemacrawler-17.15.4-bin.zip"
  version "17.15.4"
  sha256 "ce288abea820c7b1f51aa54199fbbaa50b96afa9604c542bf4edbd05491e52eb"
  license "EPL-1.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/schemacrawler.sh" => "schemacrawler"
  end

  test do
    output = shell_output("#{bin}/schemacrawler --version")
    assert_match "17.15.4", output
  end
end
