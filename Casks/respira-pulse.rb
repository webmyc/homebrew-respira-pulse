cask "respira-pulse" do
  version "1.2.0"

  if Hardware::CPU.arm?
    sha256 "71a2abd42ef9b79856d97a745900e93e7fdfe77f26f36f7e10d95221bdcf4bb0"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.2.0/Respira-Pulse-arm64.dmg"
  else
    sha256 "f0032e9c2540c6068ed271fe23e99ca7ad5c707bbf40088fb84959d8ca59bc02"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.2.0/Respira-Pulse-x64.dmg"
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
