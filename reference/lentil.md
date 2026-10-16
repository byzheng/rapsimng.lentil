# lentil model options manager

An options manager for configuring lentil model parameters. This object
provides methods to get and set lentil related parameters.

## Usage

``` r
lentil
```

## Value

An option manager object for configuring lentil model parameters.

## Available Options

- phenology.thermal_time.x:

  Cardinal temperatures for thermal time calculation. Default: c(2, 30,
  35)

- phenology.thermal_time.y:

  Effective thermal time at corresponding cardinal temperatures.
  Default: c(0, 28, 0)

- phenology.thermal_time.method:

  Method used for thermal time calculation. Supported values: "3hr" and
  "HourlySinPpAdjusted". Default: "HourlySinPpAdjusted"

- phenology.vernalisation_time.x:

  Cardinal temperatures for vernalisation time calculation. Default:
  c(0, 2, 8, 15)

- phenology.vernalisation_time.y:

  Effective vernalisation time at corresponding cardinal temperatures.
  Default: c(0, 1, 0.5, 0.0)

## Methods

- get(key):

  Retrieve the value of an option by its key (e.g.,
  "phenology.thermal_time.x")

- set(key, value):

  Set the value of an option by its key

- reset():

  Reset all options to their default values

## Examples

``` r
# Get default thermal time cardinal temperatures
lentil$get("phenology.thermal_time.x")
#>  [1]  1.600000  2.302041  3.004082  3.706122  4.408163  5.110204  5.812245
#>  [8]  6.514286  7.216327  7.918367  8.620408  9.322449 10.024490 10.726531
#> [15] 11.428571 12.130612 12.832653 13.534694 14.236735 14.938776 15.640816
#> [22] 16.342857 17.044898 17.746939 18.448980 19.151020 19.853061 20.555102
#> [29] 21.257143 21.959184 22.661224 23.363265 24.065306 24.767347 25.469388
#> [36] 26.171429 26.873469 27.575510 28.277551 28.979592 29.681633 30.383673
#> [43] 31.085714 31.787755 32.489796 33.191837 33.893878 34.595918 35.297959
#> [50] 36.000000

# Get default vernalisation time parameters
lentil$get("phenology.vernalisation_time.x")
#> [1]  0.0  4.7  8.0 14.0
lentil$get("phenology.vernalisation_time.y")
#> [1] 0.0 1.0 0.5 0.0

# Set custom values
lentil$set("phenology.thermal_time.x" = c(0, 25, 40), "phenology.thermal_time.y" = c(0, 25, 0))

# Reset to defaults
lentil$reset()
```
