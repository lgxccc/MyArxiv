let titles_type = ["Denoising", "Survey", "Review", "Overview", "recommendation", "recommender", "Distribution Shift", "domain generalization", "Interpretability", "explainability"];
let titles_model = ["BERT", "GPT", "Transformer", "diffusion"];
let titles_method = ["Federated", "Semi-Supervised", "Prompt", "Self-Supervised", "knowledge", "graph", "invariance", "continual learning"];
let titles =  titles_model + titles_method + titles_type;
let authors_array = ["Yann LeCun", "Geoffrey Hinton", "Yoshua Bengio"];

let conferences = [
    // AI
    "AAAI", "ACM MM", "IJCAI", "IJCNN", "SIGGRAPH",
    // CV
    "ECCV", "ICCV", "ICME", "ICPR", "SIGGRAPH", "CVPR"
    // DM
    "CIKM", "DASFAA", "ECML-PKDD", "ICDE", "ICDM", "KDD", "PAKDD", "PODS", "RecSys", "SDM", "SIGMOD", "VLDB", "WSDM", "WWW", "EDBT", "CIDR",
    // IR
    "ICMR", "SIGIR",
    // ML
    "ACML", "ECML", "ICLR", "ICML", "NeurIPS", "NIPS", "UAI",
    // NLP
    "AACL", "ACL", "COLING", "COLT", "EACL", "EMNLP", "ICASSP", "NAACL",
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
