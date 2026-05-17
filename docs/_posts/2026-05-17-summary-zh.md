---
layout: default
title: "Horizon Summary: 2026-05-17 (ZH)"
date: 2026-05-17
lang: zh
---

> From 17 items, 3 important content pieces were selected

---

1. [Kioxia 与戴尔在 2RU 服务器中塞入 10 PB 存储](#item-1) ⭐️ 6.0/10
2. [OpenAI 员工 30 天花费 130 万美元 API 令牌](#item-2) ⭐️ 6.0/10
3. [DeepSeek-V4-Flash 的引导向量重燃大模型控制兴趣](#item-3) ⭐️ 5.0/10

---

<a id="item-1"></a>
## [Kioxia 与戴尔在 2RU 服务器中塞入 10 PB 存储](https://www.blocksandfiles.com/flash/2026/05/14/kioxia-and-dell-cram-10-pb-into-slim-2ru-server/5240574) ⭐️ 6.0/10

Kioxia 与戴尔联合开发了一款 2RU 服务器，利用高密度 NVMe SSD 实现了 10 PB 的存储容量，目标用户为超大规模云服务商和高端企业用户。 这一存储密度突破可显著降低数据中心占地面积和功耗，为 AI 及大规模分析工作负载提供更高效的数据管理能力。 该服务器受限于 PCIe 5.0 带宽，网络连接上限为 5x400Gbps；未来的 PCIe 7.0 和 8.0 标准有望解锁更高密度和吞吐量。

hackernews · rbanffy · May 16, 17:12 · [社区讨论](https://news.ycombinator.com/item?id=48161997)

**背景**: Kioxia 是领先的 NAND 闪存制造商，戴尔是主要服务器供应商。AWS、谷歌、微软等超大规模云服务商运营着庞大的数据中心，不断追求更高存储密度以降低成本和能耗。NVMe SSD 比传统 HDD 或 SATA SSD 速度更快，但成本也更高。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.denodo.com/en/glossary/hyperscalers-definition-importance-key-providers">Hyperscalers : Definition, Importance, and Key Providers | Denodo</a></li>
<li><a href="https://europe.kioxia.com/en-mea/business/news/2025/20251202-1.html">KIOXIA AiSAQ™ and memory-centric AI innovations enable AI-based...</a></li>

</ul>
</details>

**社区讨论**: 评论者指出，巨大的成本（可能 50 万至 100 万美元）使其仅限于超大规模云服务商及国防/研究领域。部分人讨论了带宽限制以及利用此类高密度存储构建轨道 CDN 的潜力。还有评论者批评文章混淆了 TB 和 PB 单位。

**标签**: `#storage`, `#enterprise hardware`, `#data center`, `#NVMe`, `#bandwidth`

---

<a id="item-2"></a>
## [OpenAI 员工 30 天花费 130 万美元 API 令牌](https://twitter.com/steipete/status/2055346265869721905) ⭐️ 6.0/10

一位名为 OpenClaw 创建者的 OpenAI 员工在 30 天内花费了 130 万美元的 OpenAI API 令牌，凸显了重度 AI 使用的巨大成本。 这一支出凸显了 AI 应用的高运营成本，引发了对 AI 公司及其投资者盈利能力和可持续性的担忧。 该员工作为 OpenAI 员工拥有无限 API 访问权限，130 万美元是使用快速模式的原始 API 成本；不使用快速模式则为 30 万美元。

hackernews · eamag · May 16, 11:34 · [社区讨论](https://news.ycombinator.com/item?id=48159227)

**背景**: OpenAI 根据令牌对 API 使用收费，不同模型定价不同。互联网泡沫时期，公司在客户获取上投入巨资但收入微薄，一些人认为 AI 领域正在重演这一模式。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://openai.com/api/pricing/">OpenAI API Pricing | OpenAI</a></li>
<li><a href="https://en.wikipedia.org/wiki/Dot-com_bubble">Dot - com bubble - Wikipedia</a></li>
<li><a href="https://www.investing.com/analysis/ai-market-valuations-flash-bubble-signs-but-remain-below-dotcom-extremes-200668218">AI Market Valuations Flash Bubble Signs but Remain... | Investing. com</a></li>

</ul>
</details>

**社区讨论**: 评论者就这笔支出是否合理展开辩论，有人将其与互联网时代的客户获取成本相比，并指出该员工拥有免费访问权限。其他人则质疑相对于成本的生产力提升。

**标签**: `#AI`, `#OpenAI`, `#API costs`, `#tech spending`, `#bubble comparison`

---

<a id="item-3"></a>
## [DeepSeek-V4-Flash 的引导向量重燃大模型控制兴趣](https://www.seangoedecke.com/steering-vectors/) ⭐️ 5.0/10

DeepSeek-V4-Flash 的引导向量允许用户操控大模型行为，例如移除拒绝回答，antirez 的 DwarfStar 项目已展示此功能。 这对 AI 开发者和投资者很重要，因为引导向量提供了一种定制大模型的实际方法，可能降低审查成本，并在金融和合规领域开启新用例。 引导技术可以移除模型的拒绝回答，这一过程称为“消融”，此前在旧模型上有效，现在正在 DeepSeek-V4-Flash 上探索。社区正在积极讨论如何将引导集成到用户界面和工作流中。

hackernews · Brajeshwar · May 16, 14:58 · [社区讨论](https://news.ycombinator.com/item?id=48160807)

**背景**: 引导向量是一种通过调整内部表示而非重新训练来修改大模型行为的方法。DeepSeek-V4-Flash 是近期开源的模型，因其可引导性而受到关注。DwarfStar 项目是 llama.cpp 的精简版，专注于运行 DeepSeek-V4-Flash。

**社区讨论**: 评论者强调引导技术有潜力移除拒绝回答（消融）并探索新的交互模式。有人纠正文章中的事实错误，指出 DwarfStar 是独立项目而非 llama.cpp 的精简版。还有人分享了使用引导改变模型政治立场的例子。

**标签**: `#AI`, `#LLM`, `#DeepSeek`, `#technology`, `#steering vectors`

---