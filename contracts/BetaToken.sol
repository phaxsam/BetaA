// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.6;

import "@openzeppelin/contracts/token/ERC20/presets/ERC20PresetMinterPauser.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/draft-ERC20Permit.sol";

contract BetaToken is ERC20PresetMinterPauser('A2ZFINANCE Token', 'AZFIN'), ERC20Permit('AZFIN') {
  function _beforeTokenTransfer(
    address from,
    address to,
    uint amount
  ) internal virtual override(ERC20, ERC20PresetMinterPauser) {
    ERC20PresetMinterPauser._beforeTokenTransfer(from, to, amount);
  }
}
