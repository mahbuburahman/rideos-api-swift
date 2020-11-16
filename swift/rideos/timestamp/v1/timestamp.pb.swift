// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: rideos/timestamp/v1/timestamp.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

//
// Copyright 2018-2019 rideOS, Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

/// An absolute point in time, referenced to the Unix epoch
public struct Rideos_Timestamp_V1_Timestamp {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Number of milliseconds since the Unix epoch (00:00:00 UTC on 1 January 1970)
  public var epochTimeMilliseconds: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// A duration of time - i.e. the difference between 2 timestamps
public struct Rideos_Timestamp_V1_Duration {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var milliseconds: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// A window of time
public struct Rideos_Timestamp_V1_TimeWindow {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var start: Rideos_Timestamp_V1_Timestamp {
    get {return _start ?? Rideos_Timestamp_V1_Timestamp()}
    set {_start = newValue}
  }
  /// Returns true if `start` has been explicitly set.
  public var hasStart: Bool {return self._start != nil}
  /// Clears the value of `start`. Subsequent reads from it will return its default value.
  public mutating func clearStart() {self._start = nil}

  public var end: Rideos_Timestamp_V1_Timestamp {
    get {return _end ?? Rideos_Timestamp_V1_Timestamp()}
    set {_end = newValue}
  }
  /// Returns true if `end` has been explicitly set.
  public var hasEnd: Bool {return self._end != nil}
  /// Clears the value of `end`. Subsequent reads from it will return its default value.
  public mutating func clearEnd() {self._end = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _start: Rideos_Timestamp_V1_Timestamp? = nil
  fileprivate var _end: Rideos_Timestamp_V1_Timestamp? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "rideos.timestamp.v1"

extension Rideos_Timestamp_V1_Timestamp: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Timestamp"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "epoch_time_milliseconds"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt64Field(value: &self.epochTimeMilliseconds) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.epochTimeMilliseconds != 0 {
      try visitor.visitSingularInt64Field(value: self.epochTimeMilliseconds, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Rideos_Timestamp_V1_Timestamp, rhs: Rideos_Timestamp_V1_Timestamp) -> Bool {
    if lhs.epochTimeMilliseconds != rhs.epochTimeMilliseconds {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Rideos_Timestamp_V1_Duration: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Duration"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "milliseconds"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt64Field(value: &self.milliseconds) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.milliseconds != 0 {
      try visitor.visitSingularInt64Field(value: self.milliseconds, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Rideos_Timestamp_V1_Duration, rhs: Rideos_Timestamp_V1_Duration) -> Bool {
    if lhs.milliseconds != rhs.milliseconds {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Rideos_Timestamp_V1_TimeWindow: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TimeWindow"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "start"),
    2: .same(proto: "end"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._start) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._end) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._start {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._end {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Rideos_Timestamp_V1_TimeWindow, rhs: Rideos_Timestamp_V1_TimeWindow) -> Bool {
    if lhs._start != rhs._start {return false}
    if lhs._end != rhs._end {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
