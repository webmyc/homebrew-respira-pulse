cask "respira-pulse" do
  version "1.3.0"

  if Hardware::CPU.arm?
    sha256 "af1551c162f41beac953ac60bfd307fd38adc4a9b0de6e775e034e6b742ba7af"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.3.0/Respira-Pulse-arm64.dmg"
  else
    sha256 "cc4d29f1f719412c553f8130d2c3a6e3950fe4eadced55dad4b18dbc0276cd0a"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.3.0/Respira-Pulse-x64.dmg"
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
