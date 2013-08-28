
# Global Reference to the Main Object Instance:
_APP = null

# Require the main object class:
require ["main"], (Main)->

	# Log that require js is working:
	console?.log? "Require JS Booted."
	
	# Start the new Main class instance:
	_APP = new Main()
	