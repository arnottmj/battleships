class Ship

  def fetch (hash_name, key)
    @size = hash_name[key]
    hash_name.delete(key)
    @size
  end

end
