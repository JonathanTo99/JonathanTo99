#set page(paper: "us-letter", margin: (x: 0.6in, y: 0.5in))
#set text(font: "Fira Sans", size: 10pt)
#set par(justify: true)
#show link: set text(fill: blue)
#show link: underline

#let section-heading(title) = {
  text(size: 12pt, weight: "bold", upper(title))
  v(-7pt)
  line(length: 100%, stroke: 0.5pt + black)
  v(-5pt)
}

#let resume-entry(title, date, organization, location) = {
  grid(
    columns: (1fr, auto),
    row-gutter: 6pt,
    column-gutter: 0pt,
    [*#title*], align(right)[#date],
    [_#organization _], align(right)[_#location _]
  )
}

#align(center)[
  #text(size: 20pt, weight: "bold")[Jonathan To]
  #v(-10pt)
  (208) 346-3811 ·
  #link("mailto:toshuyi@gmail.com")[toshuyi\@gmail.com] ·
  #link("https://www.linkedin.com/in/jonathanto99/")[LinkedIn] ·
  #link("https://github.com/JonathanTo99/")[GitHub] ·
  #link("https://orcid.org/0000-0003-0879-7539")[ORCID]
]

#section-heading("Professional Summary")
- *Computational Microbiologist* with a dual-threat wet+dry-lab background in assay development, QC validation, and reproducible data analysis, increasing QC testing throughput and reducing manual data review time. Experience spanning pharmaceutical microbiology, aseptic testing, mass spectrometry, cell assays, as well as SOP development, instrument troubleshooting, and cross-functional communication. Focusing on reproducible testing methodologies and scalable data analytics in support of cutting-edge radiopharmaceutical development & manufacturing.

#section-heading("Education")

#resume-entry("Bachelor of Science - Microbiology", "Graduated in 2026", "Brigham Young University", "Provo, UT")
- Relevant Coursework: MMBIO 522 *Flow Cytometry*, MMBIO 471 *Applied and Industrial Microbiology*
- Awards: Undergraduate Research Award, 2025--26, Funded Presentation at Student Research Conference, Feb 2026

#section-heading("Professional/Research Experience")

#resume-entry("Microbiology Technician", "June 2026-Current", "Nucleus RadioPharma", "Rochester, MN")
- Performed routine microbiological tests and assays, ensuring data accuracy and compliance with established protocols
- Maintained aseptic techniques and safety standards while handling biological samples and reagents
- Documented experimental procedures and results in accordance with cGMP guidelines
- Operated and maintained standard microbiology laboratory & equipment, including incubators, BSCs, and stability chambers
- Tracked and managed laboratory inventory, ensuring availability of necessary supplies for ongoing experiments

#resume-entry("LCMS Proteomics QC Data Analyst", "Sep 2025 - May 2026", "Brigham Young University", "Provo, UT")
- Engineered robust Python data visualizing programs (Pandas/NumPy/Matplotlib) for Orbitrap Astral/Eclipse performance data analysis, reducing analysis time by *85%+* for large, high-dimensional DIA datasets from complex 3-species peptide libraries (HeLa, _E. coli_, Yeast)
- Validated mass spectrometry instrument performance and consistency using established 3-species libraries, identifying *11,000+* protein groups while maintaining rigorous statistical confidence (target CVs of ~7%) utilizing automated pipelines to support multi-lab discovery research
- Optimized isolation windows (*120+* windows across 350--980 m/z) for deep proteome coverage, directly contributing to the optimization of facility-wide data acquisition standards
- Executed *30+* troubleshooting iterations on library generation and statistical replicate design, reducing QC failures and updating standard operating procedures (SOPs)
- Unified multitool proteomics pipelines (FragPipe, DIA-NN, FragPipe Analyst) into a single end-to-end ecosystem; established the MS Core facility's first GitHub repository and administered ARDIA Platform architecture for permission-controlled, multi-lab (*5+*) data access

#resume-entry("Undergraduate Virologist", "Sep 2025 - May 2026", "Brigham Young University", "Provo, UT")
- Led a functional screening team of *5+* researchers, coordinating experimental schedules and standardizing protocols to increase assay throughput and optimize data consistency; trained new lab members on safety protocols, specimen handling, and assay procedures, reinforcing a culture of accuracy and protocol compliance
- Executed *12+* concurrent plaque assays to screen and validate phage infectivity against *5+* ATCC isolates (_A. actinomycetemcomitans_, _B. cepacia_, _K. pneumoniae_, _P. aeruginosa_, and _S. aureus_) in high volume, using standardized experimental assays and validation criteria to maintain reproducibility
- Generated *3+* high-titer viral libraries and maintained detailed GLP-style documentation, enabling traceable use in downstream characterization and screening assays
- Maintained sterile environments and followed *BSL-2* safety protocols while isolating and purifying unknown bacteriophages from heterogeneous environmental samples
- Maintained QC records and strict specimen labeling practices, preventing misidentification and ensuring reproducible, accurate results consistent with GLP standards

#resume-entry("Drug Discovery Intern - Biology", "May 2025 - Sep 2025", "Halia Therapeutics Inc.", "Lehi, UT")
- Executed high-throughput screening of *90+* compounds for hit identification and lead optimization, generating *150+* high-precision IC-50 curves to drive lead compound selection via crucial dose-response insights
- Modeled *120+* experiments in GraphPad Prism and interpreted complex dose-response datasets to support Go/No-Go decisions on early-stage neuroinflammation drug discovery programs
- Maintained *8+* mammalian cell cultures (THP-1) consecutively under strict aseptic technique, ensuring consistent and quality biological inputs for large-scale screening campaigns
- Optimized cell-based assays across *15+* weeks for automation readiness, improving sensitivity, reducing intra-plate CVs and preparing protocols for integration into high-throughput screening
- Produced dose-response data using quantitative immunoassays (ELISA), identifying promising neuroinflammation inhibitors for further IND studies and development

#section-heading("Skills")
- *Computational Biology & Data Analytics*: Bioinformatics, Python (Pandas, NumPy, Matplotlib), FragPipe, DIA-NN, Ardia Platform, Git/GitLens/GitHub, GraphPad Prism, Floreada.io (Flow Cytometry Analysis), Obsidian/Notion (Project Management), AI Deep Research (Perplexity/NotebookLM), AI Agents (Copilot, Manus)
- *Drug Discovery & Cell Assays*: Cell-Based Assays, Compound Screening, Drug Discovery, Pharmaceutics, Algorithm Validation, Flow Cytometry, High-Throughput Screening (HTS), IC-50 Generation, ELISA/Immunoassays, Dose-Response Analysis, Cell Culture Maintenance (THP-1, Jurkat), Biomarker Target Analysis, Aseptic Technique
- *Mass Spectrometry & Instrumentation*: Thermo Orbitrap Astral & Eclipse Tribrid MS/MS, Vanquish Neo UHPLC, Data-Independent Acquisition (DIA), Label-Free Quantification (LFQ), Protein Characterization, Peptide Identification, CytoFLEX Flow Cytometer, Differential Scanning Calorimetry (DSC)
- *Molecular Biology*: Bacterial Transformation, PCR + Gel Electrophoresis, DNA/RNA Extraction, Phage Isolation & Purification, Viral Library Amplification, Agar Diffusion Assay, Gram Staining, Light Microscopy, BSL-2 Protocols
- *Quality Control & Documentation*: GxP Documentation, SOP Development & Optimization, Sterility Assurance, Assay Validation, Protocol Standardization
- *Languages*: Mandarin Chinese, Cantonese, German

#section-heading("Volunteering")

#resume-entry("Seeds of Success Volunteer", "March 2025 - May 2026", "BYU Y-Serve", "Provo, UT")
- Delivered *20+* one-on-one tutoring sessions for a high school student in a dual immersion program, improving reading comprehension scores by *25%* over two grading periods
- Created *15+* gamified lessons incorporating Quizlet flashcards, interactive vocabulary games, multimedia resources, and cultural activities tailored to student's learning pace and interests
- Assisted with *10+* homework assignments across reading, writing, and vocabulary exercises, reinforcing classroom concepts and building confidence in Mandarin character recognition
- Adapted teaching methods in real-time based on student engagement, transitioning between visual, auditory, and kinesthetic activities to match individual learning needs

#section-heading("Certifications")
- OSHA General Lab Safety Certificate --- #link("https://www.360training.com/")[360training]
- Level 1: Excel White Belt by McGraw Hill --- #link("https://certificates.simnetonline.com/6c8567a6-cdf3-4737-a2bc-77247d2d5d08")[McGraw Hill]
- Adult First Aid/CPR/AED by American Red Cross --- #link("https://www.redcross.org/take-a-class/qrcode?certnumber=029RJ1Q")[American Red Cross]
- Public Speaking Skills Professional Certificate by Toastmasters International --- #link("https://www.linkedin.com/learning/certificates/ecade829abb58c8fd7be65574099d7f854ca231c70338cf512b5c02d3f74c0ad?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_certifications_details%3BXG0IsRDXTMKR5cjNNldbSg%3D%3D")[Toastmasters International]
