// ============================================
// 📅 CONFIGURACIÓN DEL CONTADOR DE DÍAS
// ============================================

/* 
   CÓMO FUNCIONA:
   
   1. PRIMERA VEZ: Cuando ella hace click en "YES", guarda la fecha automáticamente
   
   2. DESPUÉS DE REFRESH: El contador SIGUE funcionando desde la fecha guardada
   
   3. PERMANENTE: La fecha se guarda en localStorage y NUNCA se pierde
   
*/

// ============================================
// OPCIÓN A: Establecer una fecha FIJA específica
// ============================================

function setFixedDate() {
    // Descomenta y cambia la fecha aquí:
    const fixedDate = '2026-01-21T01:36:57.000Z'; // Formato: YYYY-MM-DDTHH:MM:SS.000Z
    
    localStorage.setItem('relationshipStartDate', fixedDate);
    console.log('✅ Fecha fija establecida:', new Date(fixedDate));
    alert('¡Fecha establecida! Refresca la página para ver el contador.');
}

// ============================================
// OPCIÓN B: Borrar la fecha guardada (para resetear)
// ============================================

function resetCounter() {
    localStorage.removeItem('relationshipStartDate');
    console.log('🔄 Contador reseteado');
    alert('Contador reseteado. La próxima vez que haga click en YES, se guardará una nueva fecha.');
    location.reload();
}

// ============================================
// OPCIÓN C: Ver la fecha actual guardada
// ============================================

function checkCurrentDate() {
    const savedDate = localStorage.getItem('relationshipStartDate');
    if (savedDate) {
        console.log('📅 Fecha guardada:', new Date(savedDate));
        alert('Fecha guardada: ' + new Date(savedDate).toLocaleString());
    } else {
        console.log('❌ No hay fecha guardada todavía');
        alert('No hay fecha guardada. Haz click en YES para guardar una.');
    }
}

// ============================================
// INSTRUCCIONES:
// ============================================

/*
   Para usar estas funciones, abre la Consola del navegador (F12) y escribe:
   
   1. Para establecer una fecha fija:
      setFixedDate()
   
   2. Para resetear el contador:
      resetCounter()
   
   3. Para ver la fecha actual:
      checkCurrentDate()
      
   O simplemente copia/pega la función completa en la consola.
*/

// ============================================
// EJEMPLO DE USO:
// ============================================

/*
   Si quieres que el contador empiece desde el 21 de Enero 2026 a las 00:00:
   
   1. Abre la consola (F12)
   2. Copia y pega esto:
   
   localStorage.setItem('relationshipStartDate', '2026-01-21T00:00:00.000Z');
   location.reload();
   
   ¡Y listo! El contador empezará desde esa fecha.
*/