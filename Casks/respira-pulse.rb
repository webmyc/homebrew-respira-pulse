cask "respira-pulse" do
  version "1.2.5"

  if Hardware::CPU.arm?
    sha256 "2f2616f014f3ad8df7a4e41e66a216cd966e2fd63c44a666cc2b3f708f75412f"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.2.5/Respira-Pulse-arm64.dmg"
  else
    sha256 "4b01125f20c1465f82a69fc14b3da31e907aca762965e0c29950ee8e89e56a1e"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.2.5/Respira-Pulse-x64.dmg"
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
