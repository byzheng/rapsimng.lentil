
test_that("get returns correct default values", {
    lentil$reset()
    expect_equal(lentil$get("phenology.thermal_time.x"), c(0, 28, 35))
    expect_equal(lentil$get("phenology.thermal_time.y"), c(0, 28, 0))
})

test_that("set updates values correctly", {
    lentil$set(phenology = list(thermal_time = list(x = c(5, 25, 40), y = c(0, 20, 0))))
    expect_equal(lentil$get("phenology.thermal_time.x"), c(5, 25, 40))
    expect_equal(lentil$get("phenology.thermal_time.y"), c(0, 20, 0))
})

test_that("set enforces group validation", {
    # Missing y
    expect_no_error(
        lentil$set(phenology = list(thermal_time = list(x = c(1, 2, 3))))
    )

    # x and y different length
    expect_error(
        lentil$set(phenology = list(thermal_time = list(x = c(1, 2), y = c(0, 1, 2)))),
        "thermaltime x and y must have same length"
    )
})
