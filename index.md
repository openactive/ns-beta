# Beta OpenActive Namespace Vocabulary Terms
This is a beta namespace for [OpenActive Vocabulary](https://www.openactive.io/ns/) defined in the [Modelling Opportunity Data Specification](https://www.openactive.io/modelling-opportunity-data/).

This allows us to add new properties to our endpoints so that we can publish all data fields we have that are useful, while providing a forum for discussion around each new property. The idea being that these properties would be considered by group for inclusion in the specification.

We'll add the machine-readable JSON-LD behind this in time, this page serves as an interim step.

Note the issue associated with each one to facilitate discussion. To suggest a new property simply create a new issue [here](https://github.com/openactive/ns-beta/issues) (and if you're feeling techy optionally create a pull request to this file).

# Properties

## Domain: [Event](http://schema.org/Event) 

### parking

> [Discussion](https://github.com/openactive/ns-beta/issues/17)

A property that details parking suitability. Placed on Event as this field could be used to detail parking options not directly at the location of the event.

### equipment

> [Discussion](https://github.com/openactive/ns-beta/issues/16)

A Text property that allows an organiser to specify equipment requirements/recommendations for an event.

### clothing

> [Discussion](https://github.com/openactive/ns-beta/issues/15)

A Text property that allows an organiser to specify clothing requirements/recommendations for an event.

### hasCoaching

> [Discussion](https://github.com/openactive/ns-beta/issues/1)

Whether a session is coached. Note that the coach name is not always specified, and this is different to having a "leader", as the leader may or may not be a coach.

### formattedDescription

> [Discussion](https://github.com/openactive/ns-beta/issues/2)

Sometimes a description is stored with formatting (e.g. href, bold, italics, embedded YouTube videos). This formatting can be useful for data consumers.

### distance

> [Discussion](https://github.com/openactive/ns-beta/issues/3)

The distance of a run, cycle or other activity. Must also include units.

### level

> [Discussion](https://github.com/openactive/ns-beta/issues/6)

Whether the activity is "beginner", "intermediate", or "advanced". Perhaps there should be some discussion about the most generic categories that make sense here, and a way of using that, but also using a label specific to the activity. For example for martial arts you might have "blue belt and above, and "red belt and above" both as display labels, with the standard category of "intermediate" to allow searching across sports.

### availability

> [Discussion](https://github.com/openactive/ns-beta/issues/9)

For data publishers not wishing to disclose the granular availability of their sessions openly, this property offers 3 options: `available`, `limited`, and `none`.

### attendeeCount

> [Discussion](https://github.com/openactive/ns-beta/issues/12)

For events that have an unlimited number of tickets, captures the number of attendees (actual attendance).

### registrationCount

> [Discussion](https://github.com/openactive/ns-beta/issues/13)

For events that have an unlimited number of tickets, captures the number of registrations (intention to attend)

## Domain: [Offer](http://schema.org/Offer)

### paymentFrequency

> [Discussion](https://github.com/openactive/ns-beta/issues/5)

For memberships, it is useful to know the frequency associated with the cost within an offer. E.g. "monthly" or "annual". This allows the data consumer to display and filter on memberships accordingly.

### ageRange

> [Discussion](https://github.com/openactive/ns-beta/issues/11)

For offers that are for a particular age group (e.g. "Junior non-member"), include an age range to which this applies. Same as oa:ageRange in the Event domain, just applied to Offer.


## Domain: [Place](http://schema.org/Place)

### meetingPoint

> [Discussion](https://github.com/openactive/ns-beta/issues/10)

A brief description of where to meet - especially useful for outdoor activities where the postcode and address is not sufficient.

# Enumeration Members

## Domain: [BusinessEntityType](http://schema.org/BusinessEntityType)

### `http://www.openactive.io/ns-beta/Member`

Indicates that a customer (eligableCustomerType) is a member of the business.

