---
layout: default
title: "Horizon Summary: 2026-11-04 (ZH)"
date: 2026-11-04
lang: zh
---

> From 19 items, 5 important content pieces were selected

---

1. [美国科技巨头表外 AI 承诺激增 90%至 3.2 万亿美元](#item-1) ⭐️ 8.0/10
2. [Postman 被指控自动安装 AI 插件并共享 API 数据](#item-2) ⭐️ 6.0/10
3. [GitBook 遭 AI 代理定向攻击，基础设施凭证泄露](#item-3) ⭐️ 6.0/10
4. [Kalshi 及其联合创始人因违反犹他州赌博法面临重罪指控](#item-4) ⭐️ 6.0/10
5. [谷歌将关闭拒绝 AI 功能学校的搜索服务](#item-5) ⭐️ 6.0/10

---

<a id="item-1"></a>
## [美国科技巨头表外 AI 承诺激增 90%至 3.2 万亿美元](https://asia.nikkei.com/business/technology/artificial-intelligence/us-tech-giants-hidden-ai-debt-swells-90-to-3.2tn-in-6-months) ⭐️ 8.0/10

据《日经新闻》报道，美国科技巨头表外的 AI 相关债务和承诺在六个月内激增 90%，达到 3.2 万亿美元，引发了对科技行业财务透明度和系统性风险的担忧。 这很重要，因为不透明长期义务的快速积累可能掩盖大型科技公司的真实杠杆水平，如果 AI 投资未能产生预期回报，可能影响信贷市场、科技估值和更广泛的金融稳定。 3.2 万亿美元的数字包括数据中心租赁、电力采购和算力承诺的长期合同，有些跨越数十年，可能并不代表传统债务；缺乏标准化披露使得评估真实风险变得困难。

hackernews · angry_impala · Nov 3, 21:26 · [社区讨论](https://news.ycombinator.com/item?id=50358422)

**背景**: 表外项目是指未记录在公司资产负债表上的资产或负债，通常用于管理杠杆和风险。在 AI 热潮中，科技公司签署了大量基础设施和算力的长期合同，这些合同作为潜在隐性负债日益受到审视。金融稳定委员会等监管机构强调需要更好地披露此类承诺。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.metirai.com/blog/big-tech-3-trillion-off-balance-sheet-ai-commitments-2026">Big Tech's $3 Trillion in Off - Balance - Sheet AI Commitments | metir Blog</a></li>
<li><a href="https://en.wikipedia.org/wiki/Off-balance-sheet">Off - balance - sheet - Wikipedia</a></li>
<li><a href="https://www.investopedia.com/articles/investing/071513/understanding-offbalance-sheet-financing.asp">investopedia.com/articles/investing/071513/understanding- offbalance ...</a></li>

</ul>
</details>

**社区讨论**: 评论者争论这些承诺是否构成真正的债务，一些人认为它们只是未来支出合同且可能可取消，而另一些人则对风险集中和更广泛市场的潜在流动性压力表示担忧。

**标签**: `#AI`, `#tech-debt`, `#systemic-risk`, `#credit-markets`, `#big-tech`

---

<a id="item-2"></a>
## [Postman 被指控自动安装 AI 插件并共享 API 数据](https://github.com/postmanlabs/postman-app-support/issues/14370) ⭐️ 6.0/10

Postman 支持仓库中的一个 GitHub 问题指控该公司静默自动安装 AI 插件，并试图将所有 API 数据（包括密钥）共享到其服务器。该问题已吸引超过 320 条开发者评论，报告数据记录和合规问题。 这场争议引发了对一款广泛使用的开发者工具的重大数据隐私和安全担忧，可能影响企业采用、网络安全实践和监管合规。它还可能损害 Postman 的声誉，并加速向 Bruno 等竞争对手的迁移。 开发者报告称，Postman 记录每个 API 请求的详细信息，包括查询参数，而禁用日志端点会导致应用无法正常工作。一位医疗行业用户表示，其网络安全团队已取消对 Postman 的认证，促使他们一夜之间切换到 Bruno。

hackernews · sidgarimella · Nov 3, 17:22 · [社区讨论](https://news.ycombinator.com/item?id=50354960)

**背景**: Postman 是一款流行的 API 开发和测试工具，已从简单的开发者实用程序演变为具有 AI 功能的云平台。Bruno 是一个开源替代品，将请求定义本地存储在 Git 中，吸引注重隐私的团队。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://alternativeto.net/software/postman/">Best Postman Alternatives: 25+ API / REST Development tools</a></li>
<li><a href="https://betterstack.com/community/comparisons/postman-alternative/">Best 6 Free Alternatives to Postman in 2026 | Better Stack ...</a></li>

</ul>
</details>

**社区讨论**: 评论者对 Postman 的臃肿、强制登录和数据收集表示不满，许多人报告已切换到 Bruno。一位医疗行业用户指出 Postman 被其网络安全团队取消认证，其他人则质疑 Postman 如何证明其 50 亿美元以上的估值。

**标签**: `#Postman`, `#data privacy`, `#API tools`, `#cybersecurity`, `#developer tools`

---

<a id="item-3"></a>
## [GitBook 遭 AI 代理定向攻击，基础设施凭证泄露](https://news.ycombinator.com/item?id=50354336) ⭐️ 6.0/10

GitBook 披露，11 月 2 日欧洲中部时间 19:00，攻击者通过其所称的使用 AI 代理的复杂且高度定向的攻击，未经授权获取了部分基础设施凭证。公司随即下线应用和需认证的文档站点，更换全部凭证，作废所有客户的 API 令牌，目前正逐步恢复服务，其 CTO 也在 Hacker News 上公开回应。 该事件凸显了依赖第三方 SaaS 平台的企业日益面临的供应商风险敞口，尤其是在攻击者越来越多地利用 AI 代理发现和利用漏洞的背景下。由于 GitBook 是中型文档服务商而非系统性重要机构，直接市场影响有限，但此次泄露强化了对稳健的第三方风险管理和快速凭证轮换的需求。 GitBook 的调查显示，攻击者可能访问了 Git Sync 密钥、GitBook API 令牌、用于连接外部工具的第三方 API 令牌，以及网站访客向 GitBook Assistant 提出的问题，但未发现内容被修改的证据。建议客户轮换现有的 GitBook 和第三方 API 令牌，轮换已发布集成中使用的密钥，并重新认证 GitBook MCP 服务器。

hackernews · punchmesan · Nov 3, 16:45

**背景**: GitBook 是一个用于创建和发布文档的 SaaS 平台，被工程团队广泛用于托管内部和公开文档。基础设施凭证是允许服务之间以及与服务第三方工具进行身份验证的密钥和机密，因此成为攻击者的高价值目标。2026 年已发生多起有记录的 AI 代理实施网络攻击的事件，包括 Hugging Face 基础设施被入侵，这提高了人们对 AI 驱动威胁的认识。供应商风险管理计划可帮助组织评估和监控第三方 SaaS 提供商的安全状况。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/2026_OpenAI_agent_cyberattacks">2026 OpenAI agent cyberattacks - Wikipedia</a></li>
<li><a href="https://www.nudgesecurity.com/post/vendor-risk-management">SaaS Vendor Risk Management: 2026 Guide | Nudge Security</a></li>
<li><a href="https://cybernews.com/security/litellm-supply-chain-attack-credentials-leak/">Credentials from 2,500 organizations exposed in LiteLLM ...</a></li>

</ul>
</details>

**社区讨论**: 评论者赞扬 GitBook 主动自行轮换所有令牌，而不是将这一步留给用户，有人指出许多事件都跳过了这一环节。其他人对重大服务泄露的频繁发生表示担忧，并质疑 AI 代理是否是近期一波攻击的幕后黑手，还有人指向官方状态页面获取更新。

**标签**: `#cybersecurity`, `#data breach`, `#SaaS`, `#vendor risk`, `#technology`

---

<a id="item-4"></a>
## [Kalshi 及其联合创始人因违反犹他州赌博法面临重罪指控](https://arstechnica.com/tech-policy/2026/10/trump-admin-sues-utah-to-save-kalshi-from-the-states-total-ban-on-gambling/) ⭐️ 6.0/10

Kalshi 及其联合创始人因涉嫌违反犹他州赌博法而在该州被控重罪，同时特朗普政府已起诉犹他州，试图阻止其全面赌博禁令，主张联邦优先权。 此案将检验受 CFTC 监管的预测市场能否在州赌博禁令下全国运营，对金融科技监管、州主权以及事件合约的法律边界具有重要影响。 犹他州是对预测市场采取刑事或民事行动的多个州之一；争议核心在于事件合约属于联邦法律下的金融衍生品还是州法律下的赌博，全国已有超过 20 起未决诉讼。

hackernews · rbanffy · Nov 3, 15:29 · [社区讨论](https://news.ycombinator.com/item?id=50353229)

**背景**: Kalshi 是一家在 CFTC 注册的交易所，上市与经济和政治结果挂钩的事件合约。CFTC 认为预测市场受联邦监管，可在所有 50 个州运营，而各州则主张其属于赌博并应受地方禁令约束。第三巡回法院最近裁定联邦优先于州赌博法，但该问题可能最终上诉至最高法院。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.cftc.gov/LearnandProtect/PredictionMarkets">Understanding Prediction Markets and Event Contracts | CFTC</a></li>
<li><a href="https://www.ncsl.org/state-federal/prediction-markets-a-new-frontier-in-state-regulatory-authority">Prediction Markets: A New Frontier in State Regulatory Authority</a></li>
<li><a href="https://www.jdsupra.com/legalnews/prediction-markets-go-on-offense-this-4385134/">Prediction Markets Go on Offense: This Week’s Major... - JDSupra</a></li>

</ul>
</details>

**社区讨论**: 评论者意见分歧：一些人支持犹他州维护州主权和刑事执法，另一些人质疑为何股市被豁免，并建议限制广告而非全面禁止。还有人担忧 Kalshi 挑衅性营销以及针对 VPN 访问执行州法律的难度。

**标签**: `#Kalshi`, `#prediction markets`, `#gambling regulation`, `#state vs federal`, `#fintech regulation`

---

<a id="item-5"></a>
## [谷歌将关闭拒绝 AI 功能学校的搜索服务](https://www.nytimes.com/2026/11/03/us/google-search-schools-restrict-ai.html) ⭐️ 6.0/10

谷歌宣布，从 2027 年起，选择不使用其 AI 功能的 K-12 学校将默认失去谷歌搜索的访问权限，管理员必须明确启用 AI 才能保留搜索访问。在民选官员提出批评后，谷歌澄清，只要启用 AI Overviews，搜索就可以重新开启。 该政策将谷歌搜索与其 AI 产品捆绑，可能引发反垄断机构对搭售和捆绑行为的审查，并表明谷歌即使在教育等敏感领域也在激进地推动 AI 功能的货币化和普及。这也引发了对学生数据隐私的担忧，并可能促使学校转向替代搜索引擎。 该变更适用于 K-12 学生账户，将于 2027 年生效，除非学校管理员明确开启，否则 AI 产品默认关闭。谷歌的回应是在民选官员表达愤怒之后做出的，如果学校寻求替代方案，该政策可能使 DuckDuckGo 等竞争对手受益。

hackernews · ceejayoz · Nov 3, 15:25 · [社区讨论](https://news.ycombinator.com/item?id=50353192)

**背景**: 谷歌搜索是全球占主导地位的搜索引擎，其 AI Overviews 功能使用生成式 AI 来总结搜索结果。反垄断机构最近一直在审查大型科技公司将 AI 产品与核心服务捆绑的行为，例如谷歌 Android 案。在教育领域，学生数据隐私法律和学校 IT 政策通常限制 AI 工具，这使得该政策尤其具有争议。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.cnbc.com/2026/11/03/google-responds-to-outrage-over-removing-search-in-schools-that-ban-ai.html">Google responds to outrage over removing search in schools ...</a></li>
<li><a href="https://www.nbcnews.com/tech/tech-news/google-shut-search-schools-opt-ai-rcna607280">Google to shut off search for schools that opt out of AI</a></li>
<li><a href="https://jolt.law.harvard.edu/digest/the-antitrust-case-against-ai-overviews">The Antitrust Case Against AI Overviews - Harvard Journal of ...</a></li>

</ul>
</details>

**社区讨论**: 评论者对谷歌将 AI 与搜索捆绑表示不满，一些人指出 Gmail 的 GenAI 功能无法在不失去传统机器学习功能的情况下禁用。其他人质疑谷歌推出 AI 摘要的动机，并认为搜索质量已经下降，可能推动用户转向 DuckDuckGo 等替代品。

**标签**: `#Google`, `#AI regulation`, `#antitrust`, `#education technology`, `#search`

---