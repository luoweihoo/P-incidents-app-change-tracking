using { sap.capire.incidents as my } from '../db/schema';

service ProcessorService {

  entity Incidents as projection on my.Incidents;
  entity Conversations as projection on my.Conversations;

  @readonly
  entity Customers as projection on my.Customers;

}

extend projection ProcessorService.Customers with {
  firstName || ' ' || lastName as name: String
}

annotate ProcessorService.Incidents with @odata.draft.enabled;

annotate ProcessorService with @(requires: ['support']);
