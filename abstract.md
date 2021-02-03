# Title: Reproducibility in Big Data with the repro package

Authors: Peikert, Aaron and Brandmaier, Andreas M.

## Background
<!-- this abstract should be between 350 and 1000 words-->
<!-- useful links:
https://www.conference-service.com/ressyn-bigdata/xpage.html?xpage=237&lang=en
https://www.conference-service.com/ressyn-bigdata/xpage.html?xpage=234&lang=en
-->
The rules of "good scientific practice" mandate that a research artefact is reproducible.
Reproducibility is ensured if the same results can be obtained with the same data from the same analysis.
Big data applications particulary are threatened by non-reproducibility because data often come multiple sources, are large and messy and preprocessing may rely on multiple software packages.
Then, it becomes increasingly difficult to track and document all steps of an analysis pipeline and guarantee their reproducibility.

## Objectives

<!-- combine the defining criteria of big data: Volume, Velocity, and Variety with the four pillars of reproducibility-->
Increased volume implies the need for distributed computing, while the variety of data sources require us to pay close attention to how data objects flow through our analysis, and velocity forces our results to update dynamically.
Reproduction in times of big data can hence no longer be a manual task for human researchers but must be executed by computers.
Four concepts are necessary to meet these demands:

1. Software management allows for distributed computing,
2. dependency tracking coordinates the data flow,
3. dynamic document creation keeps the results consistent and up-to-date,
4. and version control to track changes over time

## Approach

Increasing the degree of automation is crucial to ensure reproducibility in big data applications.
We propose to adapt and apply tools in research contexts that were originally meant for software development:

<!-- yes I repeat myself, but if one point sticks it is hopefully the four pillars -->
1. Software management with `Docker` ensures a stable software environment across changing computing environments -- even across thousands of nodes in distributed environments,
2. dependency tracking with `Make` compose complex (pre-)processing pipelines,
3. dynamic document creation with `RMarkdown` helps to recreate results anytime, and
4. version control with `Git` tracks snapshots of the analysis over time.

While these tools have proven to be effective, their origin in software engineering requires a steep learning curve for researchers, who are typically not trained in using them.
We believe a layer of abstraction may ease access to these tools and their merits for reproducibility.
The R package [`repro`](https://github.com/aaronpeikert/repro) wraps everyday tasks into composable building blocks.
Our approach makes it easier to follow best practices by automatically configuring the needed tools. 

## Implications

To meet the demands of reproducibility in big data, the research community must move to a structured and automated approach.
This will require researchers to adopt new tools and workflows.
Therefore, widespread adoption of best practices needs easier to use tooling and more emphasis on education.
This investment upfront will pay for itself through more robust analyses that scale better, are well structured, and allow future users to recreate past results.
