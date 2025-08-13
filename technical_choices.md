# Technical choices made during this task

- Container build tool: docker as I don't have preference, didn't built too much images myself.
- image registry, pipeline tool: I stick to github, this looked the easiest to use for a short lived "demo" environment. The alternative idea was to use aws for everyting, then i will choose ECR, Codebuild but the full AWS solution will take more hours to do.
- kubernetes distribution: I'm coming from operations side, I have experience with mostly EKS, Openshift, my home learing cluster is vanilla kubernetes on virtual machines. I'm aware of distributions like k3s but I stick to EKS as I know it better.
- deployment tool: the AWS resources deployed via terraform, this is the only IaC tool I have lot of experience (and Ansible but that is better for OS level tasks).
- ci/cd for kubernetes: Most of my experience is with ArgoCD, and I saw it as a widely deployed tool, so I stick to it. Alternative idea was to do something very simple like ```kubectl apply -f``` from the Github pipeline, but that looks like a very ugly solution, and doesn't sounds good as a presentation of my way of thinking.
