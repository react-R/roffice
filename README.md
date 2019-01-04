# roffice

<h2 style="background-color:red;">Experimental and For Demonstration Purposes Only</h2>

`roffice` is a package designed to demonstrate the new functionality included in [`reactR`](https://github.com/react-R/reactR) to leverage [`React`](https://reactjs.org/) and its diverse array of components as `htmlwidgets` in R.

> Alan Dilpert session at [rstudio::conf](http://www.cvent.com/events/rstudio-conf-austin/agenda-dd6d75526f3c4554b67c4de32aeffb47.aspx)

In `roffice` we illustrate some alternate techniques for building an `htmlwidget` around the extensive set of components from the Microsoft [Fabric](https://developer.microsoft.com/en-us/fabric) project.  Instead of using a `yarn` build with JavaScript modules, we use the `umd` build of Fabric.  Many React libraries do not offer a standalone build.  If the component or component set does provide a standalone build, then we can avoid the potentially difficult JavaScript/npm/yarn steps, and directly use only a couple of lines of JavaScript (see [officeuiwidget](https://github.com/react-R/roffice/blob/master/inst/htmlwidgets/officeuiwidget.js)).

```
// trick to include React Fragment component
//  which is like an empty container
Fabric.Fragment = React.Fragment;

// office-ui-fabric namespaces all the components with Fabric
reactR.reactWidget('officeuiwidget', 'output', Fabric);
```

## Installation

You can install the released version of `roffice` from Github.  We will also need to install the `enhancements` branch of `reactR`.

``` r
devtools::install_github("react-R/reactR@enhancements")
devtools::install_github("react-R/roffice")
```

## Examples

There are multiple examples [here](https://github.com/react-R/roffice/tree/master/inst/examples), but for the sake of including some code in this Readme.

``` r
library(reactR)
library(roffice)
```

## Code of Conduct

We would love help, comments, feedback, and other contributions, but please note that this project is released with a [Contributor Code of Conduct](CODE_OF_CONDUCT.md).  By participating in this project you agree to abide by its terms.  Violations, meanness, and any other behavior that is not inclusive and welcoming will not be tolerated.
