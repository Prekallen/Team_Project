package com.food.web.google.service;

public class PlaceDetailsRequest
extends PendingResultBase<PlaceDetails, PlaceDetailsRequest, PlaceDetailsRequest.Response> {

static final ApiConfig API_CONFIG =
  new ApiConfig("/maps/api/place/details/json")
      .fieldNamingPolicy(FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES);

public PlaceDetailsRequest(GeoApiContext context) {
super(context, API_CONFIG, Response.class);
}