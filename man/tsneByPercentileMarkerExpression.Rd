% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/feature_plots.R
\name{tsneByPercentileMarkerExpression}
\alias{tsneByPercentileMarkerExpression}
\alias{dashboard}
\title{Colour cells in t-SNE space by percentile gene expression}
\usage{
tsneByPercentileMarkerExpression(seurat, genes, reduction = "tsne",
  label = TRUE, palette = "blues", title = NULL, alpha = TRUE,
  legend = TRUE, legend_options = "percentiles", point_size = 1,
  label_repel = TRUE, label_size = 4, extra = FALSE,
  verbose = FALSE, hide_ticks = FALSE, label_short = FALSE,
  dim1 = 1, dim2 = 2)
}
\arguments{
\item{seurat}{Seurat object, where dimensionality reduction has been applied,
i.e. (after applying Seurat::RunPCA() or Seurat::RunTSNE() to the object)}

\item{genes}{String or character vector specifying gene(s) to use}

\item{label}{Logical, whether to label clusters on the plot. Default: TRUE.}

\item{palette}{String or character vector. If a string,
one of "viridis", "blues", or "redgrey", specifying which gradient
palette to use. Otherwise, a character vector of colours (from low to high)
to interpolate to create the scael. Default: "blues".}

\item{title}{(Optional) string used as title for the plot.}

\item{alpha}{Logical, whether to vary the alpha (point opacity) with percentile
group to highlight cells in the top percentiles.
If FALSE, sets a fixed opacity of 0.8. Default: TRUE.}

\item{legend}{Logical, whether to plot the legend. Default: FALSE.}

\item{legend_options}{String, "percentiles" or "values". Default: "percentiles".}

\item{point_size}{Numeric, size of points in scatterplot. Default: 1. (A smaller
value around 0.5 is better for plots which will be viewed at small scale.)}

\item{label_repel}{Logical, if \code{label} is TRUE, whether to plot cluster
labels repelled from the center, on a slightly transparent white background and
with an arrow pointing to the cluster center. If FALSE, simply plot the
cluster label at the cluster center. Default: TRUE.}

\item{label_size}{Numeric, controls the size of text labels. Default: 4.}

\item{extra}{Logical, plot a detailed three-panel plot, where the first
is a proportional bar plot of cells in each cluster in each percentile
group, the second is a ridge plot showing density in each cluster of the mean
expression of the markers (coloured by median percentile group within the
cluster), and the third is the labelled tSNE plot coloured
by percentiles. Requires \code{label = TRUE}. Default: FALSE.
Default: FALSE.}

\item{verbose}{Logical, whether to print status updates. Default: FALSE.}

\item{hide_ticks}{Logical, whether to hide axis ticks. Default: FALSE}

\item{label_short}{(Optional/Experimental!!) Logical, if TRUE, assumes clusters
(at seurat@ident) consist of a prefix and a suffix separated by a non-alpha
numeric character (\code{"[^[:alnum:]]+"}), and tries to separate these names
and only plot the prefix, for shorter labels and a cleaner plot. Default: FALSE.}
}
\value{
A ggplot object
}
\description{
Plot a low-dimensional embedding of the cells,
coloured by expression percentile of a gene, of the total expression of a
group of marker genes.
}
\examples{
tsneByPercentileMarkerExpression(pbmc, "IL32")
dashboard(pbmc, "IL32", title = "Test dashboard")
feature(pbmc, "IL32")
}
\author{
Selin Jessa
}
