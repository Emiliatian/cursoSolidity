// SPDX-License-Identifier: MIT
// 0x7BaFa240914E6678d5b88110ae4f020848b418Cb
pragma solidity 0.8.20;

contract CalculaAluguel {
    string public locador;
    string public locatario;
    uint256[] public aluguel;
    uint constant periodoEmMesesDoAluguel=36;

    constructor (string memory _nomeLocador, string memory _nomeLocatario, uint256 _valorAluguel) {
        locador = _nomeLocador;
        locatario = _nomeLocatario;
        //aluguel[] = valorAluguel;
        for (uint i; i < periodoEmMesesDoAluguel; i++) {
            aluguel.push(_valorAluguel);
        }
    }

//	- funcao que retorna o nome do locador e do locatario
     function exibeLocadorLocatario( ) 
     public view returns (string memory, string memory) {
        return (locador, locatario);
    }


//	- funcao que altera o nome do locador se você passar o tipoPessoa 1 e
//    altera o nome do locatario se voce passar o tipoPessoa 2
    function alteraTipoPessoa(uint _tipoPessoa, string memory _nome)
    external returns (bool) {
        if (_tipoPessoa == 1) {
            locador = _nome;
        }
        else if (_tipoPessoa == 2) {
            locatario = _nome;
        }
        return true;
    }

//	- funcao que reajusta os valores dos alugueis após de um determinado mes. 
//    Exemplo: soma 100 aos alugueis depois do mes 15
    function reajustaAluguel(uint _mes, uint256 _ajuste)
    external returns (bool) {
        for (uint i = _mes; i < aluguel.length; i++) {
            aluguel[i] = aluguel[i] + _ajuste;
        }
        return true;
    }

}
