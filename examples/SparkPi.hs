{-# LANGUAGE RankNTypes, ScopedTypeVariables, TypeOperators, FlexibleContexts #-}

import Java
import Spark.Core as S

main :: IO ()
main = java $ do
  conf <- newSparkConf
  conf <.> setAppName "SparkPi Application"
  sc <- newSparkContext conf
  io $ putStrLn $ "Hello SparkPi"
  sc <.> stop

{--
import scala.math.random

import org.apache.spark.sql.SparkSession

/** Computes an approximation to pi */
object SparkPi {
  def main(args: Array[String]) {
    val spark = SparkSession
      .builder
      .appName("Spark Pi")
      .getOrCreate()
    val slices = if (args.length > 0) args(0).toInt else 2
    val n = math.min(100000L * slices, Int.MaxValue).toInt // avoid overflow
    val count = spark.sparkContext.parallelize(1 until n, slices).map { i =>
      val x = random * 2 - 1
      val y = random * 2 - 1
      if (x*x + y*y <= 1) 1 else 0
    }.reduce(_ + _)
    println(s"Pi is roughly ${4.0 * count / (n - 1)}")
    spark.stop()
  }
}
--}
