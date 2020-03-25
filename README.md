# jitsi_meet


Secure, Simple and Scalable Video Conferences that you use as a standalone app or embed in your web application.

## Example Playbook

    ---
    - hosts: all
      vars:
        jitsi_meet__host: foo.bar.tld
        jitsi_meet__letsencrypt_email: foo@bar.tld
      roles:
        - vwit.docker
        - xsfx.jitsi_meet
