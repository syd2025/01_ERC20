### Web3 ERC20协议 前后端交互项目（铸造代币和销毁代币）
知识点：
一、 学习使用foundry命令，详细内容如下：

1. 部署合约命令
forge create --private-key ${OWNER_PRIVATE_KEY} --broadcast src/LuLuCoin.sol:LuLuCoin --constructor-args ${OWNER_ADDRESS}

2. 编译命令
forge compile

3. 测试命令
forge test 
forge test --mt <合约中某个具体的测试方法> -vvvvv

4. 测试覆盖率命令
forge coverage

5. 查看合约部署消耗的gas费用,单位换算
cast to-dec <gas>

6. 给钱包铸造代币(需要与链进行交互，消耗gas费用)
cast send ${CONTRACT_ADDRESS} "mint(uint256)" 100000000000000000000 --private-key ${OWNER_PRIVATE_KEY}

7. 查询钱包账户(不需要消耗gas)
cast call ${CONTRACT_ADDRESS} "balanceOf(address)" ${OWNER_ADDRESS}

8. 类型转换
cast to-dec <待转换数值> --private-key ${OWNER_PRIVATE_KEY}

9. 给钱包销毁代币
cast send ${CONTRACT_ADDRESS} "burn(uint256)" 50000000000000000000 --private-key ${OWNER_PRIVATE_KEY}

二、学习前端框架next.js, 了解前端呢框架运行原理

三、学习ether.js是怎么加载abi.json文件，实现前端和链端关联

四、solidity语言的使用
