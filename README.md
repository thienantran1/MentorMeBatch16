# batch16
11.4.2024

All contents were written as per class instructions, except the following:

In sign_up_state.dart:
	- Line 15: Create state ShowDialogOnScreen to show Dialog.
	- Line 20: Create state SignUpLackOfDetails when any of user details is empty.

In sign_up_cubit.dart:
	- Line 24-34: Events to call out state SignUpLackOfDetails.
	- Line 35-37: Event to call out state ShowDialogOnScreen.

In sign_up_screen.dart:
	- Line 35: BlocListener to listen and show responses including:
		+ Line 37-44: show SnackBar when icon Github is clicked.
		+ Line 45-52: show Dialog when SignUp button is clicked with no empty TextField.
	- Line 106-116: BlocBuilder to show Text when icon Google is clicked.
	- Line 150-157: BlocBuilder to show Text below Password text field if submitted 
		with an empty text field.
	- Line 160-171: Algorithm to prioritise name before email before password, 
		when any of them is empty.


