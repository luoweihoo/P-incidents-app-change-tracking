using { ProcessorService } from './processor-service';

annotate ProcessorService.Incidents with @changelog: [customer.name, title] {
  customer @changelog: [customer.name];
  title    @changelog;
  status   @changelog;
}

annotate ProcessorService.Conversations with @changelog: [author, timestamp] {
  message  @changelog @Common.Label: 'Message';
}