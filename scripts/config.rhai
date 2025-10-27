// ===== AI安全 / LLM安全 专用配置 =====

// 主题类（论文类型 / 研究方向）
let titles_type = [
  "Alignment", "Safety", "Red Team", "Jailbreak", "Backdoor",
  "Trojan", "Poisoning", "Evaluation", "Benchmark", "Robustness",
  "Audit", "Monitoring", "Compliance", "Policy", "Risk",
  "Safety Overview", "Safety Survey"
];

// 模型类（关注 LLM / 大模型）
let titles_model = [
  "LLM", "GPT", "LLaMA", "DeepSeek", "Claude", "Gemini",
  "Mistral", "Transformer", "Agent", "Vision-Language", "R1",
  "Safety-tuned", "Guardrail", "SecLM"
];

// 方法类（安全攻防 / 评估方法）
let titles_method = [
  "Red Teaming", "Defense", "Mitigation", "Guardrail", "Safety Tuning",
  "Reinforcement", "RLHF", "RLAIF", "DPO", "Safety Fine-tuning",
  "Adversarial", "Poisoning", "Backdoor", "Watermark", "Detection",
  "Self-Guard", "Trustworthy", "Traceability", "Content Filtering",
  "Evaluation", "Debias", "Steering", "Constrained Decoding",
  "Trigger", "Context Infection", "Paralysis", "Cascade Trigger", "Safety Decoding"
];

// 合并所有关键词
let titles = titles_model.concat(titles_method, titles_type);

// 会议 / 期刊列表（AI安全 / LLM安全 / ML / NLP相关）
let conferences = [
  "S&P", "USENIX", "NDSS", "CCS", "RAID", "ESORICS", "ACSAC",
  "AAAI Safety", "ICML SafeML",
  "NeurIPS", "ICLR", "ICML", "UAI",
  "ACL", "EMNLP", "NAACL", "COLING", "AACL", "EACL",
  "PETs", "CHI", "AIES", "FAccT"
];


let start = conferences.shift();
let conferences_rg = conferences.reduce(|sum, v| sum + "|" + v, start);
let conferences_rg = "(" + conferences_rg + ")([\\s'-]*\\d+)?";

let start = titles.shift();
let title_rg = titles.reduce(|sum, v| sum + "|" + v, start);

let start = authors_array.shift();
let authors_rg = authors_array.reduce(|sum, v| sum + "|" + v, start);

export title_rg;
export authors_rg;
export conferences_rg;
