cask "respira-pulse" do
  version "1.2.2"

  if Hardware::CPU.arm?
    sha256 "34d89cfc50d482673164e7da5fe8f5b95fea787b76d823bf297cda5af9666382"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.2.2/Respira-Pulse-arm64.dmg"
  else
    sha256 "3af3a3ffbb910bb59f6cc01f78781ca43e47d1c80d51e378a5240e92e800a372"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.2.2/Respira-Pulse-x64.dmg"
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
