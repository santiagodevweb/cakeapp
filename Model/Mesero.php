<?php
class Mesero extends AppModel
{
    var$mesero='Mesero';
    var$validate = array(
    //     'dni' => array(
        
    //             'message' => 'solo numeros'
           

    //     ),
  
    // );

   'telefono' => array(
        'rule' => array('minLength', '10'),
        'message' => 'Ingrese maximo 10 numeros!!'
   ),
);
}

?>