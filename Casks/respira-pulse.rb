cask "respira-pulse" do
  version "1.2.5"

  if Hardware::CPU.arm?
    sha256 "92375a8a5ab0acf9aace3328858b62b91502acefc66dedce3766c70019825432"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.2.5/Respira-Pulse-arm64.dmg"
  else
    sha256 "741216bb9cc1b9a73c445be40b623cd926da7c48fe482f27596eef23503cdc89"
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
