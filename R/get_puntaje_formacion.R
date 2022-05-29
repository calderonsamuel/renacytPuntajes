#' Calcular puntaje en Formacion
#'
#' Permite  calcular los puntos obtenidos por el investigador
#' referidos a su formacion profesional
#'
#' @param grado_obtenido Grado academico obtenido. Debe estar registrado en SUNEDU.
#'
#' El grado obtenido debe pertenecer al listado c("Doctor", "Magister", "Título profesional",
#' "Bachiller o egresado", "Constancia de matrícula (Estudiante)", "Ninguno")
#'
#' @return Un numero entero entre 0 y 10 cerrado
#' @export
#'
#' @examples
#' get_puntaje_formacion("Doctor")
get_puntaje_formacion <- function(grado_obtenido = "Ninguno") {
    switch(grado_obtenido,
           "Doctor" = 10,
           "Magister" = 6,
           "Título profesional" = 4,
           "Bachiller o egresado" = 2,
           "Constancia de matrícula (Estudiante)" = 1,
           "Ninguno" = 0)
}
