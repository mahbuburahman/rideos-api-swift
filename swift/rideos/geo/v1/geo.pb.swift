// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: rideos/geo/v1/geo.proto
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

public struct Rideos_Geo_V1_Position {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var latitude: Double = 0

  public var longitude: Double = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Rideos_Geo_V1_LineString {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var positions: [Rideos_Geo_V1_Position] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Rideos_Geo_V1_Heading {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Measured clockwise from true North - i.e. 0 is true North, 90 is East, 180 is South, 270 is West, etc.
  public var degrees: Float = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Rideos_Geo_V1_PositionAndHeading {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var position: Rideos_Geo_V1_Position {
    get {return _position ?? Rideos_Geo_V1_Position()}
    set {_position = newValue}
  }
  /// Returns true if `position` has been explicitly set.
  public var hasPosition: Bool {return self._position != nil}
  /// Clears the value of `position`. Subsequent reads from it will return its default value.
  public mutating func clearPosition() {self._position = nil}

  /// optional
  public var heading: Rideos_Geo_V1_Heading {
    get {return _heading ?? Rideos_Geo_V1_Heading()}
    set {_heading = newValue}
  }
  /// Returns true if `heading` has been explicitly set.
  public var hasHeading: Bool {return self._heading != nil}
  /// Clears the value of `heading`. Subsequent reads from it will return its default value.
  public mutating func clearHeading() {self._heading = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _position: Rideos_Geo_V1_Position? = nil
  fileprivate var _heading: Rideos_Geo_V1_Heading? = nil
}

/// A shape is valid iff:
///
/// 1) The coordinates which define it are valid coordinates
/// 2) The polygon defined by the positions is closed (first position == last position).
///    It must have at least 4 positions.
/// 3) The polygon defined by the positions is a non-intersecting loop
public struct Rideos_Geo_V1_Shape {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var positions: [Rideos_Geo_V1_Position] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Rideos_Geo_V1_Circle {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var center: Rideos_Geo_V1_Position {
    get {return _center ?? Rideos_Geo_V1_Position()}
    set {_center = newValue}
  }
  /// Returns true if `center` has been explicitly set.
  public var hasCenter: Bool {return self._center != nil}
  /// Clears the value of `center`. Subsequent reads from it will return its default value.
  public mutating func clearCenter() {self._center = nil}

  public var radiusMeters: Double = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _center: Rideos_Geo_V1_Position? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "rideos.geo.v1"

extension Rideos_Geo_V1_Position: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Position"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "latitude"),
    2: .same(proto: "longitude"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularDoubleField(value: &self.latitude) }()
      case 2: try { try decoder.decodeSingularDoubleField(value: &self.longitude) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.latitude != 0 {
      try visitor.visitSingularDoubleField(value: self.latitude, fieldNumber: 1)
    }
    if self.longitude != 0 {
      try visitor.visitSingularDoubleField(value: self.longitude, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Rideos_Geo_V1_Position, rhs: Rideos_Geo_V1_Position) -> Bool {
    if lhs.latitude != rhs.latitude {return false}
    if lhs.longitude != rhs.longitude {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Rideos_Geo_V1_LineString: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".LineString"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "positions"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.positions) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.positions.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.positions, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Rideos_Geo_V1_LineString, rhs: Rideos_Geo_V1_LineString) -> Bool {
    if lhs.positions != rhs.positions {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Rideos_Geo_V1_Heading: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Heading"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "degrees"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularFloatField(value: &self.degrees) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.degrees != 0 {
      try visitor.visitSingularFloatField(value: self.degrees, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Rideos_Geo_V1_Heading, rhs: Rideos_Geo_V1_Heading) -> Bool {
    if lhs.degrees != rhs.degrees {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Rideos_Geo_V1_PositionAndHeading: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PositionAndHeading"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "position"),
    2: .same(proto: "heading"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._position) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._heading) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._position {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._heading {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Rideos_Geo_V1_PositionAndHeading, rhs: Rideos_Geo_V1_PositionAndHeading) -> Bool {
    if lhs._position != rhs._position {return false}
    if lhs._heading != rhs._heading {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Rideos_Geo_V1_Shape: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Shape"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "positions"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.positions) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.positions.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.positions, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Rideos_Geo_V1_Shape, rhs: Rideos_Geo_V1_Shape) -> Bool {
    if lhs.positions != rhs.positions {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Rideos_Geo_V1_Circle: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Circle"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "center"),
    2: .standard(proto: "radius_meters"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._center) }()
      case 2: try { try decoder.decodeSingularDoubleField(value: &self.radiusMeters) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._center {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if self.radiusMeters != 0 {
      try visitor.visitSingularDoubleField(value: self.radiusMeters, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Rideos_Geo_V1_Circle, rhs: Rideos_Geo_V1_Circle) -> Bool {
    if lhs._center != rhs._center {return false}
    if lhs.radiusMeters != rhs.radiusMeters {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
