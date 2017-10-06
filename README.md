ansible-pb-concourse
====================

Install docker concourse
Create keys
Get concourse pipeline config
Deploy config

### Installation

Install role dependencies :

    ansible-galaxy install -r requirements.yml

If first concourse initialisation, build keys with:

    ./build_keys.sh

Fetch concourse pipelines with:

   ./get_pipelines.sh

Create a vault pass file with vault password in `~/.vaultpass/ypi/ansible-pb-concourse.key`


### Usage

    ansible-playbook playbook.yml -D


`playbook.yml` is the main playbook.

`-D` to display diff

`-C` to use check mode and don't do anything (optional)

`-u` to specify remote user (optional)

`-K` to ask for ssh password (optional)

`-k` to ask for "become" (sudo) password (optional)


Update role dependencies:

    ansible-galaxy install -r requirements.yml --force


