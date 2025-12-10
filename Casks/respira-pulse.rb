cask "respira-pulse" do
  version "1.2.3"

  if Hardware::CPU.arm?
    sha256 "f8d91a191bdd143720ade5a0d99ce3b21e27e3f9aa0dc7705e230606fd6e8cbb"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.2.3/Respira-Pulse-arm64.dmg"
  else
    sha256 "54b32b52be216f037f1e8fe26804c9711d5ce5a35e4cd15b04e890831371faea"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.2.3/Respira-Pulse-x64.dmg"
  end

  name "Respira Pulse"
  desc "Menu bar app for monitoring Vercel deployments"
  homepage "https://www.respirapulse.dev"

  app "Respira Pulse.app"

  zap trash: [
    "~/Library/Application Support/cafe.respira.pulse",
    "~/Library/Preferences/cafe.respira.pulse.plist",
    "~/Library/Caches/cafe.respira.pulse",
  ]
end
