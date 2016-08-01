.vimrc および.gvimrc.の適用方法  
  
1. .vimrcおよび.gvimrcファイルをホームディレクトリに配置  
```
cp .vimrc ~/
cp .gvimrc ~/
```
2. フォルダを作成
```
mkdir -p ~/.vim/bundle ~/.vim/files
cd ~/.vim/files
mkdir -p ./backup ./swap ./undo ./info
```
3. neobundleをクローン
```
git clone https://www.github.com/Shougo/NeoBundle
```
4. vimを起動
