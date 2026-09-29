class NaveMadre
{
    var velocidad
    var direccion

    method acelerar(kms)
    {
        velocidad = 0.max(velocidad + kms).min(100000)
    }

    method desacelerar(kms)
    {
        velocidad = 0.max(velocidad - kms).min(100000)
    }

    method irHaciaElSol(unNumero)
    {
        direccion = 10
    }

    method escaparDelSol(unNumero)
    {
        direccion = -10   
    }

    method ponerseParaleloAlSol() 
    {
        direccion = 0
    }

    method acercarseUnPocoAlSol() 
    {
        direccion = (-10).min(direccion + 1).max(10)
    }

    method alejarseUnPocoDelSol() 
    {
        direccion = (-10).min(direccion - 1).max(10)
    }       
}

class NaveBaliza inherits NaveMadre
{
    var colorBaliza = "azul"

    method cambiarDeColor(unColor)
    {
        colorBaliza = unColor.toString()
    }
}
class NaveDePasajeros inherits NaveMadre
{   
    const pasajeros
    var racionesDeComida
    var racionesDeBebida


    method cargarComida(unaCantidadDeRaciones)
    {
        racionesDeComida += unaCantidadDeRaciones
    }

    method descargarComida(unaCantidadDeRaciones) 
    {
      racionesDeComida -= unaCantidadDeRaciones
    }

    method cargarBebida(unaCantidadDeRaciones)
    {
        racionesDeBebida += unaCantidadDeRaciones
    }

    method descargarBebida(unaCantidadDeRaciones) 
    {
      racionesDeBebida -= unaCantidadDeRaciones
    }
}

class NaveDeCombate inherits NaveMadre
{
    var esVisible = true
    var misilesDesplegados = true
    const mensajes = []
    method ponerseVisible()
    {
        esVisible = true
    }

    method ponerseInvisible()
    {
        esVisible = false
    }

    method estaInvisible() = !esVisible 

    method desplegarMisiles()
    {
        misilesDesplegados = true
    }

    method replegarMisiles()
    {
        misilesDesplegados = false
    }

    method misilesDesplegados() = misilesDesplegados 

    

}

