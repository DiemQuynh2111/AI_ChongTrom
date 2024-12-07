gcloud builds submit --tag gcr.io/decoded-agency-443913-v5/Nhom13AI  --project=decoded-agency-443913-v5

gcloud run deploy --image gcr.io/decoded-agency-443913-v5/Nhom13AI --platform managed  --project=decoded-agency-443913-v5--allow-unauthenticated