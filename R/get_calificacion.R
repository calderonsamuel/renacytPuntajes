#' Obtener calificación Renacyt
#'
#' Permite calcular si el investigador pasa la valla mínima en
#' distintos escenarios y el nivel correspondiente a su calificación RENACYT.
#'
#' @inheritParams get_puntaje_total
#' @param indice_h logical. ¿El investigador tiene Índice H mayor a 10?
#'
#' @return character. Estado de calificación y nivel correspondiente.
#' @export
#'
#' @examples
#' get_calificacion(2, 10)
#' get_calificacion(1, 6)
#' get_calificacion(1, 200, 0, TRUE)
get_calificacion <- function(puntaje_formacion = 0,
                             puntaje_produccion = 0,
                             puntaje_asesoria = 0,
                             indice_h = FALSE) {

    puntaje_total <- puntaje_formacion + puntaje_produccion + puntaje_asesoria

    if (puntaje_produccion == 0) return("No califica: Requiere al menos un ítem en Producción")
    if (puntaje_formacion == 1 & puntaje_produccion < 9) return("No califica: Estudiantes requieren 9 en producción")
    if (puntaje_formacion > 1 & puntaje_produccion < 6) return("No califica: Requiere al menos 6 en producción")
    if (puntaje_total < 10) return("No califica: Requiere al menos 10 en puntaje total")
    if (puntaje_total <= 24) return("Sí califica: Nivel VII")
    if (puntaje_total <= 34) return("Sí califica: Nivel VI")
    if (puntaje_total <= 49) return("Sí califica: Nivel V")
    if (puntaje_total <= 69) return("Sí califica: Nivel IV")
    if (puntaje_total <= 99) return("Sí califica: Nivel III")
    if (puntaje_total <= 159) return("Sí califica: Nivel II")
    if (puntaje_total <= 199) return("Sí califica: Nivel I")
    if (isTRUE(indice_h)) return("Sí califica: Investigador Distinguido") else "Sí califica: Nivel I"
}
