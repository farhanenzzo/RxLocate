
# RxLocate


```bash
java-version = 17
spring_boot-version = 3.2.5

```

```http
  POST localhost:8080/login
```


```http
  GET localhost:8080/map
```
```http
  GET localhost:8080/map/drugs
```

```json
GET localhost:8080/map/Banani/Napa

JSON Response:

  "locationLat": 23.7947552,
  "locationLng": 90.3954059,
  "locationName": "Banani",
  "prescriptionCount": 0,
  "drugName": "Napa"
```


## Backend Structure

```bash
.
└── Medicine_User
    ├── Config
    │   └── CORS.java
    ├── Controller
    │   ├── DrugController.java
    │   ├── LocationController.java
    │   └── MapController.java
    ├── DTO
    │   ├── DrugDTO.java
    │   ├── LocationDTO.java
    │   └── MapDTO.java
    ├── Domain
    │   ├── Doctor.java
    │   ├── Drug.java
    │   ├── ERole.java
    │   ├── Generic.java
    │   ├── Location.java
    │   ├── Prescription.java
    │   ├── Role.java
    │   ├── User.java
    │   └── Vendor.java
    ├── MedicineUserApplication.java
    ├── Repository
    │   ├── DrugRepository.java
    │   ├── LocationRepository.java
    │   ├── PrescriptionRepository.java
    │   └── UserRepository.java
    └── Service
        ├── DrugService.java
        └── LocationService.java

```
