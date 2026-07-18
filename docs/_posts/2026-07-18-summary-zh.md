---
layout: default
title: "Horizon Summary: 2026-07-18 (ZH)"
date: 2026-07-18
lang: zh
---

> From 17 items, 4 important content pieces were selected

---

1. [FAA 恢复波音 737 MAX 和 787 的自认证权](#item-1) ⭐️ 9.0/10
2. [开源 AI 模型市场份额激增](#item-2) ⭐️ 7.0/10
3. [OpenVM ZkVM 严重漏洞可绕过签名验证](#item-3) ⭐️ 7.0/10
4. [凯撒护士称 AI 与监控损害工作与护理](#item-4) ⭐️ 6.0/10

---

<a id="item-1"></a>
## [FAA 恢复波音 737 MAX 和 787 的自认证权](https://www.cnbc.com/2026/07/17/faa-boeing-737-max-787.html) ⭐️ 9.0/10

2026 年 7 月 17 日，FAA 宣布波音可以再次为其 737 MAX 和 787 梦想客机颁发适航证书，推翻了 2018-2019 年致命坠机后实施的限制。 这一监管转变显著减轻了波音的认证负担，并表明监管机构信任度提升，可能提振投资者情绪并加快飞机交付进度。同时也重新引发了关于自认证安全风险的辩论。 FAA 在恢复波音权限前进行了数月的联合安全审查，该权限适用于下周起所有新的 737 MAX 和 787 飞机。自 2020 年以来，波音一直需要 FAA 检查员对每架飞机进行签字批准。

hackernews · hmm37 · Jul 17, 21:22 · [社区讨论](https://news.ycombinator.com/item?id=48952439)

**背景**: 适航证书是商业客运或货运运营的许可，与批准设计的型号证书不同。在 737 MAX 坠机后，FAA 撤销了波音的自认证授权，要求 FAA 直接监督。此次恢复是在波音实施流程改进并在 FAA 监督下成功完成认证之后。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.wccbcharlotte.com/2026/07/17/faa-says-boeing-can-resume-self-certifying-its-jets-as-airworthy/">FAA says Boeing can resume self-certifying its jets as airworthy - WCCB Charlotte</a></li>
<li><a href="https://aviationa2z.com/index.php/2026/07/18/faa-restores-boeing-authority-to-self-certify-new-737-max-and-787-jets/">FAA Restores Boeing Authority to Self-Certify New 737 MAX and 787 Jets - Aviation A2Z</a></li>
<li><a href="https://en.wikipedia.org/wiki/Airworthiness_certificate">Airworthiness certificate</a></li>

</ul>
</details>

**社区讨论**: 评论者对适航证书与型号证书的区别感到困惑，有人指出波音有多次重新认证的历史。对安全的怀疑依然存在，一位用户表示永远不会信任一家“靠美国政府维持生存”的公司。其他人则指出，消费者对 737 MAX 的抵制并未形成显著规模。

**标签**: `#Boeing`, `#FAA`, `#aviation regulation`, `#737 MAX`, `#787 Dreamliner`

---

<a id="item-2"></a>
## [开源 AI 模型市场份额激增](https://stateofopensource.ai/) ⭐️ 7.0/10

开源 AI 模型迅速抢占闭源模型的市场份额，OpenRouter 数据显示，开源模型在最近一天处理了 4.19 万亿个 token，四个月内增长了近 5 倍。 这一转变威胁到 OpenAI 和 Anthropic 等主要闭源 AI 公司的商业模式，因为开源模型正成为企业和开发者具有竞争力且成本效益高的替代方案。 OpenRouter 上的市场份额在短短四个月内从 60%闭源转变为 63%开源，表明快速采用趋势。超大规模云服务商和设备制造商可以无许可费运行开源模型，进一步削弱了专有模型的护城河。

hackernews · rellem · Jul 17, 14:31 · [社区讨论](https://news.ycombinator.com/item?id=48947825)

**背景**: 开源 AI 模型以宽松许可证公开提供，允许任何人使用、修改和分发。Meta 和 Mistral 等公司发布了具有竞争力的开源模型，而 OpenAI 和 Anthropic 则依赖专有模型和订阅收入。

**社区讨论**: 评论者讨论开源模型是否会扼杀闭源 AI 公司，一些人引用 token 快速增长作为证据。另一些人批评该演示文稿是 LLM 生成的且缺乏实质内容，但总体情绪是开源模型正在获得动力。

**标签**: `#AI`, `#open source`, `#market share`, `#technology`, `#investment`

---

<a id="item-3"></a>
## [OpenVM ZkVM 严重漏洞可绕过签名验证](https://blog.zksecurity.xyz/posts/openvm-bugs/) ⭐️ 7.0/10

OpenVM 的零知识虚拟机（zkVM）中发现了一个严重漏洞，该漏洞允许签名验证在不确保签名数据与哈希匹配的情况下通过。此漏洞可能使攻击者伪造签名，并危及依赖 OpenVM 的 L2 生态系统。 该漏洞直接威胁到使用 OpenVM zkVM 的 L2 区块链及基础设施的安全，因为签名伪造可能导致未经授权的交易或状态变更。这凸显了零知识证明系统中严格审计的关键重要性。 该漏洞存在于签名验证逻辑中：它检查签名是否对给定哈希进行了签名，但未能验证签名数据是否确实哈希到该哈希。这一疏忽可能被利用于依赖 OpenVM 生成证明的 rollup 或跨链桥等应用中。

hackernews · duha · Jul 17, 14:21 · [社区讨论](https://news.ycombinator.com/item?id=48947714)

**背景**: zkVM 是一种虚拟机，可为任意程序执行生成零知识证明，从而在不泄露私有数据的情况下实现可验证计算。OpenVM 是某些 L2 生态系统中使用的特定 zkVM 实现。签名验证是一种基本的密码学原语，用于确保消息的真实性和完整性。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.certik.com/blog/what-is-a-zero-knowledge-virtual-machine-zkvm">What Is a Zero - Knowledge Virtual Machine (zkVM)? - CertiK</a></li>
<li><a href="https://www.gate.com/learn/articles/what-is-a-zk-vm/3132">What Is a zk- VM ? Zero Knowledge Virtual Machine ... | Gate Learn</a></li>

</ul>
</details>

**社区讨论**: 评论者指出了该漏洞的严重性，有人将其比作一个签名库，该库验证了哈希上的签名，但未验证数据是否与哈希匹配。另一个人质疑其更广泛的影响，认为利用该漏洞可能需要重置受影响的 L2 生态系统。

**标签**: `#cryptography`, `#blockchain`, `#security`, `#zero-knowledge proofs`, `#vulnerability`

---

<a id="item-4"></a>
## [凯撒护士称 AI 与监控损害工作与护理](https://localnewsmatters.org/2026/07/15/kaiser-nurses-say-ai-workplace-surveillance-are-making-their-jobs-and-patient-care-worse/) ⭐️ 6.0/10

凯撒医疗集团的护士报告称，人工智能和工作场所监控工具正在对他们的工作和患者护理产生负面影响，尽管一些临床医生认为 AI 辅助具有价值。 这凸显了医疗效率工具与护理质量之间日益紧张的关系，对劳资关系、患者预后以及 AI 在医疗领域的应用具有影响。 投诉主要集中在呼叫中心指标和限制护理的压力上，而非 AI 本身。一个 AI 共情试点项目已于 2024 年终止。一些临床医生报告称，医疗 LLM 工具在翻译、笔记总结和快速解答方面带来了益处。

hackernews · gnabgib · Jul 17, 22:26 · [社区讨论](https://news.ycombinator.com/item?id=48952880)

**背景**: 凯撒医疗集团是美国大型医疗保健提供商。AI 和监控工具越来越多地用于医疗领域以监控生产力和质量，但如果使用不当，可能导致职业倦怠和护理限制。这场辩论反映了对医疗领域技术的更广泛担忧。

**社区讨论**: 评论观点不一：有人认为主要问题是指标滥用而非 AI，另一些人则批评用机器评估共情。一位临床医生的配偶报告了使用医疗 LLM 的积极体验，还有评论指出联合健康集团也存在类似问题。

**标签**: `#AI`, `#healthcare`, `#labor`, `#surveillance`, `#Kaiser`

---