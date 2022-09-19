resource "google_bigquery_dataset" "dataset" {
    dataset_id = "mydata2"
  
}

resource "google_bigquery_table" "table" {
    table_id = "testtable"
    dataset_id = google_bigquery_dataset.dataset.dataset_id
    schema =  <<EOF
[
  {
    "name": "permalink",
    "type": "STRING",
    "mode": "NULLABLE",
    "description": "The Permalink"
  },
  {
    "name": "state",
    "type": "STRING",
    "mode": "NULLABLE",
    "description": "State where the head office is located"
  }
]
EOF


  
}