Computação heterógena: Tanto usa o CPU como GPU

Em programação CUDA, o CPU é o administrador/Host, enquanto que a GPU é o trabalhador/Device. Parte do código é executada por Host, parte por device. 

Unidade de controlo única (SIMD). Quando entra na instrução, invés de ter só um pipeline. Tem vários pipelines, cada um com as suas unidades de controlo e execução próprias, chamados de elementos de computação que executam em paralelo. 

Em processadores da nvidia, cada core tem 32 elemento computacionais. 

Use sftp for file transfer
