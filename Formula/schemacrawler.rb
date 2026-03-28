# Generated with JReleaser 1.24.0-SNAPSHOT at 2026-03-28T16:13:28.6779704Z

class Schemacrawler < Formula
  desc "Free database schema discovery and comprehension tool"
  homepage "https://www.schemacrawler.com/"
  url "https://github.com/schemacrawler/SchemaCrawler-Installers/releases/download/v17.9.0/schemacrawler-17.9.0-bin.zip"
  version "17.9.0"
  sha256 "5ccafad0a02f282f22babed8f44287a076806dd228c9974569c3aae441e7cf88"
  license "EPL-1.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/schemacrawler.sh" => "schemacrawler"
  end

  test do
    output = shell_output("#{bin}/schemacrawler --version")
    assert_match "17.9.0", output
  end
end
