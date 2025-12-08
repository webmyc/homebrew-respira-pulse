cask "respira-pulse" do
  version "1.1.10"

  if Hardware::CPU.arm?
    sha256 "875dc7a9b47aa1ce447ef6f05d708ec50c019e9166aae8cf98b2c2b577c0b58e"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.1.10/Respira-Pulse-arm64.dmg"
  else
    sha256 "0a70262b84b243bb2d7fd5d248e0957d6b63d180cc8c578d5d7e9456fa4e8dd9"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.1.10/Respira-Pulse-x64.dmg"
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
