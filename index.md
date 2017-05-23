# Beta OpenActive Namespace Vocabulary Terms
This is a beta namespace for [OpenActive Vocabulary](https://www.openactive.io/ns/) defined in the Modelling Opportunity Data Specification](https://www.openactive.io/modelling-opportunity-data/).

This allows us to add new properties to our endpoints so that we can publish all data fields we have that are useful, while providing a forum for discussion around each new property. The idea being that these properties would be considered by group for inclusion in the specification.

We'll add the machine-readable JSON-LD behind this in time, this page serves as an interim-step.

Note the issue associated with each one to facilitate discussion. To suggest a new property simply create a new issue [here](https://github.com/openactive/ns-beta/issues) (and if you're feeling techy optionally create a pull request to this file).

# Properties

## Domain: [Event](http://schema.org/Event) 

### hasCoaching

> [Discussion](https://github.com/openactive/ns-beta/issues/1)

Whether a session is coached. Note that the coach name is not always specified, and this is different to having a "leader", as the leader may or may not be a coach.

### formattedDescription

> [Discussion](https://github.com/openactive/ns-beta/issues/2)

Sometimes a description is stored with formatting (e.g. href, bold, italics, embedded YouTube videos). This formatting can be useful for data consumers.

### distance

> [Discussion](https://github.com/openactive/ns-beta/issues/3)

Useful to know the distance of a run, cycle or other activity. Perhaps should also include the units.

### offer

> [Discussion](https://github.com/openactive/ns-beta/issues/4)

Useful to have the price, name, and URL of specific offers (this is just pulled from schema.org)

### level

> [Discussion](https://github.com/openactive/ns-beta/issues/6)

Whether the activity is "beginner", "intermediate", or "advanced". Perhaps there should be some discussion about the most generic categories that make sense here, and a way of using that, but also using a label specific to the activity. For example for martial arts you might have "blue belt and above, and "red belt and above" both as display labels, with the standard category of "intermediate" to allow searching across sports.

### imageCrop

> [Discussion](https://github.com/openactive/ns-beta/issues/7)

Array of https://schema.org/ImageObject - versions of the main image with different dimensions, useful for situations where photos are manually cropped by users to match. Width and height should be included for each.


## Domain: [Organizer](http://schema.org/Organizer)  

### logo

> [Discussion](https://github.com/openactive/ns-beta/issues/8)

https://schema.org/logo used within organizer - recommended PNG logo


## Domain: [Offer](http://schema.org/Offer)

### paymentFrequency

> [Discussion](https://github.com/openactive/ns-beta/issues/5)

For memberships, it is useful to know the frequency associated with the cost within an offer. E.g. "monthly" or "annual". This allows the data consumer to display and filter on memberships accordingly.
