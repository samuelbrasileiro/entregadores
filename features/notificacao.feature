Scenario: Aceitar uma entrega recebida
Given: Estou na página "Novas Entregas"
And: Existe uma nova entrega do restaurante "Mc Donalds" para o endereço "Rua do Futuro, 5, apto 701" com o valor de lucro para o entregador de "7 Reais"
When: Aperto o botão "Aceitar Nova Entrega"
Then: Tal nova entrega é iniciada para mim
And: Sou redirecionado para a página "Acompanhamento de entrega"
And: O endereço do restaurante “Mc Donalds” é apresentado

Scenario: Recusar uma entrega recebida
Given: Estou na página "Novas Entregas"
And: Existe uma nova entrega do restaurante "Mc Donalds" para o endereço "Rua do Futuro, 5, apto 701" com o valor de lucro para o entregador de "7 Reais"
When: Aperto o botão "Rejeitar Nova Entrega"
Then: Essa sugestão de nova entrega desaparece da lista
And: Continuo na página "Novas Entregas"

Scenario: Atualizar status da entrega após recebimento de pedido
Given: Estou na página "Acompanhamento de entrega"
And: A entrega do restaurante "Mc Donalds" para o endereço "Rua do Futuro, 5, apto 701" com o valor de lucro para o entregador de "7 Reais" foi aceita
And: O endereço no app está para o restaurante "Mc Donalds"
When: Alcanço o endereço do restaurante "Mc Donalds"
And: O pedido é entregue para mim
And: Aperto o botão "Confirmar recebimento de pedido"
Then: O endereço de entrega é atualizado para "Rua do Futuro, 5, apto 701"
And: Continuo na página "Acompanhamento de entrega"

Scenario: Concluir entrega do pedido no endereço
Given: Estou na página "Acompanhamento de entrega"
And: A minha entrega é do restaurante "Mc Donalds" para o endereço "Rua do Futuro, 5, apto 701" com o valor de lucro para o entregador de "7 Reais"
And: O pedido já foi recolhido por mim do restaurante "Mc Donalds"
And: O endereço de entrega está para o endereço "Rua do Futuro, 5, apto 701"
When: Alcanço o endereço "Rua do Futuro, 5, apto 701"
And: O pedido é entregue ao cliente que solicitou o pedido
And: Aperto o botão "Concluir entrega"
Then: Recebo uma notificação que ganhei "7 reais"
And: Retorno à página "Novas entregas"
And: A entrega sumiu da lista da página "Novas entregas"

Scenario: Entrega aceita por outro entregador
Given: Estou na página "Novas entregas"
And: Existe uma nova entrega do restaurante "Mc Donalds" para o endereço "Rua do Futuro, 5, apto 701" com o valor de lucro para o entregador de "7 Reais"
When: Não rejeitei nem aceitei a entrega
And: Outro usuário entregador aceitou essa entrega
Then: Continuo na página "Novas entregas"
And: Essa sugestão de nova entrega desaparece da lista

Scenario: Recebendo notificação de nova entrega
Given: Estou na página "Novas Entregas"
And: A lista de novas entregas está com apenas uma entrega, a do restaurante "Zio" para o endereço "Av. José Osório, 202" com o valor de lucro para o entregador de "4 Reais"
When: Surge no sistema uma nova entrega do restaurante "Bugaloo" para o endereço "Rua Padre Roma, 209" com o valor de lucro para o entregador de "10 Reais"
Then: Continuo na página "Novas Entregas"
And: A lista de novas entregas é atualizada, agora com "2" entregas, a do restaurante "Zio" e a do "Mc Donalds"
