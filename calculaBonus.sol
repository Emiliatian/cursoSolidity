// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;
//0xb724a70748f2924e5c3D1aeeBc8E4114D5A954D9
contract CalculaBonus {
    string public vendedor;
    uint256 public fator;

     constructor (
        string memory nomeVendedor, 
        uint256 fatorBonus) {
        vendedor = nomeVendedor;
        fator = fatorBonus;
    }

    function calculaBonus(uint256 vendas) public view
        returns(uint256 valorBonus) {

        valorBonus = vendas*fator;

        return valorBonus;
    } 
}
