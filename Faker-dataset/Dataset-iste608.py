import random
from faker import Faker

fake = Faker()

# Generate synthetic data for each table
def generate_category_data(n):
    data = []
    for _ in range(n):
        data.append((fake.unique.word(),))
    return data

def generate_brand_data(n):
    data = []
    for _ in range(n):
        data.append((fake.unique.company(),))
    return data

def generate_country_data(n):
    data = []
    for _ in range(n):
        data.append((fake.unique.country(),))
    return data

def generate_city_data(n, country_ids):
    data = []
    for _ in range(n):
        data.append((fake.unique.city(), random.choice(country_ids),))
    return data

def generate_address_data(count, city_ids):
    data = []

    for _ in range(count):
        data.append((fake.street_address(), fake.secondary_address(), fake.word(), random.choice(city_ids), fake.zipcode(), fake.phone_number(),))

    return data


def generate_customer_data(n, address_ids, store_ids):
    data = []
    for _ in range(n):
        data.append((fake.first_name(), fake.last_name(), fake.email(), random.choice(address_ids), random.choice(store_ids), random.choice([True, False]),))
    return data

def generate_store_data(n, manager_ids, address_ids):
    data = []
    for _ in range(n):
        data.append((random.choice(manager_ids), random.choice(address_ids),))
    return data

def generate_staff_data(n, address_ids, store_ids):
    data = []
    for _ in range(n):
        data.append((fake.first_name(), fake.last_name(), random.choice(address_ids), fake.email(), random.choice(store_ids), random.choice([True, False]), fake.user_name(), fake.password(),))
    return data

def generate_product_data(n, brand_ids, category_ids):
    data = []
    for _ in range(n):
        data.append((fake.word(), random.choice(brand_ids), random.choice(category_ids), fake.year(), fake.random_number(digits=5),))
    return data

def generate_stock_data(store_ids, product_ids):
    data = []
    for store_id in store_ids:
        for product_id in product_ids:
            data.append((store_id, product_id, random.randint(0, 100),))
    return data

# You can adjust the number of entries for each table by changing the arguments
category_data = generate_category_data(10)
brand_data = generate_brand_data(10)
country_data = generate_country_data(5)
city_data = generate_city_data(20, range(1, len(country_data) + 1))
address_data = generate_address_data(30, range(1, len(city_data) + 1))
customer_data = generate_customer_data(50, range(1, len(address_data) + 1), range(1, 3))
store_data = generate_store_data(2, range(1, 4), range(1, len(address_data) + 1))
staff_data = generate_staff_data(10, range(1, len(address_data) + 1), range(1, len(store_data) + 1))
product_data = generate_product_data(50, range(1, len(brand_data) + 1), range(1, len(category_data) + 1))
stock_data = generate_stock_data(range(1, len(store_data) + 1), range(1, len(product_data) + 1))

print("Category Data:", category_data)
print("Brand Data:", brand_data)
print("Category Data:", category_data)
print("Brand Data:", brand_data)
print("Country Data:", country_data)
print("City Data:", city_data)
print("Address Data:", address_data)
print("Customer Data:", customer_data)
print("Store Data:", store_data)
print("Staff Data:", staff_data)
print("Product Data:", product_data)
print("Stock Data:", stock_data)

