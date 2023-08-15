import urllib.request
import json

def validate_address_with_pin(address):
    # Extract PIN code from the address
    pin_code = address.split()[-1]
    api_url = f"https://api.postalpincode.in/pincode/{pin_code}"
    response = urllib.request.urlopen(api_url)
    data = json.load(response)
    
    if data and data[0]['Status'] == 'Success':
        post_offices = data[0]['PostOffice']
        for location in post_offices:
            if all(part.lower() in address.lower() for part in location['Name'].split()):
                return True
        return False
    else:
        print("Error: Unable to fetch data from the API.")
        return False

# Example usage
address = "123 Main St, Mysore Bank Colony, Abhayagiri, Abhayagiri, Kerala 673517"
is_valid = validate_address_with_pin(address)
print(f"Is address valid? {is_valid}")
