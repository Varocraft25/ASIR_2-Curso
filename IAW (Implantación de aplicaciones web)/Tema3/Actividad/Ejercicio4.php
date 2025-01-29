<?php
$n = 20;
$fib1 = 0;
$fib2 = 1;
$contador = 1;

echo "Los primeros $n números de la serie Fibonacci:<br>";
while ($contador <= $n) {
    echo "$fib1<br>";
    $siguiente = $fib1 + $fib2;
    $fib1 = $fib2;
    $fib2 = $siguiente;
    $contador++;
}
?>