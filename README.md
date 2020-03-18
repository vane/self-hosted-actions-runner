# self-hosted-actions-runner
Self hosted actions runner container with persistent volume

Create local directory and follow common steps  
`mkdir actions-runner && cd actions-runner`  

`curl -O -L https://github.com/actions/runner/releases/download/v2.165.2/actions-runner-linux-x64-2.165.2.tar.gz`  

`tar xzf ./actions-runner-linux-x64-2.165.2.tar.gz`  

Now use the container to add runner and fill out interactive form (TODO automate)  

`docker run -ti --rm -v $(PWD)/actions-runner:/actions-runner szczepano/self-hosted-actions-runner /actions-runner/config.sh --url $REPOSITORY_URL --token $ GITHUB_TOKEN`

Run self hosted runner use  
`docker run -ti --rm -v $(PWD)/actions-runner:/actions-runner szczepano/self-hosted-actions-runner /actions-runner/run.sh`
