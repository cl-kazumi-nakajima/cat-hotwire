# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"

# bootstrap が読み込めなかったので、以下のように変更
# https://github.com/Shigeyuki-fukuda/cat-hotwire/blob/19b527b43dfe6c00348f55761f94acc312b192de/config/importmap.rb
# Bootstrap の JavaScript モジュールが @popperjs/core に依存しているため、@popperjs/core を先に読み込む
pin "@popperjs/core", to: "https://ga.jspm.io/npm:@popperjs/core@2.11.8/lib/index.js"
# importmap-railsを使っている場合は、ESM形式のファイルを指定する
pin "bootstrap", to: "https://ga.jspm.io/npm:bootstrap@5.3.3/dist/js/bootstrap.esm.js"
