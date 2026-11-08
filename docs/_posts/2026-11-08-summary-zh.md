---
layout: default
title: "Horizon Summary: 2026-11-08 (ZH)"
date: 2026-11-08
lang: zh
---

> From 17 items, 3 important content pieces were selected

---

1. [微软研究院解散 AI Frontiers 团队](#item-1) ⭐️ 6.0/10
2. [自 2022 年起每台 Mac 运行未记录守护进程构建个人知识图谱](#item-2) ⭐️ 6.0/10
3. [Claude Code“不再询问”功能导致 1,122 个公开 GitHub 文件泄露密码](#item-3) ⭐️ 5.0/10

---

<a id="item-1"></a>
## [微软研究院解散 AI Frontiers 团队](https://hunch.net/?p=13764006) ⭐️ 6.0/10

微软研究院已解散其 AI Frontiers 团队，即将离职的研究员 John Langford 在其博客上宣布该团队结束。此举标志着微软从探索性 AI 研究转向基于 Transformer 的模型规模化。 这反映了更广泛的行业趋势，即大型科技公司优先考虑扩展基于 Transformer 的模型而非探索性研究，可能减少对替代 AI 方法的资助，并将资源集中在单一范式上。这对 AI 创新的多样性和科技行业的长期研究战略具有影响。 AI Frontiers 是微软研究院专注于 AI 基础进展的团队，其关闭恰逢微软研究院纽约分部合伙人研究经理 John Langford 的离职。该团队曾为微软研究院开发共享资源（如 monorepo），其解散表明微软正在整合围绕大规模 Transformer 模型的努力。

hackernews · srean · Nov 7, 18:02 · [社区讨论](https://news.ycombinator.com/item?id=50406563)

**背景**: 微软研究院是微软的研究部门，负责计算机科学和 AI 的基础与应用研究。AI Frontiers 团队是其专注于前沿 AI 研究的实验室之一，包括高效语言模型和代理系统。基于 Transformer 的模型（如 GPT）已成为大型语言模型的主导架构，扩展这些模型已被证明非常有效，导致企业优先考虑这一方法。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.microsoft.com/en-us/research/lab/ai-frontiers/">Microsoft Research AI Frontiers - Microsoft Research</a></li>
<li><a href="https://businessexaminer.ca/victoria-articles/item/microsoft-researcher-john-langford-exits-as-ai-frontiers-group-is-declared/">Microsoft Researcher John Langford Exits as AI Frontiers Group Is...</a></li>
<li><a href="https://hunch.net/?p=13764006">The End of AI Frontiers – Machine Learning (Theory)</a></li>

</ul>
</details>

**社区讨论**: 评论者普遍认为，此次关闭反映了全行业向基于 Transformer 的规模化转变，有人指出 Meta 等公司也 discouraged 探索性研究。一些人对失去多样化的 AI 研究表示悲伤，而另一些人指出，前沿模型现在已足够普及，可供独立研究。少数人对标题提出质疑，澄清只是团队结束，而非前沿本身。

**标签**: `#Microsoft`, `#AI research`, `#tech industry`, `#corporate strategy`, `#R&D`

---

<a id="item-2"></a>
## [自 2022 年起每台 Mac 运行未记录守护进程构建个人知识图谱](https://8rank.ai/game/apple-intelligence-personal-knowledge-graph) ⭐️ 6.0/10

一份新研究报告揭示，自 2022 年起出货的每台 Mac 都包含两个未记录的守护进程，它们构建关于用户的个人知识图谱，包括用户认识谁、如何通信以及去哪里。这些守护进程将数据存储在~/Library/IntelligencePlatform 下的 51 个 SQLite 数据库中，受 TCC 完全磁盘访问保护，但以明文存储。 这一披露引发了重大的隐私担忧，并可能增加对苹果的监管审查，而苹果一直以用户隐私为核心品牌。对投资者而言，这凸显了可能影响消费者信任和潜在法律挑战的声誉与监管风险。 据报道，这些守护进程是苹果智能平台的一部分，在本地运行并用于 Siri 和照片等功能，但其未记录的性质和明文存储引发了对数据安全和用户同意的质疑。该研究在原帖上引发了超过 300 条评论的热烈讨论。

hackernews · infwhispers · Nov 7, 09:46 · [社区讨论](https://news.ycombinator.com/item?id=50403097)

**背景**: 苹果长期将自己定位为注重隐私的公司，强调设备端处理和数据最小化。个人知识图谱是对用户关系、活动和偏好的结构化表示，常用于支持个性化服务。TCC（透明度、同意和控制）系统是 macOS 的隐私框架，要求应用在访问敏感数据前获得用户许可。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://8rank.ai/game/apple-intelligence-personal-knowledge-graph">Anatomy of Apple 's Personal Knowledge Graph — Eighth Rank</a></li>
<li><a href="https://en.wikipedia.org/wiki/Personal_knowledge_base">Personal knowledge base - Wikipedia</a></li>

</ul>
</details>

**社区讨论**: 评论者表达了担忧与务实态度的混合：一些人感叹隐私的侵蚀和始终在线记忆的社会影响，而另一些人指出，鉴于照片的面部识别等功能，这种数据收集是意料之中的，并且对于像 Siri 这样的上下文 AI 是必要的。研究作者也加入回答问题和分享后续工作。

**标签**: `#privacy`, `#Apple`, `#data collection`, `#regulation`, `#technology`

---

<a id="item-3"></a>
## [Claude Code“不再询问”功能导致 1,122 个公开 GitHub 文件泄露密码](https://apiiro.com/blog/coding-agents-leaking-secrets-github-dont-ask-again) ⭐️ 5.0/10

Apiiro 的安全研究人员发现，Claude Code 的“不再询问”权限功能可能导致密码和 API 密钥暴露在公开的 GitHub 仓库中，原因是开发者将包含已批准命令（命令中嵌入了密钥）的本地`.claude/settings.local.json`文件提交到了代码库。扫描共发现 1,122 个包含此类泄露凭据的公开 GitHub 文件，Claude Code 团队表示正在研究预防措施。 这一事件凸显了 AI 编程助手引入的一类新型供应链风险：将已批准命令存储在本地以便利使用的功能，可能无意中捕获密钥，一旦提交便会公开暴露。对于使用 Claude Code 的开发者和组织而言，这强调了严格密钥管理实践和仓库卫生的重要性，尽管对金融市场或宏观经济的直接影响仍然有限。 只有当开发者手动创建并提交`.claude/settings.local.json`文件时才会发生泄露，该文件本应保留在本地，且 Claude Code 在自动生成时会将其加入 gitignore。Claude Code 团队指出，其历史上并未进行密钥清理，目前正在研究可采取的预防措施，而 GitHub 已对公开仓库免费运行密钥扫描。

hackernews · shmulc · Nov 7, 20:45 · [社区讨论](https://news.ycombinator.com/item?id=50407882)

**背景**: Claude Code 是 Anthropic 推出的代理式编程工具，可执行命令和编辑文件；其权限系统允许用户通过“是，且不再询问”等选项批准操作，并将批准的命令记录在本地设置文件中。GitHub 的密钥扫描会自动检测公开仓库中暴露的凭据，但嵌入配置文件中的密钥若管理不当仍可能漏过。最佳实践建议使用专用密钥管理器（如 1Password、HashiCorp Vault、AWS Secrets Manager），并切勿提交本地配置文件。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://code.claude.com/docs/en/permissions">Configure permissions - Claude Code Docs</a></li>
<li><a href="https://docs.github.com/en/code-security/concepts/secret-security/secret-scanning">Secret scanning - GitHub Docs</a></li>

</ul>
</details>

**社区讨论**: 评论者反驳了标题的表述，澄清仅按下“不再询问”并不会泄露密码——泄露需要提交包含手动批准命令（命令中嵌入密钥）的本地设置文件。Claude Code 团队成员 Boris 确认该文件本应保留在本地并自动被 gitignore，另一位开发者分享了使用密码管理器（1Password CLI 配合生物识别批准）的工作流程，使凭据远离 Claude 的访问范围。

**标签**: `#security`, `#developer-tools`, `#GitHub`, `#Claude Code`, `#secrets-management`

---