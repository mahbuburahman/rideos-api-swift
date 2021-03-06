// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: rideos/routing_profile/v1/routing_profile.proto
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

public struct Rideos_RoutingProfile_V1_RoutingProfileDefinition {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// List of map annotation identifiers used to define avoid constraints. These map annotations should be added first using the Map Annotation API. Invalid annotation identifiers will be ignored by the routing until they become valid.
  public var avoidConstraintIds: [String] = []

  /// List of  map annotation identifiers used to define an operational constraints. These map annotations should be added first using the Map Annotation API. Invalid annotation identifiers will be ignored by the routing until they become valid.
  public var operationalConstraintIds: [String] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Rideos_RoutingProfile_V1_AddOrReplaceRoutingProfileRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Partner-defined identifier of the routing profile. Can not include a version, since each profile version is immutable.
  public var id: String = String()

  /// The portion of the routing profile that is configurable using this API. Other settings can be changed via our support team.
  public var routingProfile: Rideos_RoutingProfile_V1_RoutingProfileDefinition {
    get {return _routingProfile ?? Rideos_RoutingProfile_V1_RoutingProfileDefinition()}
    set {_routingProfile = newValue}
  }
  /// Returns true if `routingProfile` has been explicitly set.
  public var hasRoutingProfile: Bool {return self._routingProfile != nil}
  /// Clears the value of `routingProfile`. Subsequent reads from it will return its default value.
  public mutating func clearRoutingProfile() {self._routingProfile = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _routingProfile: Rideos_RoutingProfile_V1_RoutingProfileDefinition? = nil
}

public struct Rideos_RoutingProfile_V1_AddOrReplaceRoutingProfileResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Partner-defined identifier of the routing profile including its version, separated by a colon, e.g. `{profile-id}:{version}`
  public var id: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Rideos_RoutingProfile_V1_GetRoutingProfileRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Partner-defined identifier of the routing profile. Can optionally include a version separated by a colon, e.g. `{profile-id}:{version}`.
  public var id: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Rideos_RoutingProfile_V1_GetRoutingProfileResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Partner-defined identifier of the routing profile including its version, separated by a colon, e.g. `{profile-id}:{version}`
  public var id: String = String()

  /// The portion of the routing profile that is configurable using this API. Other settings can be changed via our support team.
  public var routingProfile: Rideos_RoutingProfile_V1_RoutingProfileDefinition {
    get {return _routingProfile ?? Rideos_RoutingProfile_V1_RoutingProfileDefinition()}
    set {_routingProfile = newValue}
  }
  /// Returns true if `routingProfile` has been explicitly set.
  public var hasRoutingProfile: Bool {return self._routingProfile != nil}
  /// Clears the value of `routingProfile`. Subsequent reads from it will return its default value.
  public mutating func clearRoutingProfile() {self._routingProfile = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _routingProfile: Rideos_RoutingProfile_V1_RoutingProfileDefinition? = nil
}

public struct Rideos_RoutingProfile_V1_AppendConstraintsToRoutingProfileRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Partner-defined identifier of the routing profile. Can not include a version, since each profile version is immutable.
  public var id: String = String()

  /// List of map annotation identifiers to be added to avoid constraints. These map annotations should be added first using the Map Annotation API. Invalid annotation identifiers will be ignored by the routing until they become valid.
  public var avoidConstraintIds: [String] = []

  /// List of  map annotation identifiers to be added to operational constraints. These map annotations should be added first using the Map Annotation API. Invalid annotation identifiers will be ignored by the routing until they become valid.
  public var operationalConstraintIds: [String] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Rideos_RoutingProfile_V1_AppendConstraintsToRoutingProfileResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Partner-defined identifier of the routing profile including its version, separated by a colon, e.g. `{profile-id}:{version}`
  public var id: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Rideos_RoutingProfile_V1_RemoveConstraintsFromRoutingProfileRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Partner-defined identifier of the routing profile. Can not include a version, since each profile version is immutable.
  public var id: String = String()

  /// List of map annotation identifiers to be removed from the list of avoid constraints.
  public var avoidConstraintIds: [String] = []

  /// List of  map annotation identifiers to be removed from the list of operational constraints.
  public var operationalConstraintIds: [String] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Rideos_RoutingProfile_V1_RemoveConstraintsFromRoutingProfileResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Partner-defined identifier of the routing profile including its version, separated by a colon, e.g. `{profile-id}:{version}`
  public var id: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "rideos.routing_profile.v1"

extension Rideos_RoutingProfile_V1_RoutingProfileDefinition: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".RoutingProfileDefinition"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    2: .standard(proto: "avoid_constraint_ids"),
    3: .standard(proto: "operational_constraint_ids"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 2: try { try decoder.decodeRepeatedStringField(value: &self.avoidConstraintIds) }()
      case 3: try { try decoder.decodeRepeatedStringField(value: &self.operationalConstraintIds) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.avoidConstraintIds.isEmpty {
      try visitor.visitRepeatedStringField(value: self.avoidConstraintIds, fieldNumber: 2)
    }
    if !self.operationalConstraintIds.isEmpty {
      try visitor.visitRepeatedStringField(value: self.operationalConstraintIds, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Rideos_RoutingProfile_V1_RoutingProfileDefinition, rhs: Rideos_RoutingProfile_V1_RoutingProfileDefinition) -> Bool {
    if lhs.avoidConstraintIds != rhs.avoidConstraintIds {return false}
    if lhs.operationalConstraintIds != rhs.operationalConstraintIds {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Rideos_RoutingProfile_V1_AddOrReplaceRoutingProfileRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".AddOrReplaceRoutingProfileRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .standard(proto: "routing_profile"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.id) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._routingProfile) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 1)
    }
    if let v = self._routingProfile {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Rideos_RoutingProfile_V1_AddOrReplaceRoutingProfileRequest, rhs: Rideos_RoutingProfile_V1_AddOrReplaceRoutingProfileRequest) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs._routingProfile != rhs._routingProfile {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Rideos_RoutingProfile_V1_AddOrReplaceRoutingProfileResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".AddOrReplaceRoutingProfileResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.id) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Rideos_RoutingProfile_V1_AddOrReplaceRoutingProfileResponse, rhs: Rideos_RoutingProfile_V1_AddOrReplaceRoutingProfileResponse) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Rideos_RoutingProfile_V1_GetRoutingProfileRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetRoutingProfileRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.id) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Rideos_RoutingProfile_V1_GetRoutingProfileRequest, rhs: Rideos_RoutingProfile_V1_GetRoutingProfileRequest) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Rideos_RoutingProfile_V1_GetRoutingProfileResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetRoutingProfileResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .standard(proto: "routing_profile"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.id) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._routingProfile) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 1)
    }
    if let v = self._routingProfile {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Rideos_RoutingProfile_V1_GetRoutingProfileResponse, rhs: Rideos_RoutingProfile_V1_GetRoutingProfileResponse) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs._routingProfile != rhs._routingProfile {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Rideos_RoutingProfile_V1_AppendConstraintsToRoutingProfileRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".AppendConstraintsToRoutingProfileRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .standard(proto: "avoid_constraint_ids"),
    3: .standard(proto: "operational_constraint_ids"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.id) }()
      case 2: try { try decoder.decodeRepeatedStringField(value: &self.avoidConstraintIds) }()
      case 3: try { try decoder.decodeRepeatedStringField(value: &self.operationalConstraintIds) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 1)
    }
    if !self.avoidConstraintIds.isEmpty {
      try visitor.visitRepeatedStringField(value: self.avoidConstraintIds, fieldNumber: 2)
    }
    if !self.operationalConstraintIds.isEmpty {
      try visitor.visitRepeatedStringField(value: self.operationalConstraintIds, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Rideos_RoutingProfile_V1_AppendConstraintsToRoutingProfileRequest, rhs: Rideos_RoutingProfile_V1_AppendConstraintsToRoutingProfileRequest) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.avoidConstraintIds != rhs.avoidConstraintIds {return false}
    if lhs.operationalConstraintIds != rhs.operationalConstraintIds {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Rideos_RoutingProfile_V1_AppendConstraintsToRoutingProfileResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".AppendConstraintsToRoutingProfileResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.id) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Rideos_RoutingProfile_V1_AppendConstraintsToRoutingProfileResponse, rhs: Rideos_RoutingProfile_V1_AppendConstraintsToRoutingProfileResponse) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Rideos_RoutingProfile_V1_RemoveConstraintsFromRoutingProfileRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".RemoveConstraintsFromRoutingProfileRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .standard(proto: "avoid_constraint_ids"),
    3: .standard(proto: "operational_constraint_ids"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.id) }()
      case 2: try { try decoder.decodeRepeatedStringField(value: &self.avoidConstraintIds) }()
      case 3: try { try decoder.decodeRepeatedStringField(value: &self.operationalConstraintIds) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 1)
    }
    if !self.avoidConstraintIds.isEmpty {
      try visitor.visitRepeatedStringField(value: self.avoidConstraintIds, fieldNumber: 2)
    }
    if !self.operationalConstraintIds.isEmpty {
      try visitor.visitRepeatedStringField(value: self.operationalConstraintIds, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Rideos_RoutingProfile_V1_RemoveConstraintsFromRoutingProfileRequest, rhs: Rideos_RoutingProfile_V1_RemoveConstraintsFromRoutingProfileRequest) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.avoidConstraintIds != rhs.avoidConstraintIds {return false}
    if lhs.operationalConstraintIds != rhs.operationalConstraintIds {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Rideos_RoutingProfile_V1_RemoveConstraintsFromRoutingProfileResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".RemoveConstraintsFromRoutingProfileResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.id) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Rideos_RoutingProfile_V1_RemoveConstraintsFromRoutingProfileResponse, rhs: Rideos_RoutingProfile_V1_RemoveConstraintsFromRoutingProfileResponse) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
