cask "respira-pulse" do
  version "1.1.17"

  if Hardware::CPU.arm?
    sha256 "630274264e94b8c077b57acd3193578e4634229ed14cb17f710a8b1f797f7ab8"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.1.17/Respira-Pulse-arm64.dmg"
  else
    sha256 "a7a793ea7a93c44e661a720aede82ae01399d2236cfa5db3ed050e2eb988af32"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.1.17/Respira-Pulse-x64.dmg"
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
