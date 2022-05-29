#' Obtener puntaje total
#'
#' Obtiene el puntaje total a partir de los datos del investigador.
#' En realidad, solo suma los puntajes de los tres módulos.
#'
#' @param puntaje_formacion Puntaje obtenido en la sección Formación
#' @param puntaje_produccion Puntaje obtenido en la sección Producción
#' @param puntaje_asesoria Puntaje obtenido en la sección Asesoría
#'
#' @return Un número real
#' @export
#'
#' @examples
#' get_puntaje_total(10, 5, 10)
get_puntaje_total <- function(puntaje_formacion = 0,
                              puntaje_produccion = 0,
                              puntaje_asesoria = 0) {

    puntaje_formacion + puntaje_produccion + puntaje_asesoria
}
