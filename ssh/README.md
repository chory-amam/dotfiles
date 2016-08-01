## sshconfigのインストール方法

1. .sshフォルダをホームディレクトリに作成する
```
mkdir ~/.ssh
```
2. configファイルを.sshフォルダに移動
```
cp ./config ~/.ssh
```

## 備考
sshキー作成  

1. キーを作成する
```
cd {作成する場所}
ssh-keygen -t rsa -C {mailaddress}
chmod 600 {秘密鍵}
```
2. configファイルに位置を追記する
```
vim ~/.ssh/config
# IdentityFileの欄に作成した秘密鍵を指定
# clipboardにコピーしてサービスのsshキーに公開鍵を登録する
# macの場合
pbcopy < ~/.ssh/id_rsa
```
