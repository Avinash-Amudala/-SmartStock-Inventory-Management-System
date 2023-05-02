import random
import pandas as pd
from faker import Faker

fake = Faker()

# Functions
def random_country_name():
    return fake.country()

def random_city_name():
    return fake.city()

def random_address():
    return fake.address().replace('\n', ', ')

def random_district():
    return fake.street_name()

def random_postal_code():
    return fake.postcode()

def random_phone():
    return fake.phone_number()

def random_email():
    return fake.email()

def random_brand_name():
    return fake.company()

def random_category_name():
    return fake.catch_phrase()

def random_name():
    return fake.name()

def random_username():
    return fake.user_name()

def random_password():
    return fake.password()
def random_product_name():
    product_adjectives = ['Portable', 'Wireless', 'Compact', 'Ergonomic', 'Lightweight', 'Heavy-Duty', 'Waterproof', 'Bluetooth', 'Multifunctional', 'High-Performance']
    product_nouns = ['Headphones', 'Keyboard', 'Mouse', 'Speaker', 'Charger', 'Camera', 'Laptop', 'Smartphone', 'Drone', 'Printer']
    return random.choice(product_adjectives) + ' ' + random.choice(product_nouns)

def random_last_update():
    return fake.date_between(start_date='-5y', end_date='today')

# Data Generation
country_data = [{"id": i+1, "country": random_country_name(), "last_update": random_last_update()} for i in range(5)]
city_data = [{"id": i+1, "city": random_city_name(), "country_id": random.randint(1, 5), "last_update": random_last_update()} for i in range(20)]
address_data = [{"id": i+1, "address": random_address(), "address2": random_address(), "district": random_district(), "city_id": random.randint(1, 20), "postal_code": random_postal_code(), "phone": random_phone(), "last_update": random_last_update()} for i in range(50)]
brand_data = [{"id": i+1, "name": random_brand_name(), "last_update": random_last_update()} for i in range(10)]
category_data = [{"id": i+1, "name": random_category_name(), "last_update": random_last_update()} for i in range(10)]
stock_data = [{"store_id": random.randint(1, 5), "product_id": random.randint(1, 100), "quantity": random.randint(1, 100), "last_update": random_last_update()} for _ in range(500)]

store_data = [{"id": i+1, "manager_staff_id": i+1, "address_id": i+1, "last_update": random_last_update()} for i in range(5)]
staff_data = [{"id": i+1, "first_name": random_name(), "last_name": random_name(), "address_id": random.randint(1, 50), "email": random_email(), "store_id": random.randint(1, 5), "active": 1, "username": random_username(), "password": random_password(), "last_update": random_last_update()} for i in range(10)]
# Generate product data with added 'sales' field
product_data = [{"id": i+1, "name": random_product_name(), "brand_id": random.randint(1, 10), "category_id": random.randint(1, 10), "model_year": random.randint(2000, 2023), "list_price": round(random.uniform(100, 10000), 2), "sales": random.randint(0, 5000), "last_update": random_last_update()} for i in range(100)]

# Custom product name gene

# Generate customer data
customer_data = [{"id": i+1, "first_name": random_name(), "last_name": random_name(), "email": random_email(), "address_id": random.randint(1, 50), "store_id": random.randint(1, 5), "active": 1, "create_date": fake.date_between(start_date='-5y', end_date='today'), "last_update": random_last_update()} for i in range(100)]

# Convert to DataFrames
country_df = pd.DataFrame(country_data)
city_df = pd.DataFrame(city_data)
address_df = pd.DataFrame(address_data)
brand_df = pd.DataFrame(brand_data)
category_df = pd.DataFrame(category_data)
store_df = pd.DataFrame(store_data)
staff_df = pd.DataFrame(staff_data)
product_df = pd.DataFrame(product_data)
stock_df = pd.DataFrame(stock_data)
customer_df = pd.DataFrame(customer_data)

# Save DataFrames to CSV
country_df.to_csv("synthetic_country_data.csv", index=False)
city_df.to_csv("synthetic_city_data.csv", index=False)
address_df.to_csv("synthetic_address_data.csv", index=False)
brand_df.to_csv("synthetic_brand_data.csv", index=False)
category_df.to_csv("synthetic_category_data.csv", index=False)
store_df.to_csv("synthetic_store_data.csv", index=False)
staff_df.to_csv("synthetic_staff_data.csv", index=False)
product_df.to_csv("synthetic_product_data.csv", index=False)
stock_df.to_csv("synthetic_stock_data.csv", index=False)
customer_df.to_csv("synthetic_customer_data.csv", index=False)