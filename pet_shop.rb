def total_cash(shop);
  return shop[:admin][:total_cash]
end

def pet_shop_name(shop);
  return shop[:name]
end

def add_or_remove_cash(shop,amount);
  shop[:admin][:total_cash]+= amount;
end

def pets_sold(shop)
  return shop[:admin][:pets_sold]
end

def increase_pets_sold(shop,amount)
   shop[:admin][:pets_sold] += amount
end

def stock_count(shop)
  return shop[:pets].length()
end

def pets_by_breed(shop, breed)
  no_of_breed=[]
  for pet in shop[:pets];
    if pet[:breed] == breed
      no_of_breed.push(pet)
    end
  end
  return no_of_breed
end

def find_pet_by_name(shop,name)
  pet_by_name=nil
  for pet in shop[:pets];
    if pet[:name] == name
      pet_by_name=pet
    end
  end
  return pet_by_name;
end

def remove_pet_by_name(shop,name)
  for pet in shop[:pets];
    if pet[:name] == name
      shop[:pets].delete(pet)
    end
  end
end


def add_pet_to_stock(shop,new_pet)
  shop[:pets].push(new_pet)
end


def customer_cash(customer);
  return customer[:cash]
end

def remove_customer_cash(customer,amount)

  customer[:cash]-= amount;
end

def customer_pet_count(customer)
  return customer[:pets].length
end


def add_pet_to_customer(customer,pet);
  customer[:pets].push(pet)



end
