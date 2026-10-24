# KVC-3 — Critical Literature Review

**Source set:** 12 research publications (10 from 2021–2023 and 2 foundational references from 2020). Separate product documentation is considered in KVC-4 and is not counted among the 12 scientific publications.

Source metadata, URLs, research relevance, and limitations are included in `literature_matrix.xlsx`.

## Evidence synthesis

**Kazakh data.** KSC [R2] and KSC2 [R3] provide substantial transcribed Kazakh speech, including some Kazakh–Russian code-switching in KSC2. Both help define a possible ASR training and evaluation pathway; domain shift to short desktop commands and noisy rooms must be measured separately.

**Transfer across Turkic languages.** [R4] presents multilingual ASR work across Turkic languages. Transfer can help lower-resourced speech recognition, but these research outcomes cannot automatically be treated as expected command accuracy in our Windows application.

**Model families.** Whisper [R5] demonstrates large-scale weak supervision and multilingual generalization. XLS-R [R6] offers cross-lingual self-supervised representations. Fast Conformer [R8] explores more efficient ASR encoders. wav2vec 2.0 [R11] and Conformer [R12] are older conceptual foundations. Our stack decision requires a Kazakh command benchmark rather than selecting a model by its published benchmark scores alone.

**Benchmarks and adjacent capabilities.** FLEURS [R7] suggests multilingual evaluation practices, but its read-aloud speech may not represent spontaneous command speech. KazakhTTS2 [R9], multilingual Turkic TTS [R10], and SeamlessM4T [R13] concern related speech synthesis and multilingual systems. They are informative for possible future interaction features but cannot substitute for direct evidence about Kazakh ASR command recognition.

## Structured research matrix (12 distinct sources)

| ID | Study | Source URL | Useful contribution | Important limitation |
|---|---|---|---|---|
| R2 | Khassanov et al. (2021) | [Paper](https://aclanthology.org/2021.eacl-main.58/) | 332 h; diverse speakers; public Kazakh ASR data | General speech domain; not a Windows command set |
| R3 | Mussakhojayeva et al. (2022) | [Paper](https://www.isca-archive.org/interspeech_2022/mussakhojayeva22_interspeech.html) | Over 1,000 h; code-switching; potential model data | Dataset coverage does not prove task-specific command reliability |
| R4 | Mussakhojayeva et al. (2023) | [Paper](https://www.mdpi.com/2078-2489/14/2/74) | Turkic transfer and multilingual ASR evidence | Model gains may not transfer unchanged to desktop commands |
| R5 | Radford et al. (2023) | [Paper](https://proceedings.mlr.press/v202/radford23a.html) | Whisper family supports multilingual ASR | Needs Kazakh-specific measurement; accuracy unknown for project |
| R6 | Babu et al. (2022) | [Paper](https://www.isca-archive.org/interspeech_2022/babu22_interspeech.html) | Transfer learning alternative across many languages | Fine-tuned checkpoint needed; compute and licensing require checking |
| R7 | Conneau et al. (2022) | [Paper](https://research.google/pubs/fleurs-few-shot-learning-evaluation-of-universal-representations-of-speech/) | Cross-language evaluation methodology | Read-speech samples may not match spontaneous commands |
| R8 | Rekesh et al. (2023) | [Paper](https://research.nvidia.com/publication/2023-05_fast-conformer-linearly-scalable-attention-efficient-speech-recognition) | Conformer efficiency trade-offs; potential NeMo candidate | Original benchmarks are not Kazakh voice-control tasks |
| R9 | Mussakhojayeva et al. (2022) | [Paper](https://aclanthology.org/2022.lrec-1.578/) | Kazakh speech synthesis resource for future output features | TTS, not ASR; not required for initial checkpoint |
| R10 | Yeshpanov et al. (2023) | [Paper](https://www.isca-archive.org/interspeech_2023/yeshpanov23_interspeech.html) | Optional multilingual spoken-feedback directions | Not direct evidence for desktop speech recognition |
| R11 | Baevski et al. (2020) | [Paper](https://proceedings.neurips.cc/paper/2020/hash/92d1e1eb1cd6f9fba3227870bb6d7f07-Abstract.html) | Explains self-supervised adaptation with limited labels | Older source, foundational rather than recent |
| R12 | Gulati et al. (2020) | [Paper](https://research.google/pubs/conformer-convolution-augmented-transformer-for-speech-recognition/) | Hybrid attention/convolution ASR design | Older source; results from other languages |
| R13 | Barrault et al. / Seamless Communication (2023) | [Paper](https://ai.meta.com/research/publications/seamless-m4t/) | Broader multilingual voice pipeline perspective | Focus on multilingual translation, not Windows action execution |

## Critical conclusion / project gap

Existing research supports developing Kazakh ASR and exploring multilingual adaptation. The engineering gap addressed by this diploma project is **safe and measurably reliable Kazakh speech → intent recognition → Windows action execution**, evaluated end-to-end, with an accessible user interface and explicit handling of unknown or unsupported commands.

Existing Kazakh speech corpora make it possible to explore speech recognition models, but corpus availability alone does not guarantee reliable command recognition in realistic desktop environments.

Multilingual ASR studies provide useful alternatives for model selection. However, published performance metrics were obtained under particular experimental conditions and cannot be directly interpreted as the expected performance of the proposed system.

Speech synthesis and machine translation research may inform future conversational interaction features, but these technologies are not substitutes for the speech-to-command execution pipeline required by this project.

The literature does not establish task-success rate, latency, safety, or accessibility benefits for the proposed application. These properties require independent evaluation.

## Selection rationale

Core topic-specific evidence prioritizes research published between 2021 and 2023. Two papers from 2020 are retained as foundational references because they introduce important ASR architectures and self-supervised learning methods.

The 12 publications were selected to cover:

1. Kazakh-language speech datasets.
2. Multilingual ASR for Turkic languages.
3. Neural speech recognition architectures.
4. Multilingual speech evaluation methodology.
5. Adjacent speech synthesis and translation technologies.

The literature review distinguishes **reported findings from previous publications** from the team's proposed technical decisions.

No performance results from these publications are presented as original measurements conducted by the project team.

## References

**[R2]** Khassanov, Y., Mussakhojayeva, S., Mirzakhmetov, A., Adiyev, A., Nurpeiissov, M., & Varol, H. A. (2021). *A Crowdsourced Open-Source Kazakh Speech Corpus and Initial Speech Recognition Baseline*. Proceedings of EACL 2021, 697–706.

https://aclanthology.org/2021.eacl-main.58/

DOI: https://doi.org/10.18653/v1/2021.eacl-main.58

**[R3]** Mussakhojayeva, S., Khassanov, Y., & Varol, H. A. (2022). *KSC2: An Industrial-Scale Open-Source Kazakh Speech Corpus*. Proceedings of Interspeech 2022, 1367–1371.

https://www.isca-archive.org/interspeech_2022/mussakhojayeva22_interspeech.html

DOI: https://doi.org/10.21437/Interspeech.2022-421

**[R4]** Mussakhojayeva, S., Dauletbek, K., Yeshpanov, R., & Varol, H. A. (2023). *Multilingual Speech Recognition for Turkic Languages*. Information, 14(2), Article 74.

https://www.mdpi.com/2078-2489/14/2/74

DOI: https://doi.org/10.3390/info14020074

**[R5]** Radford, A., Kim, J. W., Xu, T., Brockman, G., McLeavey, C., & Sutskever, I. (2023). *Robust Speech Recognition via Large-Scale Weak Supervision*. Proceedings of the 40th International Conference on Machine Learning (ICML), PMLR 202, 28492–28518.

https://proceedings.mlr.press/v202/radford23a.html

**[R6]** Babu, A., et al. (2022). *XLS-R: Self-supervised Cross-lingual Speech Representation Learning at Scale*. Proceedings of Interspeech 2022, 2278–2282.

https://www.isca-archive.org/interspeech_2022/babu22_interspeech.html

DOI: https://doi.org/10.21437/Interspeech.2022-143

**[R7]** Conneau, A., et al. (2022). *FLEURS: Few-shot Learning Evaluation of Universal Representations of Speech*. IEEE Spoken Language Technology Workshop (SLT).

https://research.google/pubs/fleurs-few-shot-learning-evaluation-of-universal-representations-of-speech/

**[R8]** Rekesh, D., et al. (2023). *Fast Conformer with Linearly Scalable Attention for Efficient Speech Recognition*. NVIDIA Research.

https://research.nvidia.com/publication/2023-05_fast-conformer-linearly-scalable-attention-efficient-speech-recognition

**[R9]** Mussakhojayeva, S., Khassanov, Y., & Varol, H. A. (2022). *KazakhTTS2: Extending the Open-Source Kazakh TTS Corpus With More Data, Speakers, and Topics*. Proceedings of the Thirteenth Language Resources and Evaluation Conference (LREC 2022), 5404–5411.

https://aclanthology.org/2022.lrec-1.578/

**[R10]** Yeshpanov, R., Mussakhojayeva, S., & Khassanov, Y. (2023). *Multilingual Text-to-Speech Synthesis for Turkic Languages Using Transliteration*. Proceedings of Interspeech 2023, 5521–5525.

https://www.isca-archive.org/interspeech_2023/yeshpanov23_interspeech.html

DOI: https://doi.org/10.21437/Interspeech.2023-249

**[R11]** Baevski, A., Zhou, Y., Mohamed, A., & Auli, M. (2020). *wav2vec 2.0: A Framework for Self-Supervised Learning of Speech Representations*. Advances in Neural Information Processing Systems (NeurIPS 2020), Volume 33.

https://proceedings.neurips.cc/paper/2020/hash/92d1e1eb1cd6f9fba3227870bb6d7f07-Abstract.html

**[R12]** Gulati, A., et al. (2020). *Conformer: Convolution-augmented Transformer for Speech Recognition*. Proceedings of Interspeech 2020.

https://research.google/pubs/conformer-convolution-augmented-transformer-for-speech-recognition/

**[R13]** Barrault, L., et al. / Seamless Communication (2023). *SeamlessM4T—Massively Multilingual & Multimodal Machine Translation*. Meta AI Research.

https://ai.meta.com/research/publications/seamless-m4t/