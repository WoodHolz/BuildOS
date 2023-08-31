# usage: sh xxd.sh 文件 起始地址 长度
xxd -u -a -g 1 -s $2 -l $3 $1

# -u  use upper case hex letters. Default is lower case.
# -u  使用大写的十六进制字母. 默认使用小写. 
#
# -a | -autoskip
#   toggle autoskip: A single ’*’ replaces nul-lines.  Default off.
# -a | -autoskip
#   切换自动跳过: 一个单独的 '*' 会替代空行. 默认关闭. 
#
# -g bytes | -groupsize bytes
#   separate the output of every <bytes> bytes (two hex characters or eight bit-digits each) by a whitespace.  Specify -g 0 to
#   suppress grouping.  <Bytes> defaults to 2 in normal mode and 1 in bits mode.  Grouping does not  apply  to  postscript  or
#   include style.
# -g bytes | -groupsize bytes
#   通过空格分隔每个 <bytes> 字节的输出(每个字节有两个十六进制字符或八个位数字). 指定 -g 0 可以抑制分组. 在普通模式下，默认为2，在位模式下默认为1. 
#   分组不适用于postscript或include样式. 
#
# -c cols | -cols cols
#   format <cols> octets per line. Default 16 (-i: 12, -ps: 30, -b: 6). Max 256.
# -c cols | -cols cols
#   每行格式化输出 <cols> 个字节. 默认是16(-i: 12，-ps: 30，-b: 6). 最大值256. 
#
# -s [+][-]seek
#   start at <seek> bytes abs. (or rel.) infile offset.  + indicates that the seek is relative to the current stdin file position 
#   (meaningless when not reading from stdin).  - indicates that the seek should be that many characters from the end of
#   the input (or if combined with +: before the current stdin file position).  
#   Without -s option, xxd starts at  the  current file position.
# -s [+][-]seek
#   从 <seek> 字节处开始. + 表示该 seek 是相对于当前stdin文件位置的(当不从stdin读取时，无意义).
#   - 表示从输入的末尾移动那么多字符(或与 + 结合使用时: 在当前stdin文件位置之前).  
#   没有 -s 选项时，xxd 从当前文件位置开始. 
