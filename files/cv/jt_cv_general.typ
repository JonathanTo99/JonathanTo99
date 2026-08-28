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

#let section-block(title, body) = {
  if body == [] {
    []
  } else {
    section-heading(title)
    body
  }
}

#let subsection-heading(title) = {
  v(-3pt)
  text(size: 10pt, weight: "bold", style: "italic", title)
  v(-3pt)
}

#let subsection-block(title, body) = {
  if body == [] {
    none
  } else {
    subsection-heading(title)
    body
  }
}

#let section-group-block(title, body) = {
  let body = body.filter(it => it != none)

  if body.len() == 0 {
    []
  } else {
    section-heading(title)
    body.join()
  }
}

#let cv-entry(title, date, organization, location) = {
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

#section-block("Professional Summary", [
- *Computational Microbiologist* with a dual-threat wet+dry-lab background in assay development, QC validation, and reproducible data analysis, increasing QC testing throughput and reducing manual data review time. Experience spanning pharmaceutical microbiology, aseptic testing, mass spectrometry, cell assays, as well as SOP development, instrument troubleshooting, and cross-functional communication. Focusing on reproducible testing methodologies and scalable data analytics in support of cutting-edge radiopharmaceutical development & manufacturing.
])

#section-block("Education", [

#cv-entry("Bachelor of Science - Microbiology", "2026", "Brigham Young University", "Provo, UT")
- Relevant Coursework: MMBIO 522 *Flow Cytometry*, MMBIO 471 *Applied and Industrial Microbiology*

#cv-entry("Transferred, Biology (Emphasis: Microbiology)", "2021", "Brigham Young University-Idaho", "Rexburg, ID")
])

#section-block("Professional/Research Experience", [

#cv-entry("Microbiology Technician", "June 2026-Current", "Nucleus RadioPharma", "Rochester, MN")
- Supervisor(s): Mr. Wayne Alexander
- Performed routine microbiological tests and assays, ensuring data accuracy and compliance with established protocols
- Maintained aseptic techniques and safety standards while handling biological samples and reagents
- Documented experimental procedures and results in accordance with cGMP guidelines
- Operated and maintained standard microbiology laboratory & equipment, including incubators, BSCs, and stability chambers
- Tracked and managed laboratory inventory, ensuring availability of necessary supplies for ongoing experiments

#cv-entry("LCMS Proteomics QC Data Analyst", "September 2025-May 2026", "Brigham Young University", "Provo, UT")
- Supervisor(s): Dr. Chris Tracy
- Engineered robust Python data visualizing programs (Pandas/NumPy/Matplotlib) for Orbitrap Astral/Eclipse performance data analysis, reducing analysis time by 85%+ for large, high-dimensional DIA datasets from complex 3-species peptide libraries (HeLa, _E. coli_, Yeast)
- Validated mass spectrometry instrument performance and consistency using established 3-species libraries, identifying 11,000+ protein groups while maintaining rigorous statistical confidence (target CVs of ~7%) utilizing automated pipelines to support multi-lab discovery research
- Optimized isolation windows (120+ windows across 350-980 m/z) for deep proteome coverage, directly contributing to the optimization of facility-wide data acquisition standards
- Executed 30+ troubleshooting iterations on library generation and statistical replicate design, reducing QC failures and updating standard operating procedures (SOPs)
- Unified multitool proteomics pipelines (FragPipe, DIA-NN, FragPipe Analyst) into a single end-to-end ecosystem
- Established the MS Core facility's first GitHub repository and administered ARDIA Platform architecture for permission-controlled, multi-lab (5+) data access

#cv-entry("Undergraduate Virologist", "September 2025-May 2026", "Brigham Young University", "Provo, UT")
- Supervisor(s): Dr. Richard Robison
- Led a functional screening team of 5+ Undergraduateers, coordinating experimental schedules and standardizing protocols to increase assay throughput and optimize data consistency; trained new lab members on safety protocols, specimen handling, and assay procedures, reinforcing a culture of accuracy and protocol compliance
- Executed 12+ concurrent plaque assays to screen and validate phage infectivity against 5+ ATCC isolates (_A. actinomycetemcomitans_, _B. cepacia_, _K. pneumoniae_, _P. aeruginosa_, and _S. aureus_) in high volume, using standardized experimental assays and validation criteria to maintain reproducibility
- Generated 3+ high-titer viral libraries and maintained detailed GLP-style documentation, enabling traceable use in downstream characterization and screening assays
- Maintained sterile environments and followed BSL-2 safety protocols while isolating and purifying unknown bacteriophages from heterogeneous environmental samples
- Maintained QC records and strict specimen labeling practices, preventing misidentification and ensuring reproducible, accurate results consistent with GLP standards
- Managed laboratory supplies for culture media (LB/BHI broth/agar), utilizing aseptic techniques and autoclave sterilization to support uninterrupted isolation workflows

#cv-entry("Undergraduate Bacteriologist", "August 2024-May 2025", "Brigham Young University", "Provo, UT")
- Supervisor(s): Dr. Richard Robison
- Executed antimicrobial susceptibility testing on 12+ antibiotic-resistant BSL-2 strains, adhering to strict BSL-2 safety protocols and aseptic techniques
- Evaluated 30+ bio-preservative compounds for efficacy in milk products within complex food matrices (proteins/fats)
- Performed 25+ independent experimental runs to validate antimicrobial potency; managed cryopreservation and expansion of 8+ bacterial specimen stocks
- Maintained contamination-free cultures for 15+ bacterial lines using rigorous aseptic transfer techniques during high-volume screening workflows
- Managed the laboratory's Bacterial stock inventory, performing routine sub-culturing and preservation to maintain strain purity.

#cv-entry("Undergraduate Biochemist", "May 2022-September 2022", "Brigham Young University", "Provo, UT")
- Supervisor(s): Dr. Josh Price
- Validated 6+ protein interaction prediction algorithms by calculating True Positive/False Positive rates to assess predictive accuracy against experimental data
- Leveraged PyMOL to model interhelical stapling effects in the GCN4 system, correlating predicted structural changes with observed thermodynamic stability
- Synthesized and purified 13+ protein variants using PEGylation techniques to enhance solubility and stability for therapeutic applications
- Quantified folding stability via Differential Scanning Calorimetry (DSC); assessed disulfide stapling effects between salt-bridging residues to establish structure-function relationships

#cv-entry("Drug Discovery Intern - Biology", "May 2025-September 2025", "Halia Therapeutics, Inc.", "Lehi, UT")
- Supervisor(s): Dr. William Burnett, Dr. Alexis Mollard, Mr. Benjamin Bearss
- Executed high-throughput screening of 90+ compounds for hit identification and lead optimization, generating 150+ high-precision IC-50 curves to drive lead compound selection via crucial dose-response insights
- Modeled 120+ experiments in GraphPad Prism and interpreted complex dose-response datasets to support Go/No-Go decisions on early-stage neuroinflammation drug discovery programs
- Maintained 8+ mammalian cell cultures (THP-1) consecutively under strict aseptic technique, ensuring consistent and quality biological inputs for large-scale screening campaigns
- Optimized cell-based IL-1β assays for automation readiness, improving sensitivity, reducing intra-plate CVs and preparing protocols for integration into high-throughput screening
- Produced dose-response data using quantitative immunoassays (ELISA), identifying promising neuroinflammation inhibitors for further IND studies and development
- Optimized 15+ cell-based assay protocols for automation readiness, and systematically refined incubation times and reagent concentrations to enhance sensitivity/signal-to-noise ratios, to ensure robust reproducibility across multiple biological replicates in detecting IL-1β release
])

#section-block("Projects", [

#cv-entry("Undergraduate Virologist", "September 2025-Present", "Brigham Young University", "Provo, UT")
- _Bacteriophage Isolation & Characterization Against Multidrug-Resistant Pathogens_
- Investigated the use of bacteriophages as targeted therapeutic agents against two clinically significant, multidrug-resistant (MDR) pathogens: _Burkholderia cepacia_ complex (BCC), _Aggregatibacter actinomycetemcomitans_, and _Klebsiella pneumoniae_
- Conducted phage isolation from dental wastewater samples using enrichment protocols and the double-layer agar method targeting _B. cepacia_ complex and _A. actinomycetemcomitans_ strains; characterized negative plaque assay results as meaningful data for refining future isolation strategies
- Screened a panel of 10 known phage isolates against 7 clinical _K. pneumoniae_ strains via standardized plaque assays; identified 7 isolates with confirmed lytic activity, 5 of which demonstrated broad-spectrum lytic activity producing clear zones of lysis across all 7 clinical isolates
- Presented research findings to faculty and peers at laboratory meetings, communicating methodology, results, and implications for phage cocktail development as an alternative to conventional antibiotic therapy

#cv-entry("LCMS Proteomics QC Data Analyst", "September 2025-Present", "Brigham Young University", "Provo, UT")
- _Standardizing QC and Bioinformatics Workflows for Quantitative Proteomics_
- Addressed the critical gap between raw MS instrument data and trustworthy biological discovery by designing and implementing a standardized, end-to-end QC and bioinformatics framework for all BYU MS Core Facility users
- Implemented a three-tier QC validation framework (Tsantilas et al., 2024) encompassing system suitability monitoring, internal spiked-standard verification of sample digestion, and complex mixed-species (HYE) standards for quantitative accuracy validation
- Applied the HYE spike-in design (Human/Yeast/_E. coli_) to validate Orbitrap Astral & Eclipse mass spectrometer accuracy; demonstrated observed log#sub[2] fold-changes matched theoretical expectations, confirming instrument trustworthiness for differential expression studies
- Developed a custom Python tool to automate System Suitability and External QC checks, ensuring instrument validation is completed before any researcher samples are processed
- Presented findings at the BYU Student Research Conference (SRC), February 2026, communicating institutional impact and a roadmap for establishing a Regional MS Hub in the Mountain West; funded by the BYU Undergraduate Research Award (URA) program

#cv-entry("Undergraduate Bacteriologist", "September 2024-December 2024", "Brigham Young University", "Provo, UT")
- _Analysis of Bacillus Antimicrobial Compound Production_
- Isolated and characterized 12+ _Paenibacillus_ and _Bacillus_ strains from environmental samples using streak plating, colony morphology analysis, and Gram staining techniques
- Conducted 25+ antimicrobial susceptibility tests via agar diffusion assays against 6+ milk spoilage organisms (_E. coli_, _Listeria monocytogenes_, _Salmonella_ spp.) and foodborne pathogens
- Identified _Paenibacillus profundus_ M4.5 as lead candidate, demonstrating broad-spectrum activity with inhibition zones >15mm against high-priority foodborne dairy pathogens
- Presented research findings to 10+ faculty and students in regular laboratory meetings, communicating methodology, statistical analysis, and applications for natural food preservation
])

#section-block("Teaching", [])

#section-block("Skills", [
- *Computational Biology & Data Analytics*: Bioinformatics, Python (Pandas, NumPy, Matplotlib), FragPipe, DIA-NN, Ardia Platform, Git/GitLens/GitHub, Proteome Discoverer, GraphPad Prism, Floreada.io (Flow Cytometry Analysis), Obsidian/Notion (Project Management), AI Deep Research (Perplexity/NotebookLM), AI Agents (Copilot, Manus)
- *Drug Discovery & Cell Assays*: Cell-Based Assays, Compound Screening, Drug Discovery, Pharmaceutics, Algorithm Validation, Flow Cytometry, High-Throughput Screening (HTS), IC-50 Generation, ELISA/Immunoassays, Dose-Response Analysis, Cell Culture Maintenance (THP-1, Jurkat), Biomarker Target Analysis, Aseptic Technique
- *Mass Spectrometry & Instrumentation*: Thermo Orbitrap Astral & Eclipse Tribrid MS/MS, Vanquish Neo UHPLC, Data-Independent Acquisition (DIA), Label-Free Quantification (LFQ), Protein Characterization, Peptide Identification, CytoFLEX Flow Cytometer, Differential Scanning Calorimetry (DSC)
- *Molecular Biology*: Bacterial Transformation, PCR + Gel Electrophoresis, DNA/RNA Extraction, Phage Isolation & Purification, Viral Library Amplification, Agar Diffusion Assay, Gram Staining, Light Microscopy, BSL-2 Protocols
- *Quality Control & Documentation*: GLP-Standard Documentation, SOP Development & Optimization, Assay Validation (\<7% CV), Protocol Standardization
- *Languages*: Mandarin Chinese, Cantonese, German
])

#section-group-block("Publications", (
  subsection-block("Peer-Reviewed Journal Articles", []),
  subsection-block("Manuscripts under Peer-Review and Revision", []),
  subsection-block("Manuscripts in Preparation", []),
  subsection-block("Book Chapters", []),
  subsection-block("Other Manuscripts", []),
))

#section-block("Presentations", [
  #subsection-block("International", [])
  #subsection-block("National", [])
  #subsection-block("State", [])
  #subsection-block("University/Local", [
    #set par(hanging-indent: 1.5em)
    - *To, J.* (2026, February). _Optimizing Proteomics Workflows and Data Integrity Through Standardized QC and Open-Source Bioinformatics Tools._ BYU Student Research Conference. Provo, UT.
    #set par(hanging-indent: 0em)
  ])
])

#section-block("Volunteering", [

#cv-entry("Seeds of Success Volunteer", "March 2025-May 2026", "Brigham Young University Y-Serve", "Provo, UT")
- Delivered 20+ one-on-one tutoring sessions for a high school student in a dual immersion program, improving reading comprehension scores by 25% over two grading periods
- Created 15+ gamified lessons incorporating Quizlet flashcards, interactive vocabulary games, multimedia resources, and cultural activities tailored to student's learning pace and interests
- Assisted with 10+ homework assignments across reading, writing, and vocabulary exercises, reinforcing classroom concepts and building confidence in Mandarin character recognition
- Adapted teaching methods in real-time based on student engagement, transitioning between visual, auditory, and kinesthetic activities to match individual learning needs
])

#section-block("Leaderships", [

#cv-entry("Undergraduate Virologist", "September 2025-Present", "Brigham Young University", "Provo, UT")
- Supervised and trained 5 undergraduate researchers in bacteriophage isolation protocols, enforcing protocol adherence and standardizing experimental techniques across the team
- Identified process bottlenecks through systematic validation; refined assay methods to improve efficiency and reproducibility of experimental outputs
])

#section-block("Awards and Grants", [

- Recipient, Undergraduate Research Award (URA), Brigham Young University (2025-2026). Funded project: _Standardizing QC and Bioinformatics Workflows for Quantitative Proteomics._
])

#section-block("Certifications", [
- OSHA General Lab Safety Certificate --- #link("https://www.360training.com/")[360training]
- Level 1: Excel White Belt by McGraw Hill --- #link("https://certificates.simnetonline.com/6c8567a6-cdf3-4737-a2bc-77247d2d5d08")[McGraw Hill]
- Adult First Aid/CPR/AED by American Red Cross --- #link("https://www.redcross.org/take-a-class/qrcode?certnumber=029RJ1Q")[American Red Cross]
- Public Speaking Skills Professional Certificate by Toastmasters International --- #link("https://www.linkedin.com/learning/certificates/ecade829abb58c8fd7be65574099d7f854ca231c70338cf512b5c02d3f74c0ad?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_certifications_details%3BXG0IsRDXTMKR5cjNNldbSg%3D%3D")[Toastmasters International]

])

#section-block("Memberships", [])
