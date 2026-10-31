cask "prune" do
  version "0.9.12"
  sha256 "38f89491b8b96ce24a652f7241e5cd5f1b40292c6709b18e10933b40837aa489"

  url "https://prune.digitalarc.lk/downloads/Prune_#{version}_universal.dmg"
  name "Prune"
  desc "Disk cleaner that knows AI and developer caches by name"
  homepage "https://prune.digitalarc.lk/"

  livecheck do
    url "https://prune.digitalarc.lk/version.json"
    regex(/"version":\s*"(\d+(?:\.\d+)+)"/i)
  end

  depends_on macos: ">= :monterey"

  app "prune.app", target: "Prune.app"

  zap trash: [
    "~/Library/Application Support/com.prune.app",
    "~/Library/Caches/com.prune.app",
    "~/Library/Preferences/com.prune.app.plist",
  ]
end
