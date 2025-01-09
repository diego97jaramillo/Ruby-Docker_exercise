@sujeto = ["El perro", "La tortuga", "Mi amigo", "El Sebas"]
@predicado = ["corre rápido", "es muy sabio", "ama programar", "canta muy bien"]
def verify_intelligence(sujeto_input)
  if sujeto_input.length > 8
    sujeto_input + " inteligente"
  else
    sujeto_input
  end
end

def verify_predicado(predicado_input)
  if predicado_input.include? "programar"
    predicado_input + "!"
  else
    predicado_input
  end
end

def randomize_sujeto
  @sujeto.sample
end

def randomize_predicado
  @predicado.sample
end

def generador_de_frase
  sujeto_final = verify_intelligence(randomize_sujeto)
  predicado_final = verify_predicado(randomize_predicado)
  sujeto_final + " " + predicado_final
end

puts generador_de_frase
