{% if request.target == "clash" or request.target == "clashr" %}

port: {{ default(global.clash.http_port, "7890") }}
socks-port: {{ default(global.clash.socks_port, "7891") }}
allow-lan: {{ default(global.clash.allow_lan, "true") }}
mode: Rule
log-level: {{ default(global.clash.log_level, "info") }}
external-controller: :9090
{% if default(request.clash.dns, "") == "1" %}
dns:
  enable: true
  listen: :1053
{% endif %}
{% if local.clash.new_field_name == "true" %}
proxies: ~
proxy-groups: ~
rules: ~
{% else %}
Proxy: ~
Proxy Group: ~
Rule: ~
{% endif %}

{% endif %}
{% if request.target == "surge" %}

[General]
loglevel = notify
bypass-system = true
skip-proxy = 127.0.0.1,192.168.0.0/16,10.0.0.0/8,172.16.0.0/12,100.64.0.0/10,localhost,*.local,e.crashlytics.com,captive.apple.com,::ffff:0:0:0:0/1,::ffff:128:0:0:0/1
#DNS设置或根据自己网络情况进行相应设置
bypass-tun = 192.168.0.0/16,10.0.0.0/8,172.16.0.0/12
dns-server = 119.29.29.29,223.5.5.5
ipv6=true
ipv6-vif=disabled
all-hybrid=true

#[SSID Setting]
#SSID:TP-LINK_yjs suspend=true

[MITM]
skip-server-cert-verify = true
hostname = %APPEND% *.chelaile.net.cn, *.cnbetacdn.com, *.didistatic.com, *.google.cn, *.google-analytics.com, *.iydsj.com, *.k.sohu.com, *.kfc.com, *.kingsoft-office-service.com, *.meituan.net, *.ofo.com, *.pixiv.net, *.wikipedia.org, *.wikiwand.com, *.ydstatic.com, *.youdao.com, *.zhuishushenqi.com, *.zymk.cn, 101.201.62.22, 113.105.222.132, 113.96.109.*, 118.178.214.118, 119.18.193.135, 121.14.89.216, 121.9.212.178, 123.59.31.1, 14.21.76.30, 153.3.236.81, 180.101.212.22, 183.232.237.194, 183.232.246.225, 183.60.159.227, 218.11.3.70, 59.151.53.6, 59.37.96.220, 789.kakamobi.cn, a.apicloud.com, a.applovin.com, a.qiumibao.com, a.sfansclub.com, a.wkanx.com, aarkissltrial.secure2.footprint.net, acs.m.taobao.com, act.vip.iqiyi.com, activity2.api.ofo.com, adm.10jqka.com.cn, ads-img-al.xhscdn.com, adse.ximalaya.com, afd.baidu.com, amap-aos-info-nogw.amap.com, api-access.pangolin-sdk-toutiao.com, api-mifit-cn2.zepp.com, api*.musical.ly, api*.tiktokv.com, api.abema.io, api.app.vhall.com, api.bilibili.com, api.chelaile.net.cn, api.daydaycook.com.cn, api.feng.com, api.fengshows.com, api.gotokeep.com, api.huomao.com, api.intsig.net, api.jxedt.com, api.k.sohu.com, api.kkmh.com, api.laifeng.com, api.m.jd.com, api.mddcloud.com.cn, api.mgzf.com, api.psy-1.com, api.rr.tv, api.smzdm.com, api.tv.sohu.com, api.wallstreetcn.com, api.xiachufang.com, api.zhuishushenqi.com, api5.futunn.com, api-mifit.huami.com, api-mifit-cn.huami.com, api-release.wuta-cam.com, app.10086.cn, app.58.com, app.api.ke.com, app.biliintl.com, app.m.zj.chinamobile.com, app.mixcapp.com, app.variflight.com, app.wy.guahao.com, api3.cls.cn, appsdk.soku.com, atrace.chelaile.net.cn, b.zhuishushenqi.com, c.m.163.com, cap.caocaokeji.cn, capi.douyucdn.cn, capi.mwee.cn, cdn.fivecdm.com, cdn.kuaidi100.com, cdn.moji.com, channel.beitaichufang.com, classbox2.kechenggezi.com, client.mail.163.com, cms.daydaycook.com.cn, cn-acs.m.cainiao.com, connect.facebook.net, creatives.ftimg.net, creditcard.ecitic.com, d.1qianbao.com, daoyu.sdo.com, dapis.mting.info, dl.app.gtja.com, dongfeng.alicdn.com, discardrp.umetrip.com, dsp-impr2.youdao.com, dspsdk.abreader.com, e.dangdang.com, edith.xiaohongshu.com, esdk.tymcdn.com, explorer.tratao.com, fdfs.xmcdn.com, fm.fenqile.com, fuss10.elemecdn.com, g1.163.com, gab.122.gov.cn, gateway.abite.com, gateway.shouqiev.com, shopapi.io.mi.com, gorgon.youdao.com, gw.alicdn.com, gw-passenger.01zhuanche.com, home.mi.com, hm.xiaomi.com, hui.sohu.com, huichuan.sm.cn, i.weread.qq.com, i.ys7.com, i1.hoopchina.com.cn, iapi.bishijie.com, iface.iqiyi.com, iface2.iqiyi.com, img.jiemian.com, img.zuoyebang.cc, img01.10101111cdn.com, img1.126.net, img2.autoimg.cn, impservice.dictapp.youdao.com, impservice.youdao.com, interface.music.163.com, ios.wps.cn, issuecdn.baidupcs.com, kano.guahao.cn, lives.l.qq.com, m*.amap.com, m.aty.sohu.com, m.client.10010.com, m.creditcard.ecitic.com, m.ibuscloud.com, m.yap.yahoo.com, ma.ofo.com, mage.if.qidian.com, mapi.appvipshop.com, mapi.mafengwo.cn, mbasecc.bas.cmbchina.com, mbl.56.com, media.qyer.com, mi.gdt.qq.com, mimg.127.net, mmg.aty.sohu.com, mmgr.gtimg.com, mob.mddcloud.com.cn, mobile-api2011.elong.com, mp.weixin.qq.com, mrobot.pcauto.com.cn, mrobot.pconline.com.cn, ms.jr.jd.com, msspjh.emarbox.com, newclient.map.baidu.com, newsso.map.qq.com, nex.163.com, nnapp.cloudbae.cn, open.qyer.com, optimus-ads.amap.com, p.kuaidi100.com, p1.music.126.net, pan.baidu.com, passport.biliintl.com, pic.k.sohu.com, pic1.chelaile.net.cn, pic1cdn.cmbchina.com, pic2.zhimg.com, portal-xunyou.qingcdn.com, pss.txffp.com, r.inews.qq.com, render.alipay.com, render-oss-cdn.amap.com, resource.cmbchina.com, res-release.wuta-cam.com, ress.dxpmedia.com, richmanapi.jxedt.com, rm.aarki.net, rtbapi.douyucdn.cn, service.4gtv.tv, shop-api.retail.mi.com, slapi.oray.net, smkmp.96225.com, snailsleep.net, sns.amap.com, sp.kaola.com, ssl.kohsocialapp.qq.com, sso.ifanr.com, ssp.dzh.com.cn, static.api.m.panda.tv, static.vuevideo.net, static1.keepcdn.com, staticlive.douyucdn.cn, startup.umetrip.com, support.you.163.com, supportda.ofo.com, testflight.apple.com, thor.weidian.com, ups.youku.com, venus.yhd.com, wapwenku.baidu.com, wenku.baidu.com, www.dandanzan.com, www.facebook.com, www.firefox.com.cn, www.flyertea.com, www.ft.com, www.oschina.net, www.xiaohongshu.com, zhidao.baidu.com, zone.guiderank-app.com, ms.jr.jd.com, me-api.jd.com, api.m.jd.com, *.jd.com
ca-passphrase = 40A5BD8C
ca-p12 = MIIKPAIBAzCCCgYGCSqGSIb3DQEHAaCCCfcEggnzMIIJ7zCCBF8GCSqGSIb3DQEHBqCCBFAwggRMAgEAMIIERQYJKoZIhvcNAQcBMBwGCiqGSIb3DQEMAQYwDgQITV6iHdjueScCAggAgIIEGC0Iw7AquTk0+jILBHrIk0kYvm9o4iIWagdjCbwkKbKQ8FbBUv/78k9ea4BXs2rxYshzJFf3nG1Zj0MUUPqCiZAq1yCDN4EHscgMfMyHFA6hUhaKqeUkYEyp0+1o0BZKwbMGJD9eD1YV7MIX1gO1+DKodPgGcGkPxC3OEVQDp4qzCSLnBUsqHeWNuLmLSPAPx0gSk2XyvMdkZL3STi5hllJv44uttr66LKm/y96yoYe6LLGhRNeexuHUco1L9tBrVPHFFaDezyvZA/ZnVqZ3MRhgWx0d8E1kLt0BQx4M5NwIKBaPNfJ/9UsrPsEK4cfh+j6l4nh+/mByIClUnSYCwjfrzoW0iIQLzN12HNpt9dsVNa+ixJN4/wjGNl/BdDKVJRdDF+y7iyV462MNNIxkjmtkDMsyIRMpUMdzl8eyrNO/uM9DxCSjyFEPF63yF+SivaXag7UHs+F6g7AysOuU9qnB8u5o9i2AZNnlIXQwHEcLQb6Qfmq1VsxwEYXEA8ztRMBlizcqqZnYExTx0X/n6Lv7dKz2eQetyUskl8WxBbq79YHDvyx8F/e9/BgTXYQ6g6Jx9qqHAMtQ7RmL5J8iBW3mPgs71W64z2A5P0+OKQul/BB9xA1YnIonkJA6rKS2vHcENQt9OLtbWVY8oxSG6wPFKDsPIVeduk91vBbAUQ/7cgBzN8mAFs9Mcp7JHZ1aRDIhrhMWWu6ryZjjHwavc5y7Wb/VV9QnEdO6FG9joBtBUzuosKnjpQFFm/pLAbtvkb57jfTLaUQJkFWIoDPZKg4tCzRyd3OD+xcjA433cOrsCitwd+dM1uWj0cFRRGpq1sO7FjX1TBseoUaRc+QP68mVVOA7pwH893l2a86RkXbZ+RyS/OlO6uq4eQ3DlVUcT77KBtQF5A3ovPBwfonobtsSLn1LRmS6m6qmzhWdNtB/6ZbDxSntELgrWbf54aCSdvmfbxG8CqNg/7pzOk+2urcMveEOXi5zGdPNL13PEnyxQeLS+UAfjjxRQQeV6n4u9soKuo2W8g/+J4mDF7ZO5Sz2dWtbuZAniHQgwMagSGyglTw2f/xPqDnazavXBy20/cEo0OwBGuHvmiAGCFTIGNpXjitqU4jjaVo/B9fmlykJCGn91hnnvehZlElOAhzwWygdS+x8ySxl7O+mrm74/MF5lvlHiMZwZM2vIX1nsISmICaRb7mdiVRXBDuWTHc74dGJriwXe38cG/Bh2xeHJsmNNqVrKj+3UuQ8IDom7fxkfe+X6RDkdy+l8M7SZhH48D8HJZcESd7TsR1KjupNpEbv32lBzMWdS7oG2ho/7Tziip/q+gzjxphWTSlwWUqrF0wLgLDArw7T14JIq4nLII/VRFRjrJ0FwE+jkAbgvNXQpKCTbp1ZzP4wggWIBgkqhkiG9w0BBwGgggV5BIIFdTCCBXEwggVtBgsqhkiG9w0BDAoBAqCCBO4wggTqMBwGCiqGSIb3DQEMAQMwDgQIeT6PNEOdi+ECAggABIIEyNZM6zpYR5M28D00x4xsY9aNR/euwmv3zDcQv2JEqQ6WFcw7QdquN6eH4jAJ9zR5vH8UO32ZvPyqydl3pA/gPgzUCMjGWHCQvWbZdM2TOsMIZnj4RKRg6SAaq3+yH7auu3Db2HyE/FkgF4R2+D/E/HgeoXaD828OxH8cgUVzbeRrAx3sbPQWtlD2eftuybpmzpLs9gmQcpBGWh8/dWwIrbVHF5DCCj2auPiYbkznZhwW8AmiVZ6PM/+US1ZH1jCrKI79oxM+xAjVOiepjU2t6WW+14nW/PU5XmM02/hSQz1VL+z1v1+PskmSSx6f8VwUjRYvIFpuNz45LZUFlIseH1pKtrWMUDJCSYiCpNcHjYkn01Kd+YXIFQVYt99l4WYwNhioqYkMRaUi19CJHd0YOrPjdUdjDcJmIVdiUEkpmuDUuN5+uPEYQfKGDVQTnzJxmi4bNcWfvaXJ80M01ZJre2bkH3ONYPE2xuozWyB+LiAnnex6kXq+jmNtRF84f5l1iOj0phqI5qnILSKELDSF7wWr6rtZ6IJia+0AWaS+uJkVAqrzsZrOvyhTkpw6w6vBYlmPYlBh8db/MzMTqJZSZvA3BHh/eblX0sW6Kg2xfIlOg7l8TT63BENvaXWplRyaTuQe8cVK2jWxT3FJ87FMqIA20IPr4H1mQy+/4LyqgwSQ+1o1l8RcsXsUPxhcnTSgZ+r/2jDd9Io6Gl+8kIqDFpdYCdBYkWo86CJpZ9/AVwLaSvbtje2o7AqV924fDfQu21fnB9Z2xGYZ+PZd5LzWExRoHW2s6vzAw04ZXnQfa7FnvZbJ3BcWDwpmCKjS7uRWm4Xx90YWvh0oAtltNVb9AGNSNgLvv+S1DjO8TTxtwAQvGril91GK8+Do7jm56CnzAFzv2zsbkVWQawJ5vmJpsQTnYaDp6eFEshqTtxNI0t8hta5jJjFgRWHEj0MMt7VQIpkFdzCONiSHIOld4kb25nvAweGJO4oKH0I4p7brjviO0q/368QoppkYf53SQoXJpgeT+yQ+gwfJEdAWaKmO4J4545IrJYg5rNc9gnSnr09rDytjgfkhRLZ1qpWnPI0I6nTWgEFBxKGRhMOE81LoKjfbmIz8JVPeJ2SZYzUl2sgyUfefBZQ4Cyus0QbsO6uwk7GoYfyrLjSVy6zO1X5FcpiTe8iaomDZVMDb3GN2OdNenGn/51CM8oYFwlFYpApMyhY26RVcPvlnZRf/xTDZIAAN1cBrFXjw45ZXbt5SlUbpV9iWTLb8k4cWGU+0z1dapiShQq9LwOQP2ObNoZ6sNHpXDC7Ho7bmoZlltm6dojdkmKUhp3lDOBFwTo622m86JE7rp4uY/89SZpYwE/R4jvvX7NLo7+CsMH0N+PJYEsvLK+N0oOGzn5mdqYA2V4E7D6eQ3fp1gvCCFGUjeZHlZ/Q/huiAwAmskqNwmfO+im06ydZNnQ70MKIHkQaRsrxmYq/gBeL4sD6zQsxczI4J/rXrFlc96B7HTHzjct2dJtiLElAOY5+58SYpzaSmJw0QsX61dEK/uVgEh4N4C/POdk+tUTqKlRSnlml4lO+ab/J1BFXw5aEYuAE+m+ODGhxbkJvUqjClrpL7/+8RlZ3latbV/dlSZdKQajFsMCMGCSqGSIb3DQEJFTEWBBTH2+apUDOabsmJxCIYfKGiqrIiCDBFBgkqhkiG9w0BCRQxOB42AFMAdQByAGcAZQAgAEcAZQBuAGUAcgBhAHQAZQBkACAAQwBBACAANAAwAEEANQBCAEQAOABDMC0wITAJBgUrDgMCGgUABBRgrTHe5wuGHhUc4CtadiOARdQFFgQIGA8dWxKRWpQ=



{% endif %}
{% if request.target == "loon" %}

[General]
# IPV6 启动与否
ipv6 = false
# udp 类的 dns 服务器，用,隔开多个服务器，system 表示系统 dns
dns-server = 119.29.29.29, 223.5.5.5
# DNS over HTTPS服务器，用,隔开多个服务器
doh-server = https://223.5.5.5/resolve, https://sm2.doh.pub/dns-query
# 是否开启局域网代理访问
allow-wifi-access = false
# 开启局域网访问后的 http 代理端口
wifi-access-http-port = 7222
# 开启局域网访问后的 socks5 代理端口
wifi-access-socks5-port = 7221
# 测速所用的测试链接，如果策略组没有自定义测试链接就会使用这里配置的
proxy-test-url = http://connectivitycheck.gstatic.com
# 节点测速时的超时秒数
test-timeout = 2
# 指定流量使用哪个网络接口进行转发
interface-mode = auto
sni-sniffing = true
# 禁用 stun 是否禁用 stun 协议的 udp 数据，禁用后可以有效解决 webrtc 的 ip 泄露
disable-stun = true
# 策略改变时候打断连接
disconnect-on-policy-change = true
# 一个节点连接失败几次后会进行节点切换，默认 3 次
switch-node-after-failure-times = 3
# 订阅资源解析器链接
resource-parser = https://gitlab.com/lodepuly/vpn_tool/-/raw/main/Resource/Script/Sub-Store/sub-store-parser_for_loon.js
# 自定义 geoip 数据库的 url
geoip-url = https://gitlab.com/Masaiki/GeoIP2-CN/-/raw/release/Country.mmdb
# 配置了该参数，那么所配置的这些IP段、域名将不会转发到Loon，而是由系统处理
skip-proxy = 192.168.0.0/16, 10.0.0.0/8, 172.16.0.0/12, localhost, *.local, captive.apple.com, e.crashlynatics.com
# 配置了该参数，那么所配置的这些IP段、域名就会不交给Loon来处理，系统直接处理
bypass-tun = 10.0.0.0/8, 100.64.0.0/10, 127.0.0.0/8, 169.254.0.0/16, 172.16.0.0/12, 192.0.0.0/24, 192.0.2.0/24, 192.88.99.0/24, 192.168.0.0/16, 198.51.100.0/24, 203.0.113.0/24, 224.0.0.0/4, 239.255.255.250/32, 255.255.255.255/32
# 当切换到某一特定的WiFi下时改变Loon的流量模式，如"loon-wifi5g":DIRECT，表示在loon-wifi5g这个wifi网络下使用直连模式，"cellular":PROXY，表示在蜂窝网络下使用代理模式，"default":RULE，默认使用分流模式
ssid-trigger = "Ccccccc":DIRECT,"cellular":RULE,"default":RULE

[Proxy]

[Remote Proxy]

[Remote Filter]

[Proxy Group]
♻️ 自动选择=select, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Auto.png
🔰 节点选择=select, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Proxy.png
🌍 国外媒体=select, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/GlobalMedia.png
🌏 国内媒体=select, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/DomesticMedia.png
Ⓜ️ 微软服务=select, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Microsoft.png
📲 电报信息=select, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Telegram.png
🍎 苹果服务=select, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Apple.png
🎯 全球直连=select, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Direct.png
🛑 全球拦截=select, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Advertising.png
🐟 漏网之鱼=select, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Final.png

[Rule]

[Remote Rule]

[Rewrite]

[Host]

[Script]
# 多看阅读  (By @chavyleung)
# 我的 > 签到任务 等到提示获取 Cookie 成功即可
http-request ^https:\/\/www\.duokan\.com\/checkin\/v0\/status script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/duokan/duokan.cookie.js, requires-body=true, tag=多看_cookie
cron "16 9 * * *" script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/duokan/duokan.js, tag=多看阅读

# 飞客茶馆  (By @chavyleung)
# 打开 APP, 访问下个人中心
http-request ^https:\/\/www\.flyertea\.com\/source\/plugin\/mobile\/mobile\.php\?module=getdata&.* script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/flyertea/flyertea.cookie.js, tag=飞客茶馆_cookie
cron "17 9 * * * *" script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/flyertea/flyertea.js,tag=飞客茶馆

# 10010  (By @chavyleung)
# 打开 APP , 进入签到页面, 系统提示: 获取刷新链接: 成功
# 然后手动签到 1 次, 系统提示: 获取Cookie: 成功 (每日签到)
# 首页>天天抽奖, 系统提示 2 次: 获取Cookie: 成功 (登录抽奖) 和 获取Cookie: 成功 (抽奖次数)
http-request ^https?:\/\/act.10010.com\/SigninApp\/signin\/querySigninActivity.htm script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/10010/10010.cookie.js, tag=中国联通_cookie1
http-request ^https?:\/\/act.10010.com\/SigninApp(.*?)\/signin\/daySign script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/10010/10010.cookie.js, tag=中国联通_cookie2
http-request ^https?:\/\/m.client.10010.com\/dailylottery\/static\/(textdl\/userLogin|active\/findActivityInfo) script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/10010/10010.cookie.js, tag=中国联通_cookie3
cron "18 9 * * *" script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/10010/10010.js, tag=中国联通

# 万达电影  (By @chavyleung)
# 进入签到页面获取，网页端:https://act-m.wandacinemas.com/2005/17621a8caacc4d190dadd/
http-request ^https:\/\/user-api-prd-mx\.wandafilm\.com script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/wanda/wanda.cookie.js, tag=万达电影_cookie
cron "19 9 * * *" script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/wanda/wanda.js, tag=万达电影

[MITM]
hostname = m.client.10010.com, act.10010.com, www.flyertea.com, www.duokan.com, tieba.baidu.com
ca-p12 = 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
ca-passphrase = FA1A9849
skip-server-cert-verify = false

{% endif %}
{% if request.target == "quan" %}

[SERVER]

[SOURCE]

[BACKUP-SERVER]

[SUSPEND-SSID]

[POLICY]

[DNS]
1.1.1.1

[REWRITE]

[URL-REJECTION]

[TCP]

[GLOBAL]

[HOST]

[STATE]
STATE,AUTO

[MITM]

{% endif %}
{% if request.target == "quanx" %}

[general]
excluded_routes=192.168.0.0/16, 172.16.0.0/12, 100.64.0.0/10, 10.0.0.0/8
geo_location_checker=http://ip-api.com/json/?lang=zh-CN, https://github.com/KOP-XIAO/QuantumultX/raw/master/Scripts/IP_API.js
network_check_url=http://www.baidu.com/
server_check_url=http://www.gstatic.com/generate_204

[dns]
server=119.29.29.29
server=223.5.5.5
server=1.0.0.1
server=8.8.8.8

[policy]
static=♻️ 自动选择, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Auto.png
static=🔰 节点选择, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Proxy.png
static=🌍 国外媒体, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/GlobalMedia.png
static=🌏 国内媒体, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/DomesticMedia.png
static=Ⓜ️ 微软服务, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Microsoft.png
static=📲 电报信息, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Telegram.png
static=🍎 苹果服务, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Apple.png
static=🎯 全球直连, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Direct.png
static=🛑 全球拦截, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Advertising.png
static=🐟 漏网之鱼, direct, img-url=https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Final.png

[server_remote]

[filter_remote]

[rewrite_remote]

[server_local]

[filter_local]

[rewrite_local]

[mitm]

{% endif %}
{% if request.target == "mellow" %}

[Endpoint]
DIRECT, builtin, freedom, domainStrategy=UseIP
REJECT, builtin, blackhole
Dns-Out, builtin, dns

[Routing]
domainStrategy = IPIfNonMatch

[Dns]
hijack = Dns-Out
clientIp = 114.114.114.114

[DnsServer]
localhost
223.5.5.5
8.8.8.8, 53, Remote
8.8.4.4

[DnsRule]
DOMAIN-KEYWORD, geosite:geolocation-!cn, Remote
DOMAIN-SUFFIX, google.com, Remote

[DnsHost]
doubleclick.net = 127.0.0.1

[Log]
loglevel = warning

{% endif %}
{% if request.target == "surfboard" %}

[General]
loglevel = notify
interface = 127.0.0.1
skip-proxy = 127.0.0.1, 192.168.0.0/16, 10.0.0.0/8, 172.16.0.0/12, 100.64.0.0/10, localhost, *.local
ipv6 = false
dns-server = system, 223.5.5.5
exclude-simple-hostnames = true
enhanced-mode-by-rule = true
{% endif %}
{% if request.target == "sssub" %}
{
  "route": "bypass-lan-china",
  "remote_dns": "dns.google",
  "ipv6": false,
  "metered": false,
  "proxy_apps": {
    "enabled": false,
    "bypass": true,
    "android_list": [
      "com.eg.android.AlipayGphone",
      "com.wudaokou.hippo",
      "com.zhihu.android"
    ]
  },
  "udpdns": false
}

{% endif %}
{% if request.target == "singbox" %}

{
    "log": {
        "disabled": false,
        "level": "info",
        "timestamp": true
    },
    "dns": {
        "servers": [
            {
                "tag": "dns_proxy",
                "address": "tls://1.1.1.1",
                "address_resolver": "dns_resolver"
            },
            {
                "tag": "dns_direct",
                "address": "h3://dns.alidns.com/dns-query",
                "address_resolver": "dns_resolver",
                "detour": "DIRECT"
            },
            {
                "tag": "dns_fakeip",
                "address": "fakeip"
            },
            {
                "tag": "dns_resolver",
                "address": "223.5.5.5",
                "detour": "DIRECT"
            },
            {
                "tag": "block",
                "address": "rcode://success"
            }
        ],
        "rules": [
            {
                "outbound": [
                    "any"
                ],
                "server": "dns_resolver"
            },
            {
                "geosite": [
                    "category-ads-all"
                ],
                "server": "dns_block",
                "disable_cache": true
            },
            {
                "geosite": [
                    "geolocation-!cn"
                ],
                "query_type": [
                    "A",
                    "AAAA"
                ],
                "server": "dns_fakeip"
            },
            {
                "geosite": [
                    "geolocation-!cn"
                ],
                "server": "dns_proxy"
            }
        ],
        "final": "dns_direct",
        "independent_cache": true,
        "fakeip": {
            "enabled": true,
            {% if default(request.singbox.ipv6, "") == "1" %}
            "inet6_range": "fc00::\/18",
            {% endif %}
            "inet4_range": "198.18.0.0\/15"
        }
    },
    "ntp": {
        "enabled": true,
        "server": "time.apple.com",
        "server_port": 123,
        "interval": "30m",
        "detour": "DIRECT"
    },
    "inbounds": [
        {
            "type": "mixed",
            "tag": "mixed-in",
            {% if bool(default(global.singbox.allow_lan, "")) %}
            "listen": "0.0.0.0",
            {% else %}
            "listen": "127.0.0.1",
            {% endif %}
            "listen_port": {{ default(global.singbox.mixed_port, "2080") }}
        },
        {
            "type": "tun",
            "tag": "tun-in",
            "inet4_address": "172.19.0.1/30",
            {% if default(request.singbox.ipv6, "") == "1" %}
            "inet6_address": "fdfe:dcba:9876::1/126",
            {% endif %}
            "auto_route": true,
            "strict_route": true,
            "stack": "mixed",
            "sniff": true
        }
    ],
    "outbounds": [],
    "route": {
        "rules": [],
        "auto_detect_interface": true
    },
    "experimental": {
        "cache_file": {
            "enabled": true,
            "store_fakeip": true
        },
        "clash_api": {
            "external_controller": "127.0.0.1:9090",
            "external_ui": "dashboard"
        }
    }
}

{% endif %}