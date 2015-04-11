require_relative 'credibanco'

credibanco_example = Credibanco.new('vinos_rio', '68oBb9Jh', 0)
hash_call = {'informacionTransaccion'=> {
              'Compra' => {
                'referencia' => 'VI-PDPTM9-52522',
                'valor'=>1000,
                'isoMoneda'=>'USD',
                'numeroCuotas'=>1,
                'iva'=>0,
                'baseDevolucionIva'=>0
               },
              'Cliente' => {
                'nombre'=>'jose joaquin',
                'apellido'=>'gamboa sotelo',
                'documento'=>'000000000',
                'email'=>'tech@iatai.com',
                'telefono'=>'6051717'
              },
              'TarjetaHabiente'=>{
                'nombre'=>'jose joaquin',
                'apellido'=>'gamboa sotelo',
                'email'=>'tech@iatai.com',
                'telefono'=>'6051717',
                'documento' => '000000000',
                'pais'=>'CO',
                'estadoProvincia'=>'N/A',
                'ciudad'=>'Bogota',
                'direccion'=>'Calle falsa 123',
                'codigoPostal'=>'5700'
              },
              'TarjetaCredito'=>{
                'franquicia'=> 1,
                'numeroTarjeta'=>'4111111111111111',
                'mesVencimiento'=>'11',
                'anoVencimiento'=>'2016',
                'codigoSeguridad'=>'0000',
                'tipoCuenta'=>'C'
              },
              'InformacionFraude'=>{
                'ipComprador'=>'127.0.0.1',
                'hostComprador'=>'localhost',
                'cookie'=>'8tosvjs7vi9plqi2v24igq4mf6',
                'userAgent'=>'Chrome',
                'deviceFingerPrint'=> '8tosvjs7vi9plqi2v24igq4mf6'
              },
              'productos'=>{
                'producto'=>{
                  'codigoItem'=>8999,
                  'nombreItem'=>'zapatos',
                  'valorItem'=>2000,
                  'cantidadItem'=>1,
                  'codigoCategoria'=>3,
                  'nombreCategoria'=>'Azul'
                }
              }
        }}
response = credibanco_example.transaction(hash_call)
print response
