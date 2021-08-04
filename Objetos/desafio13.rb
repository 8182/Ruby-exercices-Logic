class Cliente
    attr_accessor :clave, :nombre, :apellidos, :direccion, :estado_cliente, :compras,

    def activar_cliente
        if

        else

        end
    end
    def historial_compras

    end
    


end

class AdminProduct
    attr_accessor :clave, :nombre, :peso, :medidas, :marca
    attr_writer :precio
    
    def calcular_precio
        #@precio=(costo produccion+costo almacenaje+costo de distribucion)*(1+%utilidad)
    end
    
    def detalle_producto
        #aqui deberan mostrarse todos los datos del producto
    end
end
