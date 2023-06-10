// SPDX-License-Identifier: MIT
//0x71Dd3A7C053DC0C1626De72e6e20a49daBe72262
pragma solidity 0.8.20;

contract CalculaBonus {
    string public vendedor;
    uint256 fator;

     constructor (
        string memory nomeVendedor, 
        uint256 fatorBonus,
        uint256 valorBonus) 

    public {
        vendedor = nomeVendedor;
        fator = fatorBonus;
    }

    function valorVendas() public view returns (uint256) {
        return vendas;
    }


    function calculaBonus(uint256 vendas, uint256 fatorBonus) public view
        returns(uint256 valorBonus) {

        valorBonus = vendas*fatorBonus;

        return valorBonus;
    } 
}
