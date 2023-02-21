#h1Ad-hoc Command

- using ansible adhoc, create a shell script called adhoc.sh to do the following on all managed nodes:

• add yum repository with the following information:
  name: BaseOS
  description: BASE OS REPOSITORY
  base URL: https://control.node18.example.com/BaseOS
  gpgcheck is required
  repo must be enabled
  gpg key: https://control.node18.example.com/BaseOS/release

• add another yum repository with the following information:
  
  name: AppStream
  description: APP STREAM REPOSITORY
  Base URL: https://control.node18.example.com/AppStream
  gpgcheck is required
  repo must be enabled
  gpg key: https://control.node18.example.com/AppStream/release
