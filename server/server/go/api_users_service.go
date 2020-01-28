/*
 * foreign_jounarl User
 *
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * API version: 1.0.0
 * Generated by: OpenAPI Generator (https://openapi-generator.tech)
 */

package openapi

import (
	"errors"
)

// UsersApiService is a service that implents the logic for the UsersApiServicer
// This service should implement the business logic for every endpoint for the UsersApi API. 
// Include any external packages or services that will be required by this service.
type UsersApiService struct {
}

// NewUsersApiService creates a default api service
func NewUsersApiService() UsersApiServicer {
	return &UsersApiService{}
}

// UsersGet - get all user information
func (s *UsersApiService) UsersGet() (interface{}, error) {
	// TODO - update UsersGet with the required logic for this service method.
	// Add api_users_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.
	return nil, errors.New("service method 'UsersGet' not implemented")
}
