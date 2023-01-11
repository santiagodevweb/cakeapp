<?php
class MeserosController extends AppController
{
    public $helpers = array('Html','Form');
    public $componet = array ('Session');
  // :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: 
    //crear una funcion de acciones 
    public function index()
    {
        $this->set('meseros',$this->Mesero->find('all'));
    } 
  // ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

    public function ver($id = null)
    {
      //validaciones por cakephp
      if(!$id)
      {
        throw new NotFoundException('Datos invalidos');
      }
      $mesero=$this->Mesero->findById($id);
      if(!$mesero)
      {
        throw new NotFoundException('Mesero no encontrado');
      }
      $this->set('mesero', $mesero);
    }
 // ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

    public function nuevo()
    {
        if($this->request->is('post'))
        {
            $this->Mesero->create();
            
            // $this->MEsero->date_create_from_format();
            if($this->Mesero->save($this->request->data))
            {
                $this->Session->setFlash('El mesero ha sido creado','default',array('class'=>'success'));
                return $this->redirect(array('action' => 'index'));
            }
            $this->Session->setFlash('no se pudo crear el mesero');
        }
    }
  // ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
            public function editar($id = null)
            {
              if(!$id)
              {
                throw new NotFoundException('datos incorrectos');
              }
              // metodo de limpieza  de formulario
              $mesero= $this->Mesero->findById($id);
              if(!$mesero)
              {
                throw new NotFoundException('registro no encontrado');
                
              }
              if($this->request->is('post','put'))
              {
                $this->Mesero->id=$id;
                if($this->Mesero->save($this->request->data))
                {
                  $this->Session->setFlash('mesero modificado',$element = 'default',$params = array('class' => 'success'));
                  return $this->redirect(array('action' =>'index'));
                }
                $this->Session->setFlash('no se realizo la peticion');
              }
              if(!$this->request->data)
              {
                $this->request->data = $mesero;
              }
            }
 //::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

                          public function eliminar($id)
                          {
                            if($this->request->is('get'))
                            {
                              throw new MethodNotAllowedException('INCORRECTO');
                            }
                            if($this->Mesero->delete($id))
                            {
                              $this->Session->setFlash('El mesero ha sido eliminado',$element ='default',$params=array('class'=>'success'));
                              return $this->redirect(array('action'=>'index'));
                            }
                          }
}
?>