% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MeasureSimple.R
\name{mlr_measures_classif.mauc_aunp}
\alias{mlr_measures_classif.mauc_aunp}
\title{Multiclass AUC Scores}
\description{
Measure to compare true observed labels with predicted
probabilities
in multiclass classification tasks.
}
\details{
Multiclass AUC measures.
\itemize{
\item \emph{AUNU}: AUC of each class against the rest, using the uniform class
distribution. Computes the AUC treating a \code{c}-dimensional classifier
as \code{c} two-dimensional 1-vs-rest classifiers, where classes are assumed to have
uniform distribution, in order to have a measure which is independent
of class distribution change (Fawcett 2001).
\item \emph{AUNP}: AUC of each class against the rest, using the a-priori class
distribution. Computes the AUC treating a \code{c}-dimensional classifier as \code{c}
two-dimensional 1-vs-rest classifiers, taking into account the prior probability of
each class (Fawcett 2001).
\item \emph{AU1U}: AUC of each class against each other, using the uniform class
distribution. Computes something like the AUC of \code{c(c - 1)} binary classifiers
(all possible pairwise combinations). See Hand (2001) for details.
\item \emph{AU1P}: AUC of each class against each other, using the a-priori class
distribution. Computes something like AUC of \code{c(c - 1)} binary classifiers
while considering the a-priori distribution of the classes as suggested
in Ferri (2009). Note we deviate from the definition in
Ferri (2009) by a factor of \code{c}.
The person implementing this function and writing this very
documentation right now cautions against using this measure because it is
an imperfect generalization of AU1U.
}
}
\note{
The score function calls \code{\link[mlr3measures:mauc_aunu]{mlr3measures::mauc_aunp()}} from package \CRANpkg{mlr3measures}.

If the measure is undefined for the input, \code{NaN} is returned.
This can be customized by setting the field \code{na_value}.
}
\section{Dictionary}{

This \link{Measure} can be instantiated via the \link[mlr3misc:Dictionary]{dictionary} \link{mlr_measures} or with the associated sugar function \code{\link[=msr]{msr()}}:

\if{html}{\out{<div class="sourceCode">}}\preformatted{mlr_measures$get("classif.mauc_aunp")
msr("classif.mauc_aunp")
}\if{html}{\out{</div>}}
}

\section{Parameters}{

Empty ParamSet
}

\section{Meta Information}{


\itemize{
\item Type: \code{"classif"}
\item Range: \eqn{[0, 1]}{[0, 1]}
\item Minimize: \code{FALSE}
\item Required prediction: \code{prob}
}

}

\seealso{
\link[mlr3misc:Dictionary]{Dictionary} of \link[=Measure]{Measures}: \link{mlr_measures}

\code{as.data.table(mlr_measures)} for a complete table of all (also dynamically created) \link{Measure} implementations.

Other classification measures: 
\code{\link{mlr_measures_classif.acc}},
\code{\link{mlr_measures_classif.auc}},
\code{\link{mlr_measures_classif.bacc}},
\code{\link{mlr_measures_classif.bbrier}},
\code{\link{mlr_measures_classif.ce}},
\code{\link{mlr_measures_classif.costs}},
\code{\link{mlr_measures_classif.dor}},
\code{\link{mlr_measures_classif.fbeta}},
\code{\link{mlr_measures_classif.fdr}},
\code{\link{mlr_measures_classif.fnr}},
\code{\link{mlr_measures_classif.fn}},
\code{\link{mlr_measures_classif.fomr}},
\code{\link{mlr_measures_classif.fpr}},
\code{\link{mlr_measures_classif.fp}},
\code{\link{mlr_measures_classif.logloss}},
\code{\link{mlr_measures_classif.mauc_au1p}},
\code{\link{mlr_measures_classif.mauc_au1u}},
\code{\link{mlr_measures_classif.mauc_aunu}},
\code{\link{mlr_measures_classif.mbrier}},
\code{\link{mlr_measures_classif.mcc}},
\code{\link{mlr_measures_classif.npv}},
\code{\link{mlr_measures_classif.ppv}},
\code{\link{mlr_measures_classif.prauc}},
\code{\link{mlr_measures_classif.precision}},
\code{\link{mlr_measures_classif.recall}},
\code{\link{mlr_measures_classif.sensitivity}},
\code{\link{mlr_measures_classif.specificity}},
\code{\link{mlr_measures_classif.tnr}},
\code{\link{mlr_measures_classif.tn}},
\code{\link{mlr_measures_classif.tpr}},
\code{\link{mlr_measures_classif.tp}}

Other multiclass classification measures: 
\code{\link{mlr_measures_classif.acc}},
\code{\link{mlr_measures_classif.bacc}},
\code{\link{mlr_measures_classif.ce}},
\code{\link{mlr_measures_classif.costs}},
\code{\link{mlr_measures_classif.logloss}},
\code{\link{mlr_measures_classif.mauc_au1p}},
\code{\link{mlr_measures_classif.mauc_au1u}},
\code{\link{mlr_measures_classif.mauc_aunu}},
\code{\link{mlr_measures_classif.mbrier}}
}
\concept{classification measures}
\concept{multiclass classification measures}
