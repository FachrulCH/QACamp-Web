# Pelajaran 0: Dasar - Apa itu BDD? Berkenalan dengan Behaviour Driven Development

BDD adalah suatu cara dalam pengembangan software dimana kebutuhan ditulis dengan struktur bahasa yang disepakati untuk meningkatkan kualitas komunikasi dari tech dan non-tech maupun stakeholder, dimana pengunaan Gherkin language akan menciptakan lingkungan yang memudahkan untuk tim dalam berkolaborasi satu sama lain, dimana feature files adalah cara untuk mempresentasikan fitur software secara konkrit.

Sangat sulit untuk menguji suatu fitur yang belum ada, maka dari itu kita menuliskan test untuk memastikan asumsi kita sudah bekerja sebagaimana diharapkan

BDD mengunakan formula bahasa yang disebut Gherkin, yang sangat mudah dibaca dan ditulis bahkan oleh non-teknikal untuk menyampaikan fitur apa yang diperlukan.
Contoh dari .feature file yang ditulis menggunakan Gherkin (cucumber) seperti ini

```gherkin
Feature: Serve coffee
  Coffee should not be served until paid for
  Coffee should not be served until the button has been pressed
  If there is no coffee left then money should be refunded
Scenario: Buy last coffee
  Given there are 1 coffees left in the machine
  And I have deposited 1$
  When I press the coffee button
  Then I should be served a coffee
```

atau bisa jadi bentuknya seperti ini

```
Scenario Outline: eating
  Given there are <start> cucumbers
  When I eat <eat> cucumbers
  Then I should have <left> cucumbers
  Examples:
    | start | eat | left |
    |  12   |  5  |  7   |
    |  20   |  5  |  15  |
```

Secara umum BDD akan memudahkan dalam menjawab pertanyaan seperti ini:
- Apa yang harus disiapkan
- APa yang harus di test dan tidak di test
- Seberapa banyak yang harus di test dalam satu proses
- Bagaimana mengerti kenapa test nya gagal

Dengan begitu gherkin bisa menjadi artifak dokumentasi dan menjadi bagian dari development proses dari tiket user story di backlog, dimana bisa ikut kontribusi ataupun diakses oleh semua pihak.
