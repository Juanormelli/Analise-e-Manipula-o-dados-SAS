/*
Programa:Formata��oDeNumeros.sas
Autor: Juan Ormelli de Medeiros
Data: 12/03/2021
Versao:1.00

Descri��o:Programa Feito para melhorar visualiza��o de valores da Tabela de quebras por grupo e departamentos 


*/


proc report data=cgdexcel.atttestetable headskip
    style(header)=[backgroundcolor=lightblue];
    column CodDepto CodGrupo DataVenda Descricao QtdeVendida PrecoUnitario totalvendas AcumuladoGrupo AcumuladoDepto;
    define totalvendas/ format=comma25.2;
    define AcumuladoGrupo / format=comma25.2;
    define AcumuladoDepto / format=comma25.2;
  run;