// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: rideos/eta/v2/eta.proto
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

public struct Rideos_Eta_V2_EtaRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var origins: [Rideos_Eta_V2_Waypoint] = []

  public var destinations: [Rideos_Eta_V2_Waypoint] = []

  /// Optional: Time of departure from the origin in UTC. If not specified, departure time is assumed to be the time at
  /// which the ETA request is processed.
  public var departureTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _departureTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_departureTime = newValue}
  }
  /// Returns true if `departureTime` has been explicitly set.
  public var hasDepartureTime: Bool {return self._departureTime != nil}
  /// Clears the value of `departureTime`. Subsequent reads from it will return its default value.
  public mutating func clearDepartureTime() {self._departureTime = nil}

  public var vehicleIds: [String] = []

  /// Optional: Specify which side of the street the waypoints should snap to.
  public var curbApproach: Rideos_Eta_V2_EtaRequest.CurbApproach = .unspecified

  /// Deprecated. Use avoid constraints instead.
  public var blacklistConstraintIds: [String] = []

  /// Deprecated. Use operational constraints instead.
  public var whitelistConstraintIds: [String] = []

  /// Optional: If set to true the request will contain violated_constraints_from_origin which indicates if any constrains
  /// have been violated between corresponding origin and destination.
  public var withViolatedConstraints: Bool = false

  /// Optional: the ETA will be calculated using a path that will avoid traversing the constraints. They take precedence over
  /// operational constraints if both are specified.
  /// If a routing profile is specified, constraints are appended to the routing profile constraints.
  public var avoidConstraintIds: [String] = []

  /// Optional: if provided, this list of identifiers defines an operational domain. The domain consists of the union of all
  /// constraints listed. The path will avoid traversing edges that are not in this operational domain. Avoid constraints
  /// take precedence over operational constraints if both are specified.
  /// If a routing profile is specified, constraints are appended to the routing profile constraints.
  public var operationalConstraintIds: [String] = []

  /// Optional: Routing profile to use for this request.
  /// New profiles can be added and updated via the Routing Profile API.
  /// If no value is provided, the default profile for motorized vehicles (e.g. cars, motorcycles) is used.
  public var routingProfileID: String = String()

  /// `[departure_time, departure_time_end]` for which one or more ETAs will be returned, depending on the size of the
  /// schedule window. Timestamp should be specified in UTC.
  public var departureTimeEnd: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _departureTimeEnd ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_departureTimeEnd = newValue}
  }
  /// Returns true if `departureTimeEnd` has been explicitly set.
  public var hasDepartureTimeEnd: Bool {return self._departureTimeEnd != nil}
  /// Clears the value of `departureTimeEnd`. Subsequent reads from it will return its default value.
  public mutating func clearDepartureTimeEnd() {self._departureTimeEnd = nil}

  /// fall outside of Mantis partition regions.
  public var withOutOfBounds: Bool = false

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum CurbApproach: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// We will not consider the driving direction when snapping the waypoints
    case unspecified // = 0

    /// We will snap points according to the driving direction of the country
    case drivingSide // = 1
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .drivingSide
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .drivingSide: return 1
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}

  fileprivate var _departureTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _departureTimeEnd: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

#if swift(>=4.2)

extension Rideos_Eta_V2_EtaRequest.CurbApproach: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Rideos_Eta_V2_EtaRequest.CurbApproach] = [
    .unspecified,
    .drivingSide,
  ]
}

#endif  // swift(>=4.2)

public struct Rideos_Eta_V2_Waypoint {
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

  public var heading: SwiftProtobuf.Google_Protobuf_FloatValue {
    get {return _heading ?? SwiftProtobuf.Google_Protobuf_FloatValue()}
    set {_heading = newValue}
  }
  /// Returns true if `heading` has been explicitly set.
  public var hasHeading: Bool {return self._heading != nil}
  /// Clears the value of `heading`. Subsequent reads from it will return its default value.
  public mutating func clearHeading() {self._heading = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _position: Rideos_Geo_V1_Position? = nil
  fileprivate var _heading: SwiftProtobuf.Google_Protobuf_FloatValue? = nil
}

public struct Rideos_Eta_V2_EtaResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var origins: [Rideos_Eta_V2_Waypoint] = []

  public var destinations: [Rideos_Eta_V2_Waypoint] = []

  /// Time of departure from the origin. Will be equal to the request's departure_time if that was set. If not, this
  /// will be equal to the assumed time of departure based on when the request was processed.
  public var departureTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _departureTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_departureTime = newValue}
  }
  /// Returns true if `departureTime` has been explicitly set.
  public var hasDepartureTime: Bool {return self._departureTime != nil}
  /// Clears the value of `departureTime`. Subsequent reads from it will return its default value.
  public mutating func clearDepartureTime() {self._departureTime = nil}

  /// Every entry encodes the travel time from the i-th origin to all destinations.
  /// As a result, `travel_time_from_origin[i].to_destination[j]` encodes the travel time from the i-th origin to the j-th destination.
  /// If path between origin and destination wasn't found the corresponding element will be set to "Infinity".
  public var travelTimeFromOrigin: [Rideos_Eta_V2_EtaResponse.DoubleRow] = []

  /// Every entry encodes the distance from the i-th origin to all destinations.
  /// As a result, `distance_from_origin[i].to_destination[j]` encodes the distance in meters from the i-th origin to the j-th destination.
  /// If path between origin and destination wasn't found the corresponding element will be set to "Infinity".
  public var distanceFromOrigin: [Rideos_Eta_V2_EtaResponse.DoubleRow] = []

  /// Each entry indicates if any constraints have been violated between corresponding origin and destination.
  public var violatedConstraintsFromOrigin: [Rideos_Eta_V2_EtaResponse.BooleanRow] = []

  /// `eta_profile[t].travel_time_from_origin[i].to_destination[j]` encodes the travel time from the i-th origin
  /// to the j-th destination during the t-th ETA window, which spans from `[eta_profile[t].start_time, eta_profile[t].end_time]`.
  /// `eta_profile[t].distance_from_origin[i].to_destination[j]` encodes the same information, but for distance in meters
  /// instead of travel time.
  /// `eta_profile[0].start_time` will be the `departure_time` and `eta_profile[T].end_time` (where `T` is the last window) is
  /// equal to the `departure_time_end` specified in the request.
  /// Note that although the API technically allows for eta_profiles to be non-contiguous (since each EtaProfile contains
  /// its own start_time and end_time), EtaService will always return contiguous eta_profiles such that
  /// eta_profile[t].end_time == eta_profile[t+1].start_time
  public var etaProfile: [Rideos_Eta_V2_EtaResponse.EtaProfile] = []

  /// Mantis partition regions. Only set if `with_out_of_bounds` in Request set to true.
  public var outOfBoundsFromOrigin: [Rideos_Eta_V2_EtaResponse.BooleanRow] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public struct DoubleRow {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// Every entry encodes the double value to the j-th destination from a given origin
    public var toDestination: [Double] = []

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  public struct BooleanRow {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// Every entry encodes the boolean value to the j-th destination from a given origin
    public var toDestination: [Bool] = []

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  public struct EtaProfile {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    public var startTime: SwiftProtobuf.Google_Protobuf_Timestamp {
      get {return _startTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
      set {_startTime = newValue}
    }
    /// Returns true if `startTime` has been explicitly set.
    public var hasStartTime: Bool {return self._startTime != nil}
    /// Clears the value of `startTime`. Subsequent reads from it will return its default value.
    public mutating func clearStartTime() {self._startTime = nil}

    public var endTime: SwiftProtobuf.Google_Protobuf_Timestamp {
      get {return _endTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
      set {_endTime = newValue}
    }
    /// Returns true if `endTime` has been explicitly set.
    public var hasEndTime: Bool {return self._endTime != nil}
    /// Clears the value of `endTime`. Subsequent reads from it will return its default value.
    public mutating func clearEndTime() {self._endTime = nil}

    public var travelTimeFromOrigin: [Rideos_Eta_V2_EtaResponse.DoubleRow] = []

    public var distanceFromOrigin: [Rideos_Eta_V2_EtaResponse.DoubleRow] = []

    public var violatedConstraintsFromOrigin: [Rideos_Eta_V2_EtaResponse.BooleanRow] = []

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}

    fileprivate var _startTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
    fileprivate var _endTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  }

  public init() {}

  fileprivate var _departureTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "rideos.eta.v2"

extension Rideos_Eta_V2_EtaRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".EtaRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "origins"),
    2: .same(proto: "destinations"),
    3: .standard(proto: "departure_time"),
    4: .standard(proto: "vehicle_ids"),
    5: .standard(proto: "curb_approach"),
    6: .standard(proto: "blacklist_constraint_ids"),
    7: .standard(proto: "whitelist_constraint_ids"),
    9: .standard(proto: "with_violated_constraints"),
    10: .standard(proto: "avoid_constraint_ids"),
    11: .standard(proto: "operational_constraint_ids"),
    12: .standard(proto: "routing_profile_id"),
    13: .standard(proto: "departure_time_end"),
    14: .standard(proto: "with_out_of_bounds"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.origins) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.destinations) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._departureTime) }()
      case 4: try { try decoder.decodeRepeatedStringField(value: &self.vehicleIds) }()
      case 5: try { try decoder.decodeSingularEnumField(value: &self.curbApproach) }()
      case 6: try { try decoder.decodeRepeatedStringField(value: &self.blacklistConstraintIds) }()
      case 7: try { try decoder.decodeRepeatedStringField(value: &self.whitelistConstraintIds) }()
      case 9: try { try decoder.decodeSingularBoolField(value: &self.withViolatedConstraints) }()
      case 10: try { try decoder.decodeRepeatedStringField(value: &self.avoidConstraintIds) }()
      case 11: try { try decoder.decodeRepeatedStringField(value: &self.operationalConstraintIds) }()
      case 12: try { try decoder.decodeSingularStringField(value: &self.routingProfileID) }()
      case 13: try { try decoder.decodeSingularMessageField(value: &self._departureTimeEnd) }()
      case 14: try { try decoder.decodeSingularBoolField(value: &self.withOutOfBounds) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.origins.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.origins, fieldNumber: 1)
    }
    if !self.destinations.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.destinations, fieldNumber: 2)
    }
    if let v = self._departureTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if !self.vehicleIds.isEmpty {
      try visitor.visitRepeatedStringField(value: self.vehicleIds, fieldNumber: 4)
    }
    if self.curbApproach != .unspecified {
      try visitor.visitSingularEnumField(value: self.curbApproach, fieldNumber: 5)
    }
    if !self.blacklistConstraintIds.isEmpty {
      try visitor.visitRepeatedStringField(value: self.blacklistConstraintIds, fieldNumber: 6)
    }
    if !self.whitelistConstraintIds.isEmpty {
      try visitor.visitRepeatedStringField(value: self.whitelistConstraintIds, fieldNumber: 7)
    }
    if self.withViolatedConstraints != false {
      try visitor.visitSingularBoolField(value: self.withViolatedConstraints, fieldNumber: 9)
    }
    if !self.avoidConstraintIds.isEmpty {
      try visitor.visitRepeatedStringField(value: self.avoidConstraintIds, fieldNumber: 10)
    }
    if !self.operationalConstraintIds.isEmpty {
      try visitor.visitRepeatedStringField(value: self.operationalConstraintIds, fieldNumber: 11)
    }
    if !self.routingProfileID.isEmpty {
      try visitor.visitSingularStringField(value: self.routingProfileID, fieldNumber: 12)
    }
    if let v = self._departureTimeEnd {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 13)
    }
    if self.withOutOfBounds != false {
      try visitor.visitSingularBoolField(value: self.withOutOfBounds, fieldNumber: 14)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Rideos_Eta_V2_EtaRequest, rhs: Rideos_Eta_V2_EtaRequest) -> Bool {
    if lhs.origins != rhs.origins {return false}
    if lhs.destinations != rhs.destinations {return false}
    if lhs._departureTime != rhs._departureTime {return false}
    if lhs.vehicleIds != rhs.vehicleIds {return false}
    if lhs.curbApproach != rhs.curbApproach {return false}
    if lhs.blacklistConstraintIds != rhs.blacklistConstraintIds {return false}
    if lhs.whitelistConstraintIds != rhs.whitelistConstraintIds {return false}
    if lhs.withViolatedConstraints != rhs.withViolatedConstraints {return false}
    if lhs.avoidConstraintIds != rhs.avoidConstraintIds {return false}
    if lhs.operationalConstraintIds != rhs.operationalConstraintIds {return false}
    if lhs.routingProfileID != rhs.routingProfileID {return false}
    if lhs._departureTimeEnd != rhs._departureTimeEnd {return false}
    if lhs.withOutOfBounds != rhs.withOutOfBounds {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Rideos_Eta_V2_EtaRequest.CurbApproach: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNSPECIFIED"),
    1: .same(proto: "DRIVING_SIDE"),
  ]
}

extension Rideos_Eta_V2_Waypoint: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Waypoint"
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

  public static func ==(lhs: Rideos_Eta_V2_Waypoint, rhs: Rideos_Eta_V2_Waypoint) -> Bool {
    if lhs._position != rhs._position {return false}
    if lhs._heading != rhs._heading {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Rideos_Eta_V2_EtaResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".EtaResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "origins"),
    2: .same(proto: "destinations"),
    3: .standard(proto: "departure_time"),
    4: .standard(proto: "travel_time_from_origin"),
    5: .standard(proto: "distance_from_origin"),
    6: .standard(proto: "violated_constraints_from_origin"),
    7: .standard(proto: "eta_profile"),
    8: .standard(proto: "out_of_bounds_from_origin"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.origins) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.destinations) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._departureTime) }()
      case 4: try { try decoder.decodeRepeatedMessageField(value: &self.travelTimeFromOrigin) }()
      case 5: try { try decoder.decodeRepeatedMessageField(value: &self.distanceFromOrigin) }()
      case 6: try { try decoder.decodeRepeatedMessageField(value: &self.violatedConstraintsFromOrigin) }()
      case 7: try { try decoder.decodeRepeatedMessageField(value: &self.etaProfile) }()
      case 8: try { try decoder.decodeRepeatedMessageField(value: &self.outOfBoundsFromOrigin) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.origins.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.origins, fieldNumber: 1)
    }
    if !self.destinations.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.destinations, fieldNumber: 2)
    }
    if let v = self._departureTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if !self.travelTimeFromOrigin.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.travelTimeFromOrigin, fieldNumber: 4)
    }
    if !self.distanceFromOrigin.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.distanceFromOrigin, fieldNumber: 5)
    }
    if !self.violatedConstraintsFromOrigin.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.violatedConstraintsFromOrigin, fieldNumber: 6)
    }
    if !self.etaProfile.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.etaProfile, fieldNumber: 7)
    }
    if !self.outOfBoundsFromOrigin.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.outOfBoundsFromOrigin, fieldNumber: 8)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Rideos_Eta_V2_EtaResponse, rhs: Rideos_Eta_V2_EtaResponse) -> Bool {
    if lhs.origins != rhs.origins {return false}
    if lhs.destinations != rhs.destinations {return false}
    if lhs._departureTime != rhs._departureTime {return false}
    if lhs.travelTimeFromOrigin != rhs.travelTimeFromOrigin {return false}
    if lhs.distanceFromOrigin != rhs.distanceFromOrigin {return false}
    if lhs.violatedConstraintsFromOrigin != rhs.violatedConstraintsFromOrigin {return false}
    if lhs.etaProfile != rhs.etaProfile {return false}
    if lhs.outOfBoundsFromOrigin != rhs.outOfBoundsFromOrigin {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Rideos_Eta_V2_EtaResponse.DoubleRow: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Rideos_Eta_V2_EtaResponse.protoMessageName + ".DoubleRow"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "to_destination"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedDoubleField(value: &self.toDestination) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.toDestination.isEmpty {
      try visitor.visitPackedDoubleField(value: self.toDestination, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Rideos_Eta_V2_EtaResponse.DoubleRow, rhs: Rideos_Eta_V2_EtaResponse.DoubleRow) -> Bool {
    if lhs.toDestination != rhs.toDestination {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Rideos_Eta_V2_EtaResponse.BooleanRow: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Rideos_Eta_V2_EtaResponse.protoMessageName + ".BooleanRow"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "to_destination"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedBoolField(value: &self.toDestination) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.toDestination.isEmpty {
      try visitor.visitPackedBoolField(value: self.toDestination, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Rideos_Eta_V2_EtaResponse.BooleanRow, rhs: Rideos_Eta_V2_EtaResponse.BooleanRow) -> Bool {
    if lhs.toDestination != rhs.toDestination {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Rideos_Eta_V2_EtaResponse.EtaProfile: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Rideos_Eta_V2_EtaResponse.protoMessageName + ".EtaProfile"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "start_time"),
    2: .standard(proto: "end_time"),
    3: .standard(proto: "travel_time_from_origin"),
    4: .standard(proto: "distance_from_origin"),
    5: .standard(proto: "violated_constraints_from_origin"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._startTime) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._endTime) }()
      case 3: try { try decoder.decodeRepeatedMessageField(value: &self.travelTimeFromOrigin) }()
      case 4: try { try decoder.decodeRepeatedMessageField(value: &self.distanceFromOrigin) }()
      case 5: try { try decoder.decodeRepeatedMessageField(value: &self.violatedConstraintsFromOrigin) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._startTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._endTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if !self.travelTimeFromOrigin.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.travelTimeFromOrigin, fieldNumber: 3)
    }
    if !self.distanceFromOrigin.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.distanceFromOrigin, fieldNumber: 4)
    }
    if !self.violatedConstraintsFromOrigin.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.violatedConstraintsFromOrigin, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Rideos_Eta_V2_EtaResponse.EtaProfile, rhs: Rideos_Eta_V2_EtaResponse.EtaProfile) -> Bool {
    if lhs._startTime != rhs._startTime {return false}
    if lhs._endTime != rhs._endTime {return false}
    if lhs.travelTimeFromOrigin != rhs.travelTimeFromOrigin {return false}
    if lhs.distanceFromOrigin != rhs.distanceFromOrigin {return false}
    if lhs.violatedConstraintsFromOrigin != rhs.violatedConstraintsFromOrigin {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
