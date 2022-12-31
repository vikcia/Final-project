# Product variation function

Function for <strong>AT EASE</strong> system with <strong>Smarty template engine</strong>

## AT EASE controller cms description

https://www.controllercms.eu/en/

## Smarty template engine documentation

https://www.smarty.net/

## PRODUCT VARIATION FUNCTION description

The function is intended to put the same products, which visually look the same, but for example with different power, put inside one product.


| Before                  | After                                                                             |
|-------------------------|-----------------------------------------------------------------------------------|
| <img src="C:\Users\Vik\Desktop\baigiamasis\Final project\1 img.jpg" width="350"/> | <img src="C:\Users\Vik\Desktop\baigiamasis\Final project\2 img.jpg" width="350"/> |
| <img src="C:\Users\Vik\Desktop\baigiamasis\Final project\5 img.jpg" width="350"/> | <img src="C:\Users\Vik\Desktop\baigiamasis\Final project\3 img.jpg" width="350"/> |                         |

## How it works

1. Creating attribute "Produkto variacijos" in database. Function will work only if selected.
<img src="C:\Users\Vik\Desktop\baigiamasis\Final project\creating attribute in db.jpg"/>
2. Creating checkbox with selections in master product. By selecting option will change main price.
<img src="C:\Users\Vik\Desktop\baigiamasis\Final project\4 img.jpg"/>
3. Taking minimum and maximum price value from database and puts into price window where product has "Product variation".
<img src="C:\Users\Vik\Desktop\baigiamasis\Final project\6 img.jpg"/>