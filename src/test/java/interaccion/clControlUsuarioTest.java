/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package interaccion;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author mario
 */
public class clControlUsuarioTest {
    
    public clControlUsuarioTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of funAutenticacion method, of class clControlUsuario.
     */
    @Test
    public void testFunAutenticacion() {
        System.out.println("funAutenticacion");
        String parNombre = "mario";
        String parContrasenia = "app";
        clControlUsuario instance = new clControlUsuario();
        String expResult = "Mario Asencio";
        String result = instance.funAutenticacion(parNombre, parContrasenia);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }

    /**
     * Test of funCreacionUsuario method, of class clControlUsuario.
     */
    @Test
    public void testFunCreacionUsuario() {
        System.out.println("funCreacionUsuario");
        String parNombre = "edwin";
        String parPass = "12345";
        String parPrimNombre = "Edwin";
        String parPrimApellido = "Dubon";
        String parCorreo = "dubon@yahoo.com";
        clControlUsuario instance = new clControlUsuario();
        String expResult = "creado";
        String result = instance.funCreacionUsuario(parNombre, parPass, parPrimNombre, parPrimApellido, parCorreo);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }
    
}
