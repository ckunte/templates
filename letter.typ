#import "letter-template.typ": letter

#show: letter.with(
  sender: [
    Jane Smith, Universal Exports, 1 Heavy Plaza, Morristown, NJ 07964
  ],
  recipient: [
    Mr. John Doe \
    Acme Corp. \
    123 Glennwood Ave \
    Quarto Creek, VA 22438
  ],
  date: [Morristown, June 9th, 2023],
  subject: [Revision of our Producrement Contract],
  name: [Jane Smith \ Regional Director \ jane.smith\@uexp.com],
)

Dear Joe,

#lorem(60)

#lorem(30)

Best,