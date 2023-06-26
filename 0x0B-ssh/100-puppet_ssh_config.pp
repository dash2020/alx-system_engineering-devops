# A Puppet manifest that makes changes to our configuration file.
exec {'echo':
    path    => 'usr/bin:/bin',
    command => 'echo "  IdentityFile ~/.ssh/school\n  PasswordAuthentication no" >> /etc/ssh/ssh_config',
    returns => [0, 1],
}
