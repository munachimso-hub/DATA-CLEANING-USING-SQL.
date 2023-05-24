--looking at the dataset

select*
FROM nashvillehousing


--standardize date format
SELECT SaleDate, CONVERT(Date, SaleDate)
FROM nashvillehousing

UPDATE nashvillehousing
SET SaleDate = CONVERT(Date, SaleDate)

ALTER TABLE nashvillehousing
ADD SaleDateconverted Date

UPDATE nashvillehousing
SET SaleDateconverted =CONVERT(Date, SaleDate) 


SELECT DISTINCT(SoldAsVacant), COUNT(SoldAsVacant)
FROM nashvillehousing
GROUP BY SoldAsVacant


SELECT SoldAsVacant,
CASE WHEN SoldAsVacant ='Y' THEN 'YES'
     WHEN SoldAsVacant ='N' THEN 'NO'
	 END
FROM nashvillehousing




UPDATE nashvillehousing
set SoldAsVacant = CASE WHEN SoldAsVacant = 'Y' THEN 'YES'
    WHEN SoldAsVacant ='N' THEN 'NO'
	END