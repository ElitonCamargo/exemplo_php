<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exemplo consulta</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <fieldset>
            <legend>Exemplo tabela</legend>
        </fieldset>
        <table class="table">
          <thead>
            <tr>
              <th scope="col">Clube</th>
              <th scope="col">Estádio</th>
              <th scope="col">Capacidade publico</th>
              <th scope="col">Nº títulos</th>
            </tr>
          </thead>
          <tbody>
            <?php
                require_once 'class/Clube.php';
                require_once 'biblioteca_de_funcoes.php';
                $clube = new Clube();
                $listaDeClubes = $clube->consultarTodos();
                if($listaDeClubes){
                    foreach ($listaDeClubes as $objClube) {
                        echo exbirDadosEmTabela($objClube);
                    }
                }
            ?>               
          </tbody>
        </table>
    </div>
</body>
</html>