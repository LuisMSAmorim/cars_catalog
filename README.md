# Cars Catalog

## Getting started:

### Things you may want to cover:

* Docker;

* Docker-Compose;

### Clone the project:

``` bash 
    git clone git@github.com:LuisMSAmorim/cars_catalog.git
```

### Build project container:

``` bash
    docker-compose build
```

### Define your system admin credentials:

* Open /db/seeds.rb;
  
* Change email, password and password confirmation at line 6;

### Start container:

```bash
    docker-compose up
```

### Open container terminal:

```bash
    docker exec -it cars_app_app_1 /bin/bash
```

### Create database:

* Inside container: 
  
  ```bash
    rake db:create
  ```

### Create your admin user:

* Inside container: 
  ```bash
    rake db:seed
  ```

## How to login with admin credentials

* localhost:3000/users/sign_in

## API end-points:

### API V1 Prefix:

* api/v1/

### Cars:

* index:
* 
  ```bash
    /cars
  ```
* Should return all registered cars;

* show:
  
  ```bash
    /cars/:id
  ```
* Should return the specified car;

## How to run tests:

* Inside container:
  
* run all tests: 
  
  ``` bash
    rspec
  ```

* run a specific test:
  
 ```bash
    rspec spec/DIRECTORY/TEST_SPEC.rb
  ```