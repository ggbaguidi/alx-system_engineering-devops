# Puppet ssh configuration

include stdlib

file_line{ 'Declare identity file':
  path    => '~/.ssh/config',
  line    => '	IdentityFile ~/.ssh/school',
  replace => true,
}

file_line{ 'Turn off passwd auth':
  path    => '~/.ssh/config',
  line    => '	PasswordAuthentification no',
  replace => true,
}
