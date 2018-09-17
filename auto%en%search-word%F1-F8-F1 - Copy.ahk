;F1键浏览Chrome文献
;F8键停止键入PgDn
;F1键重新开始浏览Chrome文献
;author: Claude
;date: 22 04 2014
; effects:
; search English words
; emacs + English words + Chrome
;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; # Win (Windows logo key) 
;; ! Alt 
;; ^ Control 
;; + Shift 
;; &  An ampersand may be used between any two keys 
;;    or mouse buttons to combine them into a custom hotkey.  
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

$F8::
  breakvar=0
  return

$F1::
while GetKeyState("F1", "P")  ; While the F1 key is being held down physically.
Sleep 1000
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
{
  breakvar=1
  Loop 100
    {
      Sleep 100
      if breakvar = 1
        {
         ;; 1.
         ;; everything *.pdf F:/
         ;; 移动到第一行
         ;;Run, C:\Program Files\Mozilla Firefox\firefox.exe
         ;;Sleep 9000
         ;;Send, {Alt down}{Tab}{Alt up}
         ;;Sleep 1000
         ;;Send, {Ctrl down}w{Ctrl up}
         ;;Sleep 1000
         ;;Send, https://dictionary.cambridge.org/
         ;;Send, https://en.oxforddictionaries.com/
         ;;Send, https://search.yahoo.com/
         ;;Send, https://images.search.yahoo.com
         ;;Send, https://www.collinsdictionary.com/
         ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
         ;;Send, 美国人常用搜寻引擎
         ;;Send, www.google.com
         ;;Send, www.yahoo.com
         ;;Send, www.msn.com
         ;;Send, www.aol.com
         ;;Send, www.ask.com
         ;;Send, www.netscape.com
         ;;Send, www.altavista.com
         ;;Send, www.lycos.com
         ;;Send, www.looksmart.com
         ;;Send, www.miva.com
         ;;Send, www.bing.com
         ;;Send, www.search.com
         ;;Send, www.canada.com
         ;;Send, www.infospace.com
         ;;Send, www.dmoz.org
         ;;Send, www.vivisimo.com
         ;;Send, www.webcrawler.com
         ;;Send, www.lycos.com
         ;;Send, 每个搜索引擎都有独特的优缺点，
         ;;Send, 不同的需要就应该使用不同的搜索引擎。
         ;;Send, 如果你搜索英文内容，那么我给你推荐的使用习惯是：
         ;;Send, 上网随便逛逛就用dmoz，
         ;;Send, 平时搜索就用google，
         ;;Send, 有问题就问ask，
         ;;Send, 要做特定的主题搜索就用search.com。
         ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
         ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
         ;;Send, 英国人常用搜寻引擎
         ;;Send, 
         ;;Send, 
         ;;Send, 
         ;;Send, 
         ;;Send, 
         ;;Send, 
         ;;Send, http://www.sputtr.com/
         ;;Send, 
         ;;Send, 
         ;;Send, 
         ;;Send, https://www.izito.co.uk/
         ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
         ;;Send, 法国人常用搜寻引擎
         ;;Send, 
         ;;Send, 
         ;;Send, 
         ;;Send, 
         ;;Send, 
         ;;Send, 
         ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
         ;;Send, 俄国人常用搜寻引擎
         ;;Send, http://webalta.ru/
         ;;Send, https://www.yandex.ru/
         ;;Send, 
         ;;Send, 
         ;;Send, 
         ;;Send, 
         ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
         ;;Send, google常用搜寻引擎技巧
         ;;Send, google.co.uk
         ;;Send, https://www.google.com
         ;;Send, https://www.google.fr
         ;;不要忽视谷歌建议的搜索关键词
         ;;使用双引号来缩小搜索结果，以进行精确检索
         ;;只获得一个特定站点的相关搜索结果
         ;;如果你想查看一个网站的索引页面，只需输入 ——site:ubergizmo.com，
         ;;你就会看到只列出Ubergizmo相关网页的搜索结果
         ;;搜索一个网站上的特定主题
         ;;这个技巧几乎和前一个技巧一样。
         ;;你只需输入——Samsung site:ubergizmo.com，
         ;;你就可以看到ubergizmo.com上所有提到“Samsung”关键字的网页
         ;;轻松地知道一个单词的意思
         ;;如果你厌倦了在谷歌上通过浏览网页来了解一个词的意思，
         ;;那么你只需输入“define: word”就可以做到这点
         ;;Send, define: word
         ;;只搜索图片
         ;;如果你正在搜索某个词，并想要从搜索结果中首先获得图片。
         ;;你只要输入 “images:搜索词”就可以了。
         ;;或者，你可以直接到images.google.com上去搜索
         ;;Send, images.google.com
         ;;找相关的替代网站
         ;;寻找替代的网站是一项艰巨的任务。
         ;;但是，只要输入“related:网站”，你就让谷歌为你列出许多相似的网站
         ;;Send, related:网站
         ;;搜索特定地理位置的新闻
         ;;如果你想在Google News（谷歌新闻）上根据自己的喜好来了解最新的新闻事件，
         ;;你可以选择将新闻结果限制在一个特定的地理位置。
         ;;当你在Google News部分时，
         ;;只需输入特定主题再加上“location:国家名称”就行，
         ;;Send, location:国家名称
         ;;就像你在下图中所看到的那样
         ;;天气查询
         ;;你不需要使用什么天气预报app，或者收听天气预报的电视节目来获得天气信息。
         ;;在谷歌搜索时，你只需输入“Weather in+地名”。
         ;;Send, Weather in+地名
         ;;例如，当你输入“Weather in San Francisco”时，
         ;;Send, Weather in San Francisco
         ;;你就会得到如下的结果
         ;;了解日落和日出时间
         ;;你只要输入“sunrise & sunset San Franciso”之类的字词就行
         ;;Send, sunrise & sunset San Franciso
         ;;知道你的IP地址
         ;;如果出于某种原因，你可能需要检查你的IP地址，
         ;;你只需在谷歌上输入“IP address”就可以得到结果
         ;;Send, IP address
         ;;下面是我花了N多心血整理的贴子，告诉大家如何：
         ;;一、如何用Google(全球) Yahoo(全球) Bing(全球) Ask(全球)
         ;;Lycos(全球) Altavista(全球) 等全球搜索网站搜客户
         ;;二、如何本国搜索，如搜索英国、德国的客户本国的信息
         ;;三、如何用搜索引擎搜索最新收录的信息，包含很多最新的商机
         ;;学会全球搜索客户，请务必先了解下面概念：
         ;;全球搜索网站根据搜索的范围分为：全球搜索和各国搜索。
         ;;全球搜索：Google全球，yahoo全球，bing全球， Ask(全球) ，
         ;;Lycos(全球) Altavista(全球) 等。
         ;;各国搜索：每个国家不同，如中国有Baidu, google中国，
         ;;sogou, soso,youdao等；
         ;;日本有日本yahoo,日本Google,infoseek, goo,excite,
         ;;其中日本yahoo市场份额最高；差不多每个国家都有自己本国的搜索网站。 
         ;;inurl
         ;;Send, inurl:seo
         ;;site
         ;;site:eryi.org yahoo
         ;;site:www.lifewire.com "how to find people"
         ;;allintitle: tennis championships
         ;;link:www.grumpycats.com
         ;;site:.gov "veteran's benefits"
         ;;site:.de "dictionary"
         ;;"tom ford" -motors
         ;;filetype:pdf "long haired cats"
         ;;filetype:pdf "long haired cats"
         ;;filetype:pdf "long haired cats"
         ;;filetype:pdf "long haired cats"
         ;;filetype:pdf "long haired cats"
         ;;inurl:marshmallow
         ;;;;;;;;;;;;;;;;;;;;;;;;
         ;;[website][https://www.lifehack.org/articles/technology/20-tips-use-google-search-efficiently.html]
         ;;20 Google Search Tips to Use Google More Efficiently
         ;;1. Use the tabs
         ;;2. Use quotes
         ;;3. Use a hyphen to exclude words
         ;;Send, Mustang -cars
         ;;Send, Mustang +cars
         ;;Send, ~Mustang +cars
         ;;Send, ~Mustang *cars
         ;;Send, ~Mustang or cars
         ;;Send, ~Mustang | cars
         ;;4. Use a colon to search specific sites
         ;;Sidney Crosby site:nhl.com
         ;;Sidney Crosby site:bbc.com
         ;;5. Find a page that links to another page
         ;;link:nytimes.com
         ;;6. Use the asterisk wildcard
         ;;“Come * right now * me”
         ;;The Beatles song “Come Together
         ;;7. Find sites that are similar to other sites
         ;;related:amazon.com
         ;;related:gutenberg.org
         ;;related:https://yle.fi/
         ;;8. Use Google search to do math
         ;;number value of pi
         ;;5+9-6*4+2
         ;;9. Search for multiple words at once
         ;;"dictionary" or "finnish"
         ;;10. Search a range of numbers
         ;;dictionary..2004
         ;;11. Keep it simple
         ;;12. Gradually add search terms
         ;;First try: job interviews
         ;;Second try: prepare for job interviews
         ;;Third try: how to prepare for a job interview
         ;;13. Use words that websites would use
         ;;“I have a flat tire” could be replaced by “repair a flat tire.”
         ;;“My head hurts” could be replaced by “headache relief.”
         ;;14. Use important words only
         ;;15. Google search has shortcuts
         ;;Weather *zip code*
         ;;What is the definition of *word* or Define
         ;;Time *place*
         ;;16. Spelling doesn’t necessarily matter
         ;;17. Use descriptive words
         ;;You may search “How to install drivers in Ubunut?”
         ;;18. Find a specific file
         ;;*Search term here* filetype:pdf
         ;;Pizza filetype:pdf
         ;;19. Money and unit conversions
         ;;miles to km
         ;;U.S. dollars to Chinese yuan
         ;;20. Track your packages
         ;;[website]
         ;;[https://www.lifehack.org/342679/excellent-excel-shortcuts-that-very-few-people-know-2]
         ;;date: 3:27 PM 8/19/2018
         ;;[website][https://www.techrepublic.com/blog/10-things/10-tips-for-smarter-more-efficient-internet-searching/]
         ;;10 tips for smarter, more efficient Internet searching
         ;;Wonder Wheel
         ;;9: Use browser history
         ;;10: Set a time limit — then change tactics
         ;;Remember that old acronym GIGO, garbage in, garbage out?
         ;;
         ;;
         ;;
         ;;
         ;;
         ;;
         ;;
         ;;
         ;;
         ;;
         ;;
         ;;
         ;;
         ;;;;;;;;;;;;;;
         ;;;;;;;;;;;;;;;;;;;;;;;;
         ;;;;;;;;;;;;;;;;;;;;;;;;
         ;;;;;;;;;;;;;;;;;;;;;;;;
         ;;;;;;;;;;;;;;;;;;;;;;;;
         ;;;;;;;;;;;;;;;;;;;;;;;;
         ;;;;;;;;;;;;;;;;;;;;;;;;
         ;;;;;;;;;;;;;;;;;;;;;;;;
         ;;great tip: 12:10 PM 8/19/2018
         ;;Send, site: de
         ;;Send, site:de
         ;;originurlextension:
         ;;originurlextension:pdf
         ;;originurlextension:pdf seo lessons
         ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
         ;;Send, www.mywebsearch.com
         ;;Send, www.webcrawler.com
         ;;Send, www.wow.com
         ;;Send, www.infospace.com
         ;;Send, www.blekko.com
         ;;Send, www.script-o-rama.com
         ;;https://search.yahoo.com/web/advanced;_ylt=AwrgEbDsDnhbeiAASq0j4gt.;_ylu=X3oDMTByNDZ0aWFxBGNvbG8DZ3ExBHBvcwM2BHZ0aWQDBHNlYwNzcg--?fr=uh3_news_web_gs
         ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
         ;; 5:59 PM 8/18/2018
         ;;Sleep 1000
         ;;Send, {Enter}
         ;;Sleep 9000
         ;;Send, {Alt down}{Tab}{Alt up}
         Sleep 1000
         Send, {Alt down}x{Alt up}
         Sleep 1000
         Send, cc
         Sleep 1000
         Send, {Enter}
         Sleep 1000
         Send, {Ctrl down}a{Ctrl up}
         Sleep 1000
         Send, {Ctrl down}@{Ctrl up}
         Sleep 1000
         Send, {Alt down}f{Alt up}
         Sleep 1000
         Send, {Alt down}w{Alt up}
         Sleep 1000
         Send, {Ctrl down}n{Ctrl up}
         Sleep 1000
         Send, {Alt down}{Tab}{Alt up}
         Sleep 1000
         Send {Click 2}
         Sleep 1000
         Send, {Ctrl down}a{Ctrl up}
         Sleep 1000
         Send, {Ctrl down}v{Ctrl up}
         Sleep 1000
         Send, {Enter}
         Sleep 60000
         ;;Send, {Ctrl down}w{Ctrl up}
         ;;Send, {Ctrl down}w{Ctrl up}
         Sleep 1000
         Send, {Alt down}{Tab}{Alt up}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
         Sleep 1000
;         Send {PgDn}
;         Sleep 10000
;         Send {PgDn}
;         Sleep 10000
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; left page
;; 10 seconds, then Down
        }
      else
        {
          break
        }
    }
    breakvar=1
}
;;Sleep 1000
;;Send, {Alt down}{F4}{Alt up}
;;Sleep 1000
;;Send, {Enter}
return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
$F2::
while GetKeyState("F2", "P")  ; While the F1 key is being held down physically.
Sleep 1000
Send, {Ctrl down}t{Ctrl up}
;;Send, https://dictionary.cambridge.org/
;;Send, https://en.oxforddictionaries.com/
;;Send, https://search.yahoo.com/
;;Send, https://images.search.yahoo.com
Send, https://www.collinsdictionary.com/
Send, {Enter}
return