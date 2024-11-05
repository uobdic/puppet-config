# Profile for poolaccounts
class profile::users::poolaccounts (
  Hash $groups = {},
  Hash $users  = {},
) {
  $defaults     = {
    'ensure' => present,
    'tag'    => 'poolaccounts',
  }
  create_resources('group', $groups, $defaults)
  create_resources('accounts::user', $users, $acc_defaults)
}
