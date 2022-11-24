use rand::Rng;

fn gera_vetor_aleatorio(quantidade: i32, multiplicador: f64) -> Vec<f64> {
    let mut count: i32 = 0;
    let mut valores_aleatorios: Vec<f64> = Vec::new();
    loop {
        let valor_aleatorio: f64 = rand::thread_rng().gen();
        valores_aleatorios.push(valor_aleatorio * multiplicador);
        if count == quantidade {
            break valores_aleatorios;
        }
        count += 1;
    }
}

fn my_bubble_sort (vec: &Vec<f64>) -> Vec<f64> {
    let mut valores_ordenados: Vec<f64> = vec.to_vec();
    for i in 0..valores_ordenados.len() {
        for j in 0..valores_ordenados.len() - 1 - i {
            if valores_ordenados[j] > valores_ordenados[j + 1] {
                valores_ordenados.swap(j, j + 1)
            }
        }
    }
    return valores_ordenados
}

fn main() {
    let inicio = std::time::Instant::now();
    // ALTERAR AQUI
    let quantidade: i32 = 20000;
    // ------------

    let multiplicador: f64 = 10.0;
    let valores_nao_ordenados = gera_vetor_aleatorio(quantidade, multiplicador);
    my_bubble_sort(&valores_nao_ordenados);

    println!("Ordenando {quantidade} elementos...");

    let duracao = inicio.elapsed();

    println!("A ordenacao demorou {duracao:?}");

}