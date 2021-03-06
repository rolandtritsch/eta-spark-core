module Spark.Core.Internal.JavaDoubleRDD where

import Java
import Spark.Core.Internal.Types

foreign import java unsafe cache :: Java JavaDoubleRDD JavaDoubleRDD

foreign import java unsafe coalesce :: Int -> Java JavaDoubleRDD JavaDoubleRDD

foreign import java unsafe coalesce2 :: Int -> Bool -> Java JavaDoubleRDD JavaDoubleRDD

foreign import java unsafe distinct :: Java JavaDoubleRDD JavaDoubleRDD

foreign import java unsafe distinct2 :: Int -> Java JavaDoubleRDD JavaDoubleRDD

foreign import java unsafe "filter" filterDouble :: Function JDouble JBoolean -> Java JavaDoubleRDD JavaDoubleRDD

foreign import java unsafe first :: Java JavaDoubleRDD JDouble

foreign import java unsafe histogram :: JDoubleArray -> Java JavaDoubleRDD JLongArray

foreign import java unsafe histogram2 :: JDoubleArray -> Bool -> Java JavaDoubleRDD JLongArray

foreign import java unsafe histogram3 :: Int -> Java JavaDoubleRDD (Tuple2 JDoubleArray JLongArray)

foreign import java unsafe intersection :: JavaDoubleRDD -> Java JavaDoubleRDD JavaDoubleRDD

foreign import java unsafe max :: Java JavaDoubleRDD JDouble

foreign import java unsafe mean :: Java JavaDoubleRDD JDouble

foreign import java unsafe meanApprox :: Int64 -> Java JavaDoubleRDD (PartialResult BoundedDouble)

foreign import java unsafe "meanApprox" meanApprox2 :: Int64 -> JDouble -> Java JavaDoubleRDD (PartialResult BoundedDouble)

foreign import java unsafe min :: Java JavaDoubleRDD JDouble

foreign import java unsafe persist :: StorageLevel -> Java JavaDoubleRDD JavaDoubleRDD

foreign import java unsafe popStdev :: Java JavaDoubleRDD JDouble

foreign import java unsafe popVariance :: Java JavaDoubleRDD JDouble

foreign import java unsafe rdd :: Java JavaDoubleRDD (RDD JDouble)

foreign import java unsafe repartition :: Int -> Java JavaDoubleRDD JavaDoubleRDD

foreign import java unsafe sample :: Bool -> JDouble -> Java JavaDoubleRDD JavaDoubleRDD

foreign import java unsafe sample2 :: Bool -> JDouble -> Int64 -> Java JavaDoubleRDD JavaDoubleRDD

foreign import java unsafe sampleStdev :: Java JavaDoubleRDD JDouble

foreign import java unsafe sampleVariance :: Java JavaDoubleRDD JDouble

foreign import java unsafe setName :: String -> Java JavaDoubleRDD JavaDoubleRDD

foreign import java unsafe srdd :: Java JavaDoubleRDD (RDD Object)

foreign import java unsafe stats :: Java JavaDoubleRDD StatCounter

foreign import java unsafe stdev :: Java JavaDoubleRDD JDouble

foreign import java unsafe subtract :: JavaDoubleRDD -> Java JavaDoubleRDD JavaDoubleRDD

foreign import java unsafe "subtract" subtract2 :: JavaDoubleRDD -> Int -> Java JavaDoubleRDD JavaDoubleRDD

foreign import java unsafe "subtract" subtract3 :: JavaDoubleRDD -> Partitioner -> Java JavaDoubleRDD JavaDoubleRDD

foreign import java unsafe sum :: Java JavaDoubleRDD JDouble

foreign import java unsafe sumApprox :: Int64 -> Java JavaDoubleRDD (PartialResult BoundedDouble)

foreign import java unsafe sumApprox2 :: Int64 -> JDouble -> Java JavaDoubleRDD (PartialResult BoundedDouble)

foreign import java unsafe union :: JavaDoubleRDD -> Java JavaDoubleRDD JavaDoubleRDD

foreign import java unsafe unpersist :: Java JavaDoubleRDD JavaDoubleRDD

foreign import java unsafe unpersist2 :: Bool -> Java JavaDoubleRDD JavaDoubleRDD

foreign import java unsafe variance :: Java JavaDoubleRDD JDouble

foreign import java unsafe wrapRDD :: RDD JDouble -> Java JavaDoubleRDD JavaDoubleRDD
