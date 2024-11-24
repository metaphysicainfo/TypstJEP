// 高校数学教材向け Typst テンプレート（私家版）
// Typst 0.12.0
// 2024-11-22
// 日下部幽考
// http://x.com/metaphysicainfo
// https://www.metaphysica.info/tools/typst-template/
// 
// # 先頭の段落字下げ
#let firstindent = par(
  text(size: 0pt, "")
  ) + v(-1em-2.926pt)
// # 囲みブロック設定
#import "@preview/showybox:2.0.1":*
// # 引用
#let blockquote(body) = showybox(
  breakable: true,
  frame: (
  inset: (left: 1em + 1pt, y: 0.5em, right: 0em),
    thickness: (left: 1pt),
    radius: 0pt
    ),
  par(text(size: 0pt, ""))
  + v(-1em-2.926pt)
  + body
  )
#let blockquoteimage(body) = blockquote[
  #image(
    body,
    width: 37em
  )
]
// # 破線囲み（思考）
#let blockthink(body) = showybox(
  frame: (
    thickness: (0.4pt),
    dash: "densely-dashed",
    radius: 0pt
    ),
  par(text(size: 0pt, ""))
  + v(-1em-2.926pt)
  + body
  )
#let boxthink(body) = box(
  height:0.75em,
  text(
    baseline: -3pt,
    box(
      height: 1.3em,
      stroke: (thickness: 0.4pt, dash: "dashed"),
      pad(
        6pt,
        h(-3.375pt)
        + body
        + h(-3.375pt)
      )
    )
  )
)
// # 出典
#let boxsource(Author-Title-PubSite-PageDay-YearURL) = par(
  first-line-indent: 0em,
  justify: false,
  text(
    size: 0.8em,
  )[source#h(0em)#Author-Title-PubSite-PageDay-YearURL]
)
#let boxfigsource(Author-Title-PubSite-PageDay-YearURL) = par(
  first-line-indent: 0em,
  justify: false,
  text(
    size: 0.8em,
  )[
    #box(
  width: 1em,
  height: 0em,
  text(
    baseline: -0.47272727272em,
    $arrow.l.hook$
    )
  + h(-0.95em)
  + text(
    baseline: -2.05em,
    size: 0.63636363636em,
    [#h(-0.8em)fi#h(-0.08571428571em)g#h(-0.14285714285em).#h(-1em)]
   )
 )
    #h(0em)#Author-Title-PubSite-PageDay-YearURL]
)
// 横幅調整
#let boxscalex(xratio,body) = box(
  scale(
    x:xratio,
    origin: left + horizon,
    reflow: true,
    body
  )
)
// 改行
#let boxsourcebreak = linebreak() + v(-1em) + hide[source]
// # 難度記号
//   デザイン上 math.dagger ではなく † を用いた。
#let extrahdg = h(-4.25em) + "†" + h(3.25em)
#let extralist = h(-2.25em) + "†" + h(1.25em)
#let extrapar = par(
  first-line-indent: -0.25em,
  hanging-indent: -0.25em,
  "†"
) + v(-2em)
#let extra = "†"
#let advancedhdg = h(-4em) + text(
    baseline: -0.375em,
    font:"New Computer Modern",
    math.star
  ) + h(3em)
#let advancedlist = h(-2em) + text(
    baseline: -0.375em,
    font:"New Computer Modern",
    math.star
  ) + h(1.5em)
#let advancedpar = par(
  first-line-indent: -0.25em,
  hanging-indent: -0.25em,
  text(
    baseline: -0.375em,
    font:"New Computer Modern",
    math.star
  )
) + v(-2em)
#let advanced = text(
  baseline: -0.375em,
  font:"New Computer Modern",
  math.star
)
// # 定理環境
#let vspace =  v(2em)
#let vspacehalf = v(1em)
#let vspacequarter = v(0.5em)
#let vsmash =  v(-2em)
#let vsmashhalf = v(-1em)
#let vsmashquarter = v(-0.5em)
// 後方互換性のために残す
// #let vspace =  v(2em)
#let vhalfspace = v(1em)
// #let vsmash =  v(-2em)
#let vhalfsmash = v(-1em)
// 
#let hdgtitle(body) = h(0em) + text(
  font: "Yu Gothic",
  weight: 500,
  body
)
// # 定義
#let hdgdefinition = v(2em) + h(-1em) + text(
  font: "Yu Gothic",
  weight: 500,
  "《定義》"
)
// # 定理
#let hdgtheorem = v(2em) + h(-1em) + text(
  font: "Yu Gothic",
  weight: 500,
  "《定理》"
)
// # 例題
#let hdgexample = v(2em) + h(-1em) + text(
  font: "Yu Gothic",
  weight: 500,
  "《例題》"
)
// # 演習
#let hdgexercise = v(2em) + h(-1em) + text(
  font: "Yu Gothic",
  weight: 500,
  "《演習》"
)
// # 講義
#let hdglecture = v(2em) + h(-1em) + text(
  font: "Yu Gothic",
  weight: 500,
  "《講義》"
)
// # 談義
#let hdgtalk = v(2em) + h(-1em) + text(
  font: "Yu Gothic",
  weight: 500,
  "《談義》"
)
// # 例示
#let hdgexempligratia = v(1em) + h(-1em) + text(
  font: "Yu Gothic",
  weight: 500,
  "〈例示〉"
)
// # 証明
#let hdgproof = v(1em) + h(-1em) + text(
  font: "Yu Gothic",
  weight: 500,
  "〈証明〉"
)
// # 解決
#let hdgsolution = v(1em) + h(-1em) + text(
  font: "Yu Gothic",
  weight: 500,
  "〈解決〉"
)
// # 分析
#let hdganalysis = v(1em) + h(-1em) + text(
  font: "Yu Gothic",
  weight: 500,
  "〈分析〉"
)
// # 吟味
#let hdgexamination = v(1em) + h(-1em) + text(
  font: "Yu Gothic",
  weight: 500,
  "〈吟味〉"
)
// # 補足
#let hdgnote = v(1em) + h(-1em) + text(
  font: "Yu Gothic",
  weight: 500,
  "〈補足〉"
)
// # 付言
#let hdgaddition = v(1em) + h(-1em) + text(
  font: "Yu Gothic",
  weight: 500,
  "〈付言〉"
)
// # 原題
#let hdgoriginal = v(1em) + h(-1em) + text(
  font: "Yu Gothic",
  weight: 500,
  "〈原題〉"
)
// # 原題
#let hdgoriginal = v(1em) + h(-1em) + text(
  font: "Yu Gothic",
  weight: 500,
  "〈原題〉"
)
// # 別解
#let hdganothersolution = h(-1em) + text(
  font: "Yu Gothic",
  weight: 500,
  "［別解］"
)
// # 別証
#let hdganotherproof = h(-1em) + text(
  font: "Yu Gothic",
  weight: 500,
  "［別証］"
)
// # 概略
#let hdgsummary = h(-1em) + text(
  font: "Yu Gothic",
  weight: 500,
  "［概略］"
)
// # 計算用紙
#let hdgdraftsheet = h(-1em) + text(
  font: "Yu Gothic",
  weight: 500,
  "［計算用紙］"
)
// # 答案用紙
#let hdganswersheet = h(-1em) + text(
  font: "Yu Gothic",
  weight: 500,
  "［答案用紙］"
)
// # 画像ショートカット
// imagepath は / から絶対参照（プロジェクトルートから）でとること
#let rightgraphics(imagepath,widthshortcut,body) = grid(
  columns: (auto, auto),
  gutter: 1em,
  [
    #firstindent
    #body
  ],
  image(
    imagepath,
    width: widthshortcut
  )
)
// # 式番号
// # 引用時のみ式番号 https://qiita.com/tomoyatajika/items/b3130df6cc6193fd6018 は行間が壊れてしまった。
// #set math.equation(numbering: "……①　　", number-align: right + bottom)
#let eqno(body) = math.equation(block: true, numbering: "……①　　", number-align: right + bottom)[$#body$]
#let inlinenumbering(body) = text(font: "New Computer Modern Math","……") + body
#let eqnoreset = counter(math.equation).update(0)
// # comma period
#let comma = $,$ + $thick$
#let period = box(width: 8pt,"。")
#let commavar = $thin$ + $,$ + $thick$
#let periodvar = $thin$ + box(width: 8pt,"。") 
// # 数学記号
// # Roman
#let AA = $upright(A)$
#let BB = $upright(B)$
#let CC = $upright(C)$
#let DD = $upright(D)$
#let EE = $upright(E)$
#let FF = $upright(F)$
#let GG = $upright(G)$
#let HH = $upright(H)$
#let II = $upright(I)$
#let JJ = $upright(J)$
#let KK = $upright(K)$
#let LL = $upright(L)$
#let MM = $upright(M)$
#let NN = $upright(N)$
#let OO = $upright(O)$
#let PP = $upright(P)$
#let QQ = $upright(Q)$
#let RR = $upright(R)$
#let SS = $upright(S)$
#let TT = $upright(T)$
#let UU = $upright(U)$
#let VV = $upright(V)$
#let WW = $upright(W)$
#let XX = $upright(X)$
#let YY = $upright(Y)$
#let ZZ = $upright(Z)$
// # Blackboard
#let AAA = $bb(A)$
#let BBB = $bb(B)$
#let CCC = $bb(C)$
#let DDD = $bb(D)$
#let EEE = $bb(E)$
#let FFF = $bb(F)$
#let GGG = $bb(G)$
#let HHH = $bb(H)$
#let III = $bb(I)$
#let JJJ = $bb(J)$
#let KKK = $bb(K)$
#let LLL = $bb(L)$
#let MMM = $bb(M)$
#let NNN = $bb(N)$
#let OOO = $bb(O)$
#let PPP = $bb(P)$
#let QQQ = $bb(Q)$
#let RRR = $bb(R)$
#let SSS = $bb(S)$
#let TTT = $bb(T)$
#let UUU = $bb(U)$
#let VVV = $bb(V)$
#let WWW = $bb(W)$
#let XXX = $bb(X)$
#let YYY = $bb(Y)$
#let ZZZ = $bb(Z)$
// # nomination
#let nomination(body) = text(
  size: 11pt,
  "（" + body + "）"
)
#let nominationbracket(body) = text(
  size: 11pt,
  "「" + body + "」"
)
// # explan
#let explan(body) = h(2em) + text(
  size: 11pt,
  "（" + body + "）"
)
/*    e.g.
$
  k &= d && explan(because "述べた" x + y = z "による。")
$
*/
#import "@preview/quick-maths:0.1.0": shorthands
// #dotsc
#let cdots = $dots.h.c$
// # and or
#let tand = $"and"$
#let tor = $"or"$
// # GCD, LCM
#let GCD = math.op(math.upright("GCD"))
#let LCM = math.op(math.upright("LCM"))
// # 組
#let pair(a,b) = $(#a,thick #b)$
#let triplet(a,b,c) = $(#a,thick #b,thick #c)$
#let quadruplet(a,b,c,d) = $(#a,thick #b,thick #c,thick #d)$
// # 支柱
#let invisibleheight = h(0pt) + box(height:0.7em, width:0em) + h(0pt)
// # 矢印ベクトルの高さを揃える
#let avec(body) = $arrow(body invisibleheight)$
// # 補集合
#let complement(body) = $overline(body invisibleheight)$
// # 弧
// see: https://github.com/typst/typst/issues/2404
#let overarc(body) = $accent(
  body,
  paren.t
)$
// # 平行
#let parallel = $slash.double$
#let parallelnot = $slash.double #h(-6.75pt) backslash #h(3.125pt)$
// # 相似
#let similar = math.op(text(baseline: 0.75pt, font: "Yu Mincho","∽"))
// # 三角形のスペース排除
#let triangle = "△" + h(0pt)
// # 組み合わせ
#let permutation(n,r) = $attach(upright("P")#h(-1pt), bl: #n, br: #r)$
#let combination(n,r) = $attach(#h(-0.25pt)upright("C"), bl: #n, br: #r)$
#let repeatedpermunation(n,r) = $attach(upright(Pi), bl: #n, br: #r)$
#let repeatedcombination(n,r) = $attach(upright("H"), bl: #n, br: #r)$
#let homogeneous(n,r) = $attach(upright("H"), bl: #n, br: #r)$
// # 期待値
#let expected = $upright(bold(E))$
#let expectation = $upright(bold(E))$
#let variance = $upright(bold(V))$
#let deviation = $upright(sigma)$
// # 複素共役
#let conjugate(body) = $overline(body invisibleheight)$
// # 極限
#let lim = $limits(#math.op("lim"))$
// # 表（増減表・積分）
/*   e.g.
#table(
  columns: 4,
  align: center,
  stroke: none,  
  $x$, $1$, $...$, $2$,
  $f(x)$, $0$, [⤴↗], $2$
)
*/
// 式修飾
#let marka(body) = $underbracket(body)$
#let markb(body) = $underline(underbracket(body))$
//#let markatext(body) = text(size: 9pt, $underbracket(body)$)
//#let markbtext(body) = $underline(underbracket(body))$
//
// # 試験用評価見出し
//   e.g. perspectivepointa(10)
//        perspectivepointa($10 times 2$)
#let perspectivea = "［知識技能］"
#let perspectiveb = "［思考判断表現］"
#let perspectivepointa(point) = text[［ #point 点　知識技能］]
#let perspectivepointb(point) = text[［ #point 点　思考判断表現］]
// # ページ設定
#let doctemplate(Author,Title,Note,Document) = {
// ad-hoc
show "？」": "？" + h(0.0001em) +"」"
show "！」": "！" + h(0.0001em) +"」"
// Header
set page(
  paper: "a4",
  // width: auto,
  // height: auto,
  // flipped: false,
  margin: (x: 31.2694445mm, top: 31.2044445mm, bottom: 21.3344445mm),
  //  margin: (left: 31.2694445mm, right: 31.2694445mm + 8em, top: 31.2044445mm, bottom: 21.3344445mm),
  // ( 31.2694445 * 2  - 3.88 - 4.23 - 1.76) / 2
  // binding: auto,
  // columns: 1,
  // fill: auto,
  // numbering: none,
  // number-align: center + bottom,
  header:
    par(spacing: 5pt)[
    #context{counter(page).display("1/1", both: true)}
    #h(1em)
    #text(font: "Yu Gothic", weight: 500, Title)//[TheFileTitleName]
    #h(1fr)
    #Note
    #line(
      length: 100%,
      start: (0% + 0pt, 0% + 0pt),
      stroke: 0.4pt
      )
    #v(5pt)]
    ,
    header-ascent: 1em,
    footer: move(dy: -64.5em, h(-2em) + text(font: "Yu Gothic", size: 6pt, "01") + v(0.3325em))
    + move(dy: -64.5em, h(-2em) + text(font: "Yu Gothic", size: 6pt, "02") + v(0.3325em))
    + move(dy: -64.5em, h(-2em) + text(font: "Yu Gothic", size: 6pt, "03") + v(0.3325em))
    + move(dy: -64.5em, h(-2em) + text(font: "Yu Gothic", size: 6pt, "04") + v(0.3325em))
    + move(dy: -64.5em, h(-2em) + text(font: "Yu Gothic", size: 6pt, "05") + v(0.3325em))
    + move(dy: -64.5em, h(-2em) + text(font: "Yu Gothic", size: 6pt, "06") + v(0.3325em))
    + move(dy: -64.5em, h(-2em) + text(font: "Yu Gothic", size: 6pt, "07") + v(0.3325em))
    + move(dy: -64.5em, h(-2em) + text(font: "Yu Gothic", size: 6pt, "08") + v(0.3325em))
    + move(dy: -64.5em, h(-2em) + text(font: "Yu Gothic", size: 6pt, "09") + v(0.3325em))
    + move(dy: -64.5em, h(-2em) + text(font: "Yu Gothic", size: 6pt, "10") + v(0.3325em))
    + move(dy: -64.5em, h(-2em) + text(font: "Yu Gothic", size: 6pt, "11") + v(0.3325em))
    + move(dy: -64.5em, h(-2em) + text(font: "Yu Gothic", size: 6pt, "12") + v(0.3325em))
    + move(dy: -64.5em, h(-2em) + text(font: "Yu Gothic", size: 6pt, "13") + v(0.3325em))
    + move(dy: -64.5em, h(-2em) + text(font: "Yu Gothic", size: 6pt, "14") + v(0.3325em))
    + move(dy: -64.5em, h(-2em) + text(font: "Yu Gothic", size: 6pt, "15") + v(0.3325em))
    + move(dy: -64.5em, h(-2em) + text(font: "Yu Gothic", size: 6pt, "16") + v(0.3325em))
    + move(dy: -64.5em, h(-2em) + text(font: "Yu Gothic", size: 6pt, "17") + v(0.3325em))
    + move(dy: -64.5em, h(-2em) + text(font: "Yu Gothic", size: 6pt, "18") + v(0.3325em))
    + move(dy: -64.5em, h(-2em) + text(font: "Yu Gothic", size: 6pt, "19") + v(0.3325em))
    + move(dy: -64.5em, h(-2em) + text(font: "Yu Gothic", size: 6pt, "20") + v(0.3325em))
    + move(dy: -64.5em, h(-2em) + text(font: "Yu Gothic", size: 6pt, "21") + v(0.3325em))
    + move(dy: -64.5em, h(-2em) + text(font: "Yu Gothic", size: 6pt, "22") + v(0.3325em))
    + move(dy: -64.5em, h(-2em) + text(font: "Yu Gothic", size: 6pt, "23") + v(0.3325em))
    + move(dy: -64.5em, h(-2em) + text(font: "Yu Gothic", size: 6pt, "24") + v(0.3325em))
    + move(dy: -64.5em, h(-2em) + text(font: "Yu Gothic", size: 6pt, "25") + v(0.3325em))
    + move(dy: -64.5em, h(-2em) + text(font: "Yu Gothic", size: 6pt, "26") + v(0.3325em))
    + move(dy: -64.5em, h(-2em) + text(font: "Yu Gothic", size: 6pt, "27") + v(0.3325em))
    + move(dy: -64.5em, h(-2em) + text(font: "Yu Gothic", size: 6pt, "28") + v(0.3325em))
    + move(dy: -64.5em, h(-2em) + text(font: "Yu Gothic", size: 6pt, "29") + v(0.3325em))
    + move(dy: -64.5em, h(-2em) + text(font: "Yu Gothic", size: 6pt, "30") + v(0.3325em))
    + move(dy: -64.5em, h(-2em) + text(font: "Yu Gothic", size: 6pt, "31") + v(0.3325em))
    + move(dy: -64.5em, h(-2em) + text(font: "Yu Gothic", size: 6pt, "32") + v(0.3325em))
    // footer-descent: 0pt,
    // background: none,
    // foreground: none
)
// PDF
set document(
  title: Title,
  author: Author,
  date: auto
)
// # 本文設定
set par(
  leading: 13.926pt,
  spacing: 13.926pt,
  justify: true,
  linebreaks: "simple",
  // これを "simple" にしておくと１字だけ送ってくれる。
  // auto では１文字だけ送ることはしないなどとなる。
  first-line-indent: 1em,
  // hanging-indent: 0pt
)
set text(
  font: "Yu Mincho",
  // fallback: true,
  // style: "normal",
  // weight: "regular",
  // stretch: 100%,
  size: 11pt,
  // fill: luma(0%),
  // stroke: none,
  // tracking: 0pt,
  // spacing: 100% + 0pt,
  cjk-latin-spacing: auto,
  // baseline: 0pt,
  // overhang: true,
  // top-edge: "cap-height",
  // bottom-edge: "baseline",
  lang: "ja",
  region: "JP",
  // script: auto,
  // dir: auto,
  // hyphenate: auto,
  // costs: ( hyphenation: 100%, runt: 100%, widow: 100%, orphan: 100%, ),
  // kerning: true,
  // alternates: false,
  // stylistic-set: (),
  // ligatures: true,
  // discretionary-ligatures: false,
  // historical-ligatures: false,
  // number-type: auto,
  // slashed-zero: false,
  // fractions: false,
  // features: (:)
)
set list(
  marker: ([•], [–], [•], [–]),
  indent: 1em
  )
show heading: set text(
  font: "Yu Gothic",
  size: 11pt
)
// # 見出し後１行目の段落字下げ（アドホック）
show heading: it => {
    it
    par(text(size: 0pt, ""))
    v(-6.64pt)
}
// # 見出し２
show heading.where(level: 2): it => { v(2em)
    it
    par(text(size: 0pt, ""))
    v(-1em-2.926pt)
}
// # 見出し３
show heading.where(level: 3): it => v(2em) + par(
  first-line-indent: 0pt,
  text(
    weight: 500,
    "〇" + h(1em) + it.body
  )
)
// # 強調設定
show strong: set text(font: "Yu Gothic")
show emph: it => {
  underline[#it]
}
// # 箇条書き設定
set enum(numbering: "(1)")
// # accessed
show "accessed": box(width: 1em, text(baseline: -1pt, size: 0.75em, "📌"))
// # リンクのフォント
show link: it => text(font:"Consolas", size: 0.9em, it)
// # thinkto, cf, source, review
show "thinkto": $arrow.r.squiggly$
show "confer": $arrow.r.hook$
show "source": $arrow.l.hook$
show "figsource": box(
  width: 1em,
  height: 0em,
  text(
    baseline: -0.5em,
    $arrow.l.hook$
    )
  + h(-1.25em)
  + text(
    baseline: -1.625em,
    size: 0.63636363636em,
    [fi#h(-0.08571428571em)g#h(-0.14285714285em).]
   )
 )
show "review": $arrow.ccw$
// # famous
show "famous": text(font: "Yu Gothic", weight: 400, "［有名］")
// # colloquial
show "colloquial": text(font: "Yu Gothic",weight: 400, "［俗称］")
// # omitted
show "omitted": text(font: "Yu Gothic",weight: 400, "［省略］")
// # 分数・積分は常に大きく表示
show math.frac: math.display
show math.integral: math.display
// # 数式設定
show math.equation: set text(font: ("New Computer Modern Math","Yu Mincho"), size: 12pt)
//show math.equation: set text(font: ("New Computer Modern Math","Yu Mincho"))
set math.cases(gap: 1em)
// # 左寄せのうえ字下げる
show math.equation.where(block: true): set block(breakable: true)
show math.equation.where(block: true): set align(left)
show math.equation.where(block: true): eq => pad(left: 2em, eq)
// # Shorthands
show: shorthands.with(
  ($+-$, $plus.minus$),
  ($-+$, $minus.plus$),
)
// # QED
show "QED": $qed$
// # therefore because
show math.therefore: text(font: "Yu Mincho", "∴")
show math.because: text(font: "Yu Mincho", "∵")
// # 不等号のイコールを二重に変える
show math.gt.eq : math.gt.equiv
show math.lt.eq : math.lt.equiv
// # 実部虚部をラテン文字に
show math.Re: math.upright("Re") + h(2pt)
show math.Im: math.upright("Im") + h(2pt)
// # 数ベクトルの括弧を角括弧にする
set math.vec(delim: "[")
// # タイトル見出し
show "headerstudy": h(-0.75em) + "［学習］"
show "headerfeature": h(-0.75em) + "［特集］"
show "headerquotation": h(-0.75em) + "［記事］"
show "headerexercise": h(-0.75em) + "［演習］"
// https://qiita.com/tomoyatajika/items/47e675027ce8995759af
// Typstで数式の前後にスペースを入れる
show math.equation.where(block:false): it => [#text(font:"Yu Mincho", size: 11pt)[ ]#it#text(font:"Yu Mincho", size: 11pt)[ ]]
firstindent + Document
}
/*
#show: Document => doctemplate(
  "Metaphysica",
  "タイトル",
  "メモ",
  Document
)
*/