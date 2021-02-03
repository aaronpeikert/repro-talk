## Background
<!-- this abstract should be between 350 and 1000 words-->
<!-- useful links:
https://www.conference-service.com/ressyn-bigdata/xpage.html?xpage=237&lang=en
https://www.conference-service.com/ressyn-bigdata/xpage.html?xpage=234&lang=en
-->
So-called "good scientific practice" mandates that a research artefact is reproducible.
That means that one obtains the same results with the same data from the same analysis.
New data sources and analytic strategies challenge our understanding of what is necessary to archive reproducibility.

## Objectives

<!-- combine the defining criteria of big data: Volume, Velocity, and Variety with the four pillars of reproducibility-->
Increased volume implies the need for distributed computing, while the variety of data sources require us to pay close attention to how data flows through our analysis and velocity forces our results to update dynamically.
Reproduction in times of big data can hence no longer be a task of human researchers but must be performed by computers.
Four concepts are necessary for the computer to meet these demands:

1. Software management allows for distributed computing,
2. dependency tracking coordinates the data flow,
3. dynamic document creation keeps the results up to date,
4. and version control works in concert with the rest to ensure reproducibility.

## Approach

The idea that powers these concepts is automation.
Tools to achieve automation are therefore at the centre of any effort to archive reproducibility.
We can adapt and apply tools that were originally meant for software development in a research context.

<!-- yes I repeat myself, but if one point sticks it is hopefully the four pillars -->
1. Software management with `Docker` ensures a stable software environment even across thousands of nodes,
2. dependency tracking with `Make` automates complicated preprocessing pipelines,
3. dynamic document creation with `RMarkdown` helps recreate results anytime, and
4. version control with `Git` pinpoints the analysis at a given point in time.

While these tools are proven to work, their origin in software engineering requires a steep learning curve for researchers.
A layer of abstraction could alleviate this downside.
The R package [`repro`](https://github.com/aaronpeikert/repro) wraps everyday tasks into composable building blocks.
Such an approach makes it easier to follow best practices by automatically configuring the needed tools. 

## Implications

To meet the demands of big data, the research community must move to a structured and automated approach to reproducibility.
This will require researchers to adopt new tools and workflows.
Therefore, widespread adoption of best practices needs easier to use tooling and more emphasis on education.
This upfront investment will pay for itself through more robust analyses that scale better and are easier to collaborate on.
