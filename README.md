# Beta OpenActive Namespace Vocabulary Terms
This is the beta namespace for the [OpenActive Vocabulary](https://www.openactive.io/ns/), as defined in the [Modelling Opportunity Data Specification](https://www.openactive.io/modelling-opportunity-data/).

This namespace can be used by publishers experimenting with new properties that are likely to be added to the core specification.

It is defined as a convenience to help document properties that are in active testing and review by the community. Publishers should not assume that properties in the beta namespace will either be added to the core specification or be included in the namespace over the long term.

This namespace MUST be referenced using the URL `"https://openactive.io/ns-beta"` (which will return the [JSON-LD definition](https://www.openactive.io/ns-beta/beta.jsonld) if the `Accept` header contains `application/ld+json`), and is designed to be used in conjunction with the `"https://openactive.io/"` namespace.

Note that properties listed here _must_ have associated proposals in one of the specification repositories. To suggest a new property, please file a proposal [here](https://github.com/openactive/modelling-opportunity-data/issues).

# Example use

```json
{
  "@context": [
    "https://openactive.io/",
    "https://openactive.io/ns-beta"
  ],
  "type": "SessionSeries",
  "name": "Tai chi Class",
  "description": "You need to be strong to attend.",
  "beta:formattedDescription": "You need to be <b>strong</b> to attend.",
  "url": "http://www.example.org/events/1",
  "location": {
    "type": "Place",
    "name": "ExampleCo Gym Kingswood",
    "address": {
      "type": "PostalAddress",
      "streetAddress": "1 High Street",
      "addressLocality": "Kingswood",
      "addressRegion": "South Gloucestershire",
      "postalCode": "BS1 4SD",
      "addressCountry": "GB"
    }
  }
}
```

# Namespace

## Properties

| (Class) Property    |  Expected Type  | Proposal   | Description                                                         |
|---------------------|-----------------|------------|---------------------------------------------------------------------|
| ([`oa:FacilityUse`](https://openactive.io/FacilityUse), [`oa:IndividualFacilityUse`](https://openactive.io/IndividualFacilityUse)) <br/> `beta:sportsActivityLocation` | [`schema:SportsActivityLocation`](https://schema.org/SportsActivityLocation) | [#110](https://github.com/openactive/modelling-opportunity-data/issues/110) | The specific array of SportsActivityLocation related to the FacilityUse, usually within the location. |
| ([`schema:Course`](https://schema.org/Course)) <br/> `beta:logo` | [`schema:ImageObject`](https://schema.org/ImageObject) | [#164](https://github.com/openactive/modelling-opportunity-data/issues/164) | An associated logo for a course. |
| ([`schema:CourseInstance`](https://schema.org/CourseInstance)) <br/> `beta:course` | [`schema:Course`](https://schema.org/Course) | [#164](https://github.com/openactive/modelling-opportunity-data/issues/164) | This course for which this is an offering. |
| ([`schema:Event`](https://schema.org/Event)) <br/> `beta:attendeeCount` | [`schema:Integer`](https://schema.org/Integer) | [#12](https://github.com/openactive/ns-beta/issues/12) | For events that have an unlimited number of tickets, captures the number of attendees (actual attendance). |
| ([`schema:Event`](https://schema.org/Event)) <br/> `beta:availability` | [`schema:Text`](https://schema.org/Text) | [#9](https://github.com/openactive/ns-beta/issues/9) | For data publishers not wishing to disclose the granular availability of their sessions openly. |
| ([`schema:Event`](https://schema.org/Event)) <br/> `beta:distance` | [`schema:QuantitativeValue`](https://schema.org/QuantitativeValue) | [#3](https://github.com/openactive/ns-beta/issues/3) | The distance of a run, cycle or other activity. Must also include units. |
| ([`schema:Event`](https://schema.org/Event)) <br/> `beta:formattedDescription` | [`schema:Text`](https://schema.org/Text) | [#2](https://github.com/openactive/ns-beta/issues/2) | Sometimes a description is stored with formatting (e.g. href, bold, italics, embedded YouTube videos). This formatting can be useful for data consumers. |
| ([`schema:Event`](https://schema.org/Event)) <br/> `beta:registrationCount` | [`schema:Integer`](https://schema.org/Integer) | [#13](https://github.com/openactive/ns-beta/issues/13) | For events that have an unlimited number of tickets, captures the number of registrations (intention to attend). |
| ([`schema:Offer`](https://schema.org/Offer)) <br/> `beta:availableChannel` | [`beta:AvailableChannelType`](https://openactive.io/ns-beta#AvailableChannelType) | [#161](https://github.com/openactive/modelling-opportunity-data/issues/161) | The channels through which a booking can be made. |



## Classes

| Class                      | subClass | Proposal   | Description                                                                                 |
|----------------------------|----------|------------|---------------------------------------------------------------------------------------------|
| `beta:AvailableChannelType` | [`schema:Enumeration`](https://schema.org/Enumeration) | [#161](https://github.com/openactive/modelling-opportunity-data/issues/161) | An enumeration of channels through which a booking can be made. |



## Enumeration Values

| Type          | Value    | Proposal   | Description                                                                    |
|---------------|----------|------------|--------------------------------------------------------------------------------|
| [`beta:AvailableChannelType`](https://openactive.io/ns-beta#AvailableChannelType) | `https://openactive.io/ns-beta#OnlinePrepayment` | [#161](https://github.com/openactive/modelling-opportunity-data/issues/161) | Bookings can be made and paid for online. |
| [`beta:AvailableChannelType`](https://openactive.io/ns-beta#AvailableChannelType) | `https://openactive.io/ns-beta#TelephoneAdvanceBooking` | [#161](https://github.com/openactive/modelling-opportunity-data/issues/161) | Bookings can be made but not paid for in advance by telephone. |
| [`beta:AvailableChannelType`](https://openactive.io/ns-beta#AvailableChannelType) | `https://openactive.io/ns-beta#TelephonePrepayment` | [#161](https://github.com/openactive/modelling-opportunity-data/issues/161) | Bookings can be made and paid for in advance by telephone. |
| [`schema:BusinessEntityType`](https://schema.org/BusinessEntityType) | `https://openactive.io/ns-beta#Member` | [#80](https://github.com/openactive/modelling-opportunity-data/issues/80) | Indicates that a customer (eligableCustomerType) is a member of the business. |
