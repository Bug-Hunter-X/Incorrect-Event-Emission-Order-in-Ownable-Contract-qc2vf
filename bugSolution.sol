function transferOwnership(newOwner) {
  require(newOwner != address(0), "Ownable: new owner is the zero address");
  _owner = newOwner; // Update the owner first
  emit OwnershipTransferred(_owner, newOwner); // Emit the event after the update
}

//The solution fixes the emission order by updating the contract's owner before emitting the OwnershipTransferred event.