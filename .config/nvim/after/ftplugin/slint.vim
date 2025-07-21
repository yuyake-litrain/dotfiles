"setlocal nosmartindent
"inoremap { {}<LEFT>
"
"" edited original from https://qiita.com/karunru/items/58eccc565ba9ffee823f
"" 隣接した{}で改行したらインデント - Slintのめちゃくちゃおかしなインデントを治す
"function! IndentBraces()
"    let nowletter = getline(".")[col(".")-1] + getline(".")[col(".")]   " 今いるカーソルの文字
"    let beforeletter = getline(".")[col(".")-2] + getline(".")[col(".")-3] " 1つ前の文字
"
"    " カーソルの位置の括弧が隣接している場合
"    if nowletter == " }" && beforeletter == "{ "
"      " 改行,タブ,改行,タブ削除,カーソル位置を上右右
"        return "\n\t\n\<BS>\<UP>\<RIGHT>\<RIGHT>"
"    else
"        return "\n"
"    endif
"endfunction
"" Enterに割り当て
"inoremap <silent> <expr> <CR> IndentBraces()
