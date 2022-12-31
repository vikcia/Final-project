# Product variation function

Function for <strong>AT EASE</strong> system with <strong>Smarty template engine</strong>

## AT EASE controller cms description

https://www.controllercms.eu/en/

## Smarty template engine documentation

https://www.smarty.net/

## PRODUCT VARIATION FUNCTION description

The function is intended to put the same products, which visually look the same, but for example with different power, put inside one product.
![alt text]([http://url/to/img.png](https://github.com/vikcia/Final-project/blob/master/1%20img.jpg))

| Before                  | After                                                                             |
|-------------------------|-----------------------------------------------------------------------------------|
| ![1 img](https://user-images.githubusercontent.com/104791026/210152363-dba56b9f-aacd-4f46-8a4f-7e349f5242cf.jpg) | ![2 img](https://user-images.githubusercontent.com/104791026/210152389-bd368f9b-4ce5-4f22-a019-7635299e574b.jpg)
| ![5 img](https://user-images.githubusercontent.com/104791026/210152468-fa3f502f-6309-4136-9ce7-a2ef6c8c881e.jpg) | ![3 img](https://user-images.githubusercontent.com/104791026/210152402-8c185323-226c-4d7c-a5d6-a76cbc120575.jpg)

## How it works

1. Creating attribute "Produkto variacijos" in database. Function will work only if selected.
![creating attribute in db](https://user-images.githubusercontent.com/104791026/210152499-3735753c-6715-4674-bcaa-da07c8e5ff4a.jpg)
2. Creating checkbox with selections in master product. By selecting option will change main price.
![4 img](https://user-images.githubusercontent.com/104791026/210152526-40414cb7-8b37-4326-871b-ce37b540df7d.jpg)
3. Taking minimum and maximum price value from database and puts into price window where product has "Product variation".
![6 img](https://user-images.githubusercontent.com/104791026/210152547-4f1a7ddb-14c5-4af1-93af-a59c3dbe1ffb.jpg)
