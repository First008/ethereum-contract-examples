# Deletable Mapping

This example project shows how to delete mapping values.

 - Actually it does not delete the values. Instead it uses a parameter named ``` currentMappingVersion ``` and hashes the values with it.
 - Then it pushes the hash to the map. When you want to delete/clear all mapping values at once, all you have to do is increasing ``` currentMappingVersion ``` by 1.
 - This will change the hash and since you are accessing the mapping with hashes all your mappings will appear to be deleted but actually not. 

So If there are thousands of hashes in the mapping and we want to clean them, there might be a problem with storage.

We are doing it in this way because we dont want to use loops in our contracts.

With the help of [William Entriken](https://ethereum.stackexchange.com/questions/15553/how-to-delete-a-mapping/42540)