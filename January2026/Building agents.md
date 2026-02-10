---
type: note
created: 2026-01-18
modified: 2026-01-18 00:05
tags:
  - "#agents"
categories:
  - ai 
projects:
  - pairent
priority:
permalink:
---
---
[5 day google AI Agents course](https://www.kaggle.com/learn-guide/5-day-agents)
## Recommended fast reading order

1. **Conceptual grounding**  
    [[Anthropic]] – _Building Effective AI Agents_  
    [https://www.anthropic.com/research/building-effective-agents](https://www.anthropic.com/research/building-effective-agents?utm_source=chatgpt.com)
    
2. **Platform primitives**  
    [[OpenAI]] – _Agents_ / _Building agents_  
    [https://platform.openai.com/docs/guides/agents](https://platform.openai.com/docs/guides/agents?utm_source=chatgpt.com)  
    [https://platform.openai.com/docs/guides/building-agents](https://platform.openai.com/docs/guides/building-agents)
    
3. **Implementation**  
    OpenAI – _Agents SDK_ **or** Anthropic – _Claude Agent SDK_  
    [https://platform.openai.com/docs/guides/agents-sdk](https://platform.openai.com/docs/guides/agents-sdk?utm_source=chatgpt.com)  
    https://docs.anthropic.com/en/docs/agents
    
4. **Tool design quality**  
    Anthropic – _Writing effective tools for agents_  
    https://www.anthropic.com/engineering/writing-effective-tools-for-agents
    
5. **Safety and evaluation**  
    OpenAI – _Safety in building agents_ + _Agent evals_  
    [https://platform.openai.com/docs/guides/safety/agents](https://platform.openai.com/docs/guides/safety/agents)  
    [https://platform.openai.com/docs/guides/evals/agents](https://platform.openai.com/docs/guides/evals/agents)
    
6. **Production operations**  
    Anthropic – _Effective harnesses for long-running agents_  
    [https://www.anthropic.com/engineering/effective-harnesses-for-long-running-agents](https://www.anthropic.com/engineering/effective-harnesses-for-long-running-agents?utm_source=chatgpt.com)

## Anthropic (Claude) — latest guides on building agents
- **Claude Agent SDK — Overview (Docs)**  
    https://docs.anthropic.com/en/docs/agents  
    Anthropic’s primary entry point for building agents: agent loop design, tool use, memory/context handling, and SDK usage (Python/TypeScript).
    
- **Building agents with the Claude Agent SDK (Engineering blog, Sept 29, 2025)**  
    [https://www.anthropic.com/engineering/building-agents-with-the-claude-agent-sdk](https://www.anthropic.com/engineering/building-agents-with-the-claude-agent-sdk?utm_source=chatgpt.com)  
    Practical, implementation-oriented walkthrough with architectural recommendations.
    
- **Building Effective AI Agents (Research blog, Dec 19, 2024)**  
    [https://www.anthropic.com/research/building-effective-agents](https://www.anthropic.com/research/building-effective-agents?utm_source=chatgpt.com)  
    High-level but influential piece on what _actually_ works in agent design: simple loops, composability, and avoiding over-engineered frameworks.
    
- **Writing effective tools for agents — with agents (Engineering blog, Sept 11, 2025)**  
    https://www.anthropic.com/engineering/writing-effective-tools-for-agents  
    Deep guidance on tool schema design, affordances, failure modes, and MCP-style interfaces.
    
- **Effective harnesses for long-running agents (Engineering blog, Nov 26, 2025)**  
    [https://www.anthropic.com/engineering/effective-harnesses-for-long-running-agents](https://www.anthropic.com/engineering/effective-harnesses-for-long-running-agents?utm_source=chatgpt.com)  
    Operational patterns for persistent agents: checkpoints, resumability, state externalization.
    
- **Agent Skills (Docs)**  
    https://docs.anthropic.com/en/docs/agents/agent-skills  
    How to package reusable capabilities for agents.
    
- **Claude Code subagents (Docs)**  
    [https://docs.anthropic.com/en/docs/claude-code/subagents](https://docs.anthropic.com/en/docs/claude-code/subagents)  
    How to define and orchestrate subagents inside Claude Code workflows.
    

---

## OpenAI — latest guides on building agents

- **Agents — API Guide (Main entry point)**  
    [https://platform.openai.com/docs/guides/agents](https://platform.openai.com/docs/guides/agents?utm_source=chatgpt.com)  
    OpenAI’s conceptual overview of agents: tools, state, orchestration, and control flow.
    
- **Agents SDK — API Guide**  
    [https://platform.openai.com/docs/guides/agents-sdk](https://platform.openai.com/docs/guides/agents-sdk?utm_source=chatgpt.com)  
    How to implement agentic systems programmatically, including tool calls, streaming, tracing, and handoffs.
    
- **Building agents — Learning track**  
    [https://platform.openai.com/docs/guides/building-agents](https://platform.openai.com/docs/guides/building-agents)  
    Structured path covering agent primitives, memory strategies, and orchestration patterns.
    
- **Agent Builder — API Guide**  
    [https://platform.openai.com/docs/guides/agent-builder](https://platform.openai.com/docs/guides/agent-builder?utm_source=chatgpt.com)  
    Visual/workflow-oriented mental model for composing agents, tools, and execution logic.
    
- **Safety in building agents — API Guide**  
    [https://platform.openai.com/docs/guides/safety/agents](https://platform.openai.com/docs/guides/safety/agents)  
    Guardrail patterns, prompt structuring, and risk mitigation for agentic systems.
    
- **Agent evals — API Guide**  
    [https://platform.openai.com/docs/guides/evals/agents](https://platform.openai.com/docs/guides/evals/agents)  
    Evaluation strategies tailored to agents: reliability, tool correctness, and failure modes.
    
- **A practical guide to building agents (Business / Engineering guide)**  
    [https://platform.openai.com/resources/building-agents](https://platform.openai.com/resources/building-agents)  
    End-to-end guidance: when to use agents, architecture choices, deployment, and monitoring.
    
- **New tools for building agents (Platform update, March 11, 2025)**  
    [https://openai.com/index/new-tools-for-building-agents](https://openai.com/index/new-tools-for-building-agents)  
    Announcement and framing of OpenAI’s agent toolchain.
    
- **Voice agents — API Guide (if relevant)**  
    [https://platform.openai.com/docs/guides/voice/agents](https://platform.openai.com/docs/guides/voice/agents)  
    Applying Agents SDK patterns to voice-first systems.



# Links
- [Langgraph agents](https://docs.langchain.com/oss/python/langgraph/overview#core-benefits
- [Why your AI agents still don’t work](https://x.com/abhigyawangoo/status/2013823175855923640?s=51&t=Y7QD1bkKjrAOGZ8k0gfBIg)

## Agent Evals
[[Agent evaluations]]
- [Demystifying evals for AI agents](https://www.anthropic.com/engineering/demystifying-evals-for-ai-agents)
## Agent Documentation
- https://www.mintlify.com/

## [[agentic ai security]]
