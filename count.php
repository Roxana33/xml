<?php
$xml=<<<XML
  <cars>
    <car name="Volvo">
    <child/>
    <child/>
    <child/>
    <child/>
  </car>
  <car name="BMW">
    <child/>
    <child/>
  </car>
</cars>
XML;

$elem=new SimpleXMLElement($xml);
foreach ($elem as $car)
  {
  printf("%s has %d children.<br>", $car['name'], $car->count());
  }

  $hijos = $elem.children();

for ($i=0; $i<$elem->count(); $i++) {
  print_r($elem[$i]);
}
?>