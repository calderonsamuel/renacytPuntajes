#' Calcular puntaje en Asesoria
#'
#' Permite calcular los puntos obtenidos por el investigador en asesorías
#' de tesis en distintos niveles de estudios
#'
#' @param n_doct Cantidad de tesis de doctorados asesoradas
#' @param n_mag Cantidad de tesis de maestria asesoradas
#' @param n_bach Cantidad de tesis de bachiller asesoradas
#'
#' @return Un numero real
#' @export
#'
#' @examples
#' get_puntaje_asesoria(n_doct = 2)
#' get_puntaje_asesoria(n_mag = 10)
#' get_puntaje_asesoria(n_mag = 10, n_bach = 7)
get_puntaje_asesoria <- function(n_doct = 0, n_mag = 0, n_bach = 0) {
    puntaje <- (n_doct*2)+(n_mag*1)+(n_bach*0.5)
    puntaje_calculado <- if (puntaje > 10) 10 else as.double(puntaje)
    return(puntaje_calculado)
}
