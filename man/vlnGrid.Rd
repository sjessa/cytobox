% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/feature_plots.R
\name{vlnGrid}
\alias{vlnGrid}
\title{Generate a grid of tiny violins of gene expression in each cluster}
\usage{
vlnGrid(seurat, genes, subset_clusters = NULL, order = "genes",
  colours = NULL, scale = "width", title = NULL, scales = "free_x")
}
\arguments{
\item{seurat}{Seurat object}

\item{genes}{Genes to plot violins for, in the order (left to right)
in which they should be  plotted.}

\item{subset_clusters}{(Optional) Vector of clusters to include on the plot.}

\item{order}{Either "genes", or a vector containing the clusters in the order
they should be plotted (from top to bottom). If "genes", clusters will be sorted
in decreasing order of their median expression* of these genes, in the order
in which they're provided. Passing a vector will cause clusters to be plot
in that order. Default: "genes". *We take the median of cells with non-zero
expression values (in \code{seurat@data}).}

\item{colours}{(Optional) Vector of colours to use. Either one colour
per cluster, in the order of \code{levels(seurat@ident)}, or one colour per
cluster passed to \code{subset_clusters}, in the other they were provided.
Default: default ggplot2 colours used by Seurat.}

\item{scales}{See \code{scales} parameter in \code{\link[ggplot2]{facet_wrap}}.
Default: scales = "free_x", which allows every gene to have its own scale.}

\item{width}{String, one of "width", "area", or "count". From the ggplot2
documentation of \code{\link[ggplot2]{geom_violin}}: "if "area" (default), all violins have
the same area (before trimming the tails). If "count", areas are scaled
proportionally to the number of observations. If "width", all violins have
the same maximum width." Default: "width".}
}
\value{
A ggplot2 object
}
\description{
A grid of small violin plots, one plot per gene per cluster, similar to
Figure 5D in the Drop-seq paper by Macosko et al. Aka "fish plot".
}
\examples{
# Use the first 15 genes in the data, order by gene
vlnGrid(pbmc, head(rownames(pbmc@data), 15))

# Specify order
vlnGrid(pbmc, head(rownames(pbmc@data), 15), order = c(0, 3, 2, 1))

# Plot only a subset of clusters
vlnGrid(pbmc, head(rownames(pbmc@data), 15), subset_clusters = c(0, 1))

# Specify colours
vlnGrid(pbmc, head(rownames(pbmc@data), 15), subset_clusters = c(0, 1),
        colours = c("red", "blue"))
}
\author{
Selin Jessa
}
