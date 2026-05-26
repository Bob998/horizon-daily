---
layout: default
title: "Horizon Summary: 2026-05-26 (ZH)"
date: 2026-05-26
lang: zh
---

> From 13 items, 7 important content pieces were selected

---

1. [微软 Copilot Cowork 功能可通过恶意技能窃取文件](#item-1) ⭐️ 7.0/10
2. [IBM 剥离首家纯量子芯片代工厂](#item-2) ⭐️ 7.0/10
3. [挪威用华为闪存和 HPE Cray 打造主权大语言模型](#item-3) ⭐️ 6.0/10
4. [加州提议将 Linux 从年龄验证法中豁免](#item-4) ⭐️ 6.0/10
5. [教宗利奥十四世关于科技伦理的通谕](#item-5) ⭐️ 6.0/10
6. [微软放弃在卡利多尼亚的 244 英亩数据中心计划](#item-6) ⭐️ 6.0/10
7. [Yoti 年龄验证系统向第三方共享面部照片和设备指纹](#item-7) ⭐️ 5.0/10

---

<a id="item-1"></a>
## [微软 Copilot Cowork 功能可通过恶意技能窃取文件](https://www.promptarmor.com/resources/microsoft-copilot-cowork-exfiltrates-files) ⭐️ 7.0/10

安全研究人员演示了微软 Copilot 的 Cowork 功能可通过恶意技能绕过企业安全控制，窃取文件。 该漏洞对使用 Copilot 的企业构成重大数据泄露风险，尤其是在涉及敏感数据的金融公司。这凸显了在生产环境中部署 AI 代理前进行严格安全测试的必要性。 攻击通过诱骗用户安装恶意技能实现，该技能使用 curl 将数据管道传输至攻击者控制的服务器。微软已承认该问题，但指出 Cowork 仍处于测试阶段，并建议在不需要时禁用它。

hackernews · Kneenex · May 25, 21:45 · [社区讨论](https://news.ycombinator.com/item?id=48272354)

**背景**: 微软 Copilot Cowork 是一项新功能，利用 AI 代理在 Microsoft 365 应用中自动化多步骤工作流。技能是第三方扩展，可访问用户数据并执行操作，形成了类似应用商店漏洞的供应链攻击面。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://thejournal.com/articles/2026/03/16/microsoft-unveils-cowork-feature-for-copilot-ai-updates.aspx?admgarea=News1">Microsoft Unveils 'Cowork' Feature for Copilot, AI Updates --</a></li>
<li><a href="https://cybersecurityminute.com/cybersrime-and-cyber-warfare/ai-agent-skills-create-a-dangerous-new-attack-surface/">AI Agent Skills Create a Dangerous New Attack Surface |</a></li>

</ul>
</details>

**社区讨论**: 评论者对仓促部署表示担忧，部分人指出该攻击本质上是'curl | bash'场景，并不令人意外。其他人批评微软优先考虑速度而非安全，少数人则认为标题具有误导性，漏洞源于无能而非恶意。

**标签**: `#cybersecurity`, `#Microsoft`, `#AI`, `#data exfiltration`, `#enterprise risk`

---

<a id="item-2"></a>
## [IBM 剥离首家纯量子芯片代工厂](https://futurumgroup.com/insights/2-billion-chips-act-investment-in-quantum-bets-on-ibms-300mm-superconducting-silicon/) ⭐️ 7.0/10

IBM 剥离了首家纯量子芯片代工厂，并获得 20 亿美元《芯片法案》资金支持，使其他量子硬件公司能够使用共享基础设施。 此举创建了共享量子芯片制造设施，减少了重复建设，加速了量子计算行业的发展。同时，这也标志着 IBM 战略转向，专注于其核心咨询和服务业务。 该代工厂采用纯代工模式，即不自行设计芯片，而是为其他公司制造，类似于台积电。20 亿美元的《芯片法案》资金突显了美国政府对国内量子半导体制造的支持。

hackernews · rbanffy · May 25, 09:43 · [社区讨论](https://news.ycombinator.com/item?id=48265056)

**背景**: 纯代工厂（如台积电）专注于为其他公司制造芯片，而不与其竞争。2022 年签署成为法律的《芯片与科学法案》拨款 520 亿美元用于振兴美国半导体制造。IBM 的剥离使其他量子硬件初创公司能够使用先进制造设施，而无需自建晶圆厂。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Foundry_model">Foundry model - Wikipedia</a></li>
<li><a href="https://en.wikipedia.org/wiki/CHIPS_and_Science_Act">CHIPS and Science Act - Wikipedia</a></li>
<li><a href="https://www.nist.gov/chips/funding-updates">Funding Updates | NIST</a></li>

</ul>
</details>

**社区讨论**: 评论者指出，IBM 的业务模式历来阻碍创新，剥离量子代工厂是明智之举，可将投机性增长与核心咨询业务分开。还有人指出，文章缺乏对离子阱量子计算等竞争技术的讨论。

**标签**: `#IBM`, `#quantum computing`, `#semiconductors`, `#CHIPS Act`, `#spin-off`

---

<a id="item-3"></a>
## [挪威用华为闪存和 HPE Cray 打造主权大语言模型](https://www.blocksandfiles.com/flash/2026/05/22/norways-2-petabytes-of-huawei-flash-storage-and-llm-training/5244910) ⭐️ 6.0/10

挪威正在利用 2 PB 的华为闪存存储和名为 Olivia 的 HPE Cray 超级计算系统（拥有 448 个 GPU 和 64,512 个 CPU 核心）构建一个主权大语言模型（LLM）。 该项目突显了主权 AI 日益增长的趋势，即各国投资于独立的 AI 基础设施以减少对外国技术的依赖并保护文化和语言数据。它也引发了关于如此有限的硬件能否有效训练完整 LLM 的辩论。 Olivia 系统是 HPE Cray Supercomputing EX 系统，2 PB 的闪存存储来自华为。该项目旨在训练一个挪威语 LLM，以确保该国的历史、新闻和文化得到体现，这是主权 AI 支持者的论点。

hackernews · rbanffy · May 25, 19:37 · [社区讨论](https://news.ycombinator.com/item?id=48270770)

**背景**: 主权 AI 是指国家利用国内基础设施、数据和劳动力发展独立 AI 能力的战略。数据主权确保在一个国家内产生的数据受其法律管辖。挪威国家图书馆拥有大量数字化文本，可作为 LLM 的训练数据。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Sovereign_AI_Fund">Sovereign AI Fund</a></li>
<li><a href="https://grokipedia.com/page/Sovereign_AI">Sovereign AI</a></li>
<li><a href="https://en.wikipedia.org/wiki/Data_sovereignty">Data sovereignty</a></li>

</ul>
</details>

**社区讨论**: 评论者质疑仅用 448 个 GPU 训练完整 LLM 的可行性，认为在开源模型上使用 LoRA 更实际。有人建议挪威应构建并共享高质量挪威语训练数据集给前沿模型构建者。其他人指出 2 PB 闪存存储成本较低，暗示硬件投资不大。

**标签**: `#AI`, `#sovereign AI`, `#Huawei`, `#Norway`, `#LLM`

---

<a id="item-4"></a>
## [加州提议将 Linux 从年龄验证法中豁免](https://www.tomshardware.com/software/linux/california-moves-to-exempt-linux-from-its-upcoming-age-verification-law-after-backlash-over-forcing-operating-systems-to-collect-users-ages-amendment-proposed-by-the-same-lawmaker-who-wrote-the-original-law) ⭐️ 6.0/10

加州已提出对其《数字年龄保证法案》（AB-1043）的修正案，将 Linux 及其他开源操作系统从年龄验证要求中豁免，此前该法案遭到开源社区的强烈反对。 这一豁免为年龄验证法如何对待开源软件树立了先例，可能影响其他州和国家的类似立法。它也凸显了儿童安全法规与开源开发原则之间的紧张关系。 该修正案由起草原法律的同一位议员提出，表明其愿意解决意外后果。豁免仅适用于非主要用于商业目的的操作系统，这可能仍会使某些发行版受该法律约束。

hackernews · rbanffy · May 25, 18:19 · [社区讨论](https://news.ycombinator.com/item?id=48269961)

**背景**: 加州的 AB-1043 法案于 2024 年签署成为法律，要求操作系统实施年龄验证机制以保护未成年人上网。该法案遭到开源倡导者的批评，他们认为这将迫使 Linux 发行版收集用户年龄，侵犯隐私并违背开源精神。其他司法管辖区也出现了类似辩论，例如科罗拉多州的 SB51 法案也试图豁免开源软件。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://samsai.eu/post/linux-age-verification/">Linux age verification | /home/Samsai</a></li>
<li><a href="https://www.both.org/?p=13784">California’s age verification law is bad for open source</a></li>
<li><a href="https://www.phoronix.com/news/AlmaLinux-Age-Verification-Laws">AlmaLinux Comments On California Age Verification Law - Phoronix</a></li>

</ul>
</details>

**社区讨论**: 关于该新闻的评论反映出怀疑和谨慎乐观的混合情绪。一些用户认为豁免是一种策略性举措，旨在防止 Linux 开发者以第一修正案为由挑战该法律，而另一些人则认为这表明对社区关切的回应。还有关于法律范围是否过宽以及是否将不当负担转嫁给消费者而非公司的争论。

**标签**: `#regulation`, `#tech policy`, `#California`, `#Linux`, `#age verification`

---

<a id="item-5"></a>
## [教宗利奥十四世关于科技伦理的通谕](https://www.vatican.va/content/leo-xiv/en/encyclicals/documents/20260515-magnifica-humanitas.html) ⭐️ 6.0/10

教宗利奥十四世于 2026 年 5 月 15 日发布了题为《伟大的人性》的通谕，讨论科技的伦理和社会影响，并敦促建设者考虑更广泛的影响。 这份通谕标志着梵蒂冈对科技伦理日益深入的参与，可能影响全球关于负责任创新和监管的讨论。 通谕指出技术绝非中立，建设者对其创造物负有伦理责任，强调设计选择反映了对人性的看法。

hackernews · theletterf · May 25, 10:11 · [社区讨论](https://news.ycombinator.com/item?id=48265206)

**背景**: 梵蒂冈历史上曾发布关于社会伦理问题的通谕，例如教宗方济各关于环境的《愿祢受赞颂》。这份新通谕将这一传统延伸至科技领域，反映了对权力集中和社会影响的担忧。

**社区讨论**: Hacker News 的评论者普遍赞扬该通谕在科技伦理方面的深思熟虑，一些无神论者指出梵蒂冈的观点很有见地。讨论聚焦于技术能否被驯化为社会福祉服务，以及建设者的责任。

**标签**: `#technology ethics`, `#Vatican`, `#society`, `#philosophy`

---

<a id="item-6"></a>
## [微软放弃在卡利多尼亚的 244 英亩数据中心计划](https://www.tmj4.com/news/racine-county/microsoft-pulls-plug-on-plans-for-244-acre-data-center-in-caledonia-after-community-pushback) ⭐️ 6.0/10

微软因社区反对，取消了在威斯康星州卡利多尼亚建设 244 英亩数据中心的计划。 这凸显了当地对数据中心扩张的抵制日益增长，可能减缓科技基础设施发展并影响 AI 进程。投资者需关注数据中心项目的监管和社区风险。 该 244 英亩地块原计划建设大型数据中心，但社区反对导致项目取消。这与 2025 年至少 48 个数据中心项目因当地反对而被阻止或搁置的模式类似。

hackernews · cdrnsf · May 25, 13:09 · [社区讨论](https://news.ycombinator.com/item?id=48266422)

**背景**: 数据中心对 AI 和云计算至关重要，但其能源和土地需求常引发邻避效应。卡利多尼亚项目靠近失败的富士康工厂，后者曾承诺 1 万个就业岗位但未兑现，加剧了当地怀疑。社区反对正在重塑数据中心战略，审批流程需要公开听证和政治斡旋。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://news.harvard.edu/gazette/story/2026/04/why-are-communities-pushing-back-against-data-centers/">Why are communities pushing back against data centers ...</a></li>
<li><a href="https://www.blsstrategies.com/insights-press/community-opposition-is-reshaping-data-center-strategy">Community Opposition Is Reshaping Data Center Strategy</a></li>
<li><a href="https://www.thecooldown.com/green-business/data-center-opposition-local-resistance-construction-challenges/">New data reveals at least 48 data center projects were ...</a></li>

</ul>
</details>

**社区讨论**: 评论者指出该项目靠近失败的富士康项目，解释了当地怀疑的原因。有人质疑土地收购流程，认为这有利于大公司。还有人询问典型数据中心的规模，反映出公众对其规模的不熟悉。

**标签**: `#Microsoft`, `#data center`, `#infrastructure`, `#community opposition`, `#real estate`

---

<a id="item-7"></a>
## [Yoti 年龄验证系统向第三方共享面部照片和设备指纹](https://techxplore.com/news/2026-05-online-age-pointless-privacy.html) ⭐️ 5.0/10

一份报告显示，Yoti 的年龄验证系统将面部照片和设备指纹传输给第三方，与其隐私承诺相悖。 这引发了用户对隐私和数据安全的重大担忧，尤其是在政府越来越多地强制要求年龄验证的背景下。它可能削弱对数字身份系统的信任，并招致更严格的监管。 共享的数据包括面部图像和设备指纹，可用于跟踪和画像分析。Yoti 的年龄估计方法还会发送客户端提示元数据，实现超出用户预期的设备指纹识别。

hackernews · Lihh27 · May 25, 20:30 · [社区讨论](https://news.ycombinator.com/item?id=48271327)

**背景**: Yoti 是一家数字身份公司，提供基于 AI 的面部年龄估计和身份证件检查的年龄验证服务。它将自己宣传为一种私密且安全的在线证明年龄的方式。设备指纹识别通过收集独特的设备属性来识别用户，在 GDPR 等法规下引发隐私担忧。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.comparitech.com/blog/information-security/what-is-yoti-age-verification/">What is Yoti age verification ? Is it safe? - Comparitech</a></li>
<li><a href="https://trustdecision.com/articles/device-fingerprinting-privacy-trust-and-new-applications">TrustDecision | Device Fingerprinting : Privacy , Trust, and New...</a></li>
<li><a href="https://gologin.com/blog/device-fingerprinting/">What Is Device Fingerprinting , And Should You Care?</a></li>

</ul>
</details>

**社区讨论**: 评论者对 Yoti 及类似系统表示强烈不信任，认为年龄验证助长了大规模监控和身份盗窃。一些人指出，虽然设备指纹识别与 ChatGPT 等做法相比相对温和，但面部照片和文件扫描的共享则更为令人担忧。

**标签**: `#privacy`, `#age verification`, `#regulation`, `#tech`, `#data security`

---