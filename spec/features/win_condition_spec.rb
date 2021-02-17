# feature 'Win condition' do
#   context 'when Player 1 reaches 0HP first' do
#     before do
#       sign_in_and_play
#       attack_and_confirm
#       allow(Kernel).to receive(:rand).and_return(100)
#     end
#
#     scenario 'Player 1 loses' do
#       click_button 'Attack'
#       expect(page).to have_content 'Player 1 loses!'
#     end
#   end
# end
