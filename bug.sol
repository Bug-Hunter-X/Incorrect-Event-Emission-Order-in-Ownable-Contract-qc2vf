function transferOwnership(newOwner) {
  require(newOwner != address(0), "Ownable: new owner is the zero address");
  emit OwnershipTransferred(_owner, newOwner);
  _owner = newOwner;
}

// The bug is in the above function where the event OwnershipTransferred is emitted before the owner is actually updated.  This can lead to inconsistencies if other parts of the application rely on the event to reflect the current owner.