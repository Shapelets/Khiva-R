#
#Copyright (c) 2019 Shapelets.io
#
#This Source Code Form is subject to the terms of the Mozilla Public
#License, v. 2.0. If a copy of the MPL was not distributed with this
#file, You can obtain one at http://mozilla.org/MPL/2.0/.

testthat::setup(
  SetBackend(KHIVABackend()$KHIVA_BACKEND_CPU)
)

context("Khiva Dtw tests")

test_that("Test Dtw", {
  ta <-
    as.single(c(1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5))
  a <- Array(array(ta, dim = c(5, 5)))
  out <- Dtw(a)
  b <- c(getData(out))
  expected = c(0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 10, 5, 0, 0, 0, 15, 10, 5, 0, 0, 20, 15, 10, 5, 0)
  expect_equal(b, expected, 1e-6)
})

context("Khiva Euclidean tests")

test_that("Test Euclidean", {
  ta <- as.single(c(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11))
  a <- Array(array(ta, dim = c(4, 3)))
  out <- Euclidean(a)
  b <- c(getData(out))
  expect_equal(b[1], 0, 1e-6)
  expect_equal(b[2], 0, 1e-6)
  expect_equal(b[3], 0, 1e-6)
  expect_equal(b[4], 8, 1e-6)
  expect_equal(b[5], 0, 1e-6)
  expect_equal(b[6], 0, 1e-6)
  expect_equal(b[7], 16, 1e-6)
  expect_equal(b[8], 8, 1e-6)
  expect_equal(b[9], 0, 1e-6)

  deleteArray(a)
  deleteArray(out)
})

context("Khiva Hamming tests")

test_that("Test Hamming", {
  ta <- as.single(c(1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5))
  a <- Array(array(ta, dim = c(5,5)))
  out <- Hamming(a)
  expected = c(0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 5, 5, 0, 0, 0, 5, 5, 5, 0, 0, 5, 5, 5, 5, 0)
  b <- c(getData(out))
  expect_equal(b, expected)
  deleteArray(a)
  deleteArray(out)
})

context("Khiva Manhattan tests")

test_that("Test Manhattan", {
  ta <- as.single(c(1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5))
  a <- Array(array(ta, dim = c(5,5)))
  out <- Manhattan(a)
  expected = c(0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 10, 5, 0, 0, 0, 15, 10, 5, 0, 0, 20, 15, 10, 5, 0)
  b <- c(getData(out))
  expect_equal(b, expected)
  deleteArray(a)
  deleteArray(out)
})

context("Khiva SBD tests")

test_that("Test SBD", {
  ta <- as.single(c(1, 2, 3, 4, 5, 1, 1, 0, 1, 1, 10, 12, 0, 0, 1))
  a <- Array(array(ta, dim = c(5, 3)))
  out <- Sbd(a)
  b <- c(getData(out))
  expect_equal(b[1], 0, 1e-6)
  expect_equal(b[2], 0, 1e-6)
  expect_equal(b[3], 0, 1e-6)
  expect_equal(b[4], 0.505025, 1e-6)
  expect_equal(b[5], 0, 1e-6)
  expect_equal(b[6], 0, 1e-6)
  expect_equal(b[7], 0.458583, 1e-6)
  expect_equal(b[8], 0.564093, 1e-6)
  expect_equal(b[9], 0, 1e-6)
  
  deleteArray(a)
  deleteArray(out)
})

context("Khiva SquaredEuclidean tests")

test_that("Test SquaredEuclidean", {
  ta <- as.single(c(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11))
  a <- Array(array(ta, dim = c(4, 3)))
  out <- SquaredEuclidean(a)
  b <- c(getData(out))
  expect_equal(b[1], 0, 1e-6)
  expect_equal(b[2], 0, 1e-6)
  expect_equal(b[3], 0, 1e-6)
  expect_equal(b[4], 64, 1e-6)
  expect_equal(b[5], 0, 1e-6)
  expect_equal(b[6], 0, 1e-6)
  expect_equal(b[7], 256, 1e-6)
  expect_equal(b[8], 64, 1e-6)
  expect_equal(b[9], 0, 1e-6)
  
  deleteArray(a)
  deleteArray(out)
})
