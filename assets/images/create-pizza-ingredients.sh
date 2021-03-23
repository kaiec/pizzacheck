#!/bin/bash
mkdir pizza-ingredients
rm pizza-ingredients.zip
cp pizza-ingredients.svg oregano.png mushroom.png peppers.png olives.png mozzarella.png corn.png broccoli.png tomato.png LICENSE pizza-ingredients
zip pizza-ingredients.zip -r pizza-ingredients
rm -rf pizza-ingredients
