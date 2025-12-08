cask "respira-pulse" do
  version "1.1.12"

  if Hardware::CPU.arm?
    sha256 "1ddbb99161f743be8df405a7b454c592f59935d01942cf359f9440fea8bed36c"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.1.12/Respira-Pulse-arm64.dmg"
  else
    sha256 "db3da3adedc7b2775f45f9ea773170b15f489b87fccc211ecda5f5797d295d9d"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.1.12/Respira-Pulse-x64.dmg"
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
