//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: rideos/map_annotation/v1/map_annotation.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
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
//
import GRPC
import NIO
import SwiftProtobuf


/// Usage: instantiate Rideos_MapAnnotation_V1_MapAnnotationsServiceClient, then call methods of this protocol to make API calls.
public protocol Rideos_MapAnnotation_V1_MapAnnotationsServiceClientProtocol: GRPCClient {
  func addOrReplaceAnnotation(
    _ request: Rideos_MapAnnotation_V1_AddOrReplaceAnnotationsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Rideos_MapAnnotation_V1_AddOrReplaceAnnotationsRequest, Rideos_MapAnnotation_V1_AddOrReplaceAnnotationsResponse>

  func getAnnotation(
    _ request: Rideos_MapAnnotation_V1_GetAnnotationRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Rideos_MapAnnotation_V1_GetAnnotationRequest, Rideos_MapAnnotation_V1_GetAnnotationResponse>

  func getAllAnnotationIds(
    _ request: Rideos_MapAnnotation_V1_GetAllAnnotationIdsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Rideos_MapAnnotation_V1_GetAllAnnotationIdsRequest, Rideos_MapAnnotation_V1_GetAllAnnotationIdsResponse>

  func deleteAnnotation(
    _ request: Rideos_MapAnnotation_V1_DeleteAnnotationRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Rideos_MapAnnotation_V1_DeleteAnnotationRequest, Rideos_MapAnnotation_V1_DeleteAnnotationResponse>

  func tryMatchAnnotation(
    _ request: Rideos_MapAnnotation_V1_MatchAnnotationRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Rideos_MapAnnotation_V1_MatchAnnotationRequest, Rideos_MapAnnotation_V1_MatchAnnotationResponse>

  func getAnnotationsInArea(
    _ request: Rideos_MapAnnotation_V1_GetAllAnnotationsInAreaRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Rideos_MapAnnotation_V1_GetAllAnnotationsInAreaRequest, Rideos_MapAnnotation_V1_GetAllAnnotationsInAreaResponse>

  func getAnnotationStatus(
    _ request: Rideos_MapAnnotation_V1_GetAnnotationStatusRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Rideos_MapAnnotation_V1_GetAnnotationStatusRequest, Rideos_MapAnnotation_V1_GetAnnotationStatusResponse>

}

extension Rideos_MapAnnotation_V1_MapAnnotationsServiceClientProtocol {

  /// Add or replace a map annotation
  ///
  /// Adds a new map annotation with a given partner-defined identifier. If an annotation with the same identifier already exists, it will be overwritten.
  /// If the annotation was added successfully its identifier can be used as a constraint in Path/ETA requests, or referenced in a routing profile.
  /// Annotations require some processing time before affecting routing behavior.
  ///
  /// - Parameters:
  ///   - request: Request to send to AddOrReplaceAnnotation.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func addOrReplaceAnnotation(
    _ request: Rideos_MapAnnotation_V1_AddOrReplaceAnnotationsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Rideos_MapAnnotation_V1_AddOrReplaceAnnotationsRequest, Rideos_MapAnnotation_V1_AddOrReplaceAnnotationsResponse> {
    return self.makeUnaryCall(
      path: "/rideos.map_annotation.v1.MapAnnotationsService/AddOrReplaceAnnotation",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Retrieve map annotation with a specific identifier
  ///
  /// - Parameters:
  ///   - request: Request to send to GetAnnotation.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getAnnotation(
    _ request: Rideos_MapAnnotation_V1_GetAnnotationRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Rideos_MapAnnotation_V1_GetAnnotationRequest, Rideos_MapAnnotation_V1_GetAnnotationResponse> {
    return self.makeUnaryCall(
      path: "/rideos.map_annotation.v1.MapAnnotationsService/GetAnnotation",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Retrieve identifiers of all annotations
  ///
  /// - Parameters:
  ///   - request: Request to send to GetAllAnnotationIds.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getAllAnnotationIds(
    _ request: Rideos_MapAnnotation_V1_GetAllAnnotationIdsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Rideos_MapAnnotation_V1_GetAllAnnotationIdsRequest, Rideos_MapAnnotation_V1_GetAllAnnotationIdsResponse> {
    return self.makeUnaryCall(
      path: "/rideos.map_annotation.v1.MapAnnotationsService/GetAllAnnotationIds",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Delete an annotation with a given identifier
  ///
  /// If an annotation is referenced in any of the Routing APIs after it has been deleted, it will simply be ignored.
  /// Annotations require some processing time before affecting routing behavior.
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteAnnotation.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteAnnotation(
    _ request: Rideos_MapAnnotation_V1_DeleteAnnotationRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Rideos_MapAnnotation_V1_DeleteAnnotationRequest, Rideos_MapAnnotation_V1_DeleteAnnotationResponse> {
    return self.makeUnaryCall(
      path: "/rideos.map_annotation.v1.MapAnnotationsService/DeleteAnnotation",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Return geometry of all graph edges which match this annotation
  ///
  /// This method can be used as an instant preview of the streets affected by the annotation. The given annotation will not be persisted and cannot be used by Path or ETA APIs. Once the annotation is added the actual result can be different due to regular map updates.
  ///
  /// - Parameters:
  ///   - request: Request to send to TryMatchAnnotation.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func tryMatchAnnotation(
    _ request: Rideos_MapAnnotation_V1_MatchAnnotationRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Rideos_MapAnnotation_V1_MatchAnnotationRequest, Rideos_MapAnnotation_V1_MatchAnnotationResponse> {
    return self.makeUnaryCall(
      path: "/rideos.map_annotation.v1.MapAnnotationsService/TryMatchAnnotation",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Unary call to GetAnnotationsInArea
  ///
  /// - Parameters:
  ///   - request: Request to send to GetAnnotationsInArea.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getAnnotationsInArea(
    _ request: Rideos_MapAnnotation_V1_GetAllAnnotationsInAreaRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Rideos_MapAnnotation_V1_GetAllAnnotationsInAreaRequest, Rideos_MapAnnotation_V1_GetAllAnnotationsInAreaResponse> {
    return self.makeUnaryCall(
      path: "/rideos.map_annotation.v1.MapAnnotationsService/GetAnnotationsInArea",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Return current status of the annotation
  ///
  /// - Parameters:
  ///   - request: Request to send to GetAnnotationStatus.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getAnnotationStatus(
    _ request: Rideos_MapAnnotation_V1_GetAnnotationStatusRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Rideos_MapAnnotation_V1_GetAnnotationStatusRequest, Rideos_MapAnnotation_V1_GetAnnotationStatusResponse> {
    return self.makeUnaryCall(
      path: "/rideos.map_annotation.v1.MapAnnotationsService/GetAnnotationStatus",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Rideos_MapAnnotation_V1_MapAnnotationsServiceClient: Rideos_MapAnnotation_V1_MapAnnotationsServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the rideos.map_annotation.v1.MapAnnotationsService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  public init(channel: GRPCChannel, defaultCallOptions: CallOptions = CallOptions()) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
  }
}

