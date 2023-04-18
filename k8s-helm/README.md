# k8s-helm tech test #

## Objective ##

You are working with a team that has recently deployed a daemonset to the cluster, it provides important underlying mesh architecture to their application and requires access to each node the app is running on.

# Part 1 #
1. They recently discovered that despite their app only running on nodes labelled team=cat, their daemonset is being deployed on all node groups! Add appropriate entries to the daemonset manifest to only allow the daemonset to run on specifically labelled cluster nodes

2. In this scenario the team would like to specify the nodes, but this chart can be reused on other clusters with all nodes requiring the mesh component. Ensure that the chart can take a valuesfile variable to select the right node group, but in the case of no value being given, defaults to all nodes.

# Part 2 #
Using a helpers file, include the ability to override the daemonset name from the values file.  If there is no override item in the values file then the .Chart.Name should be used

# Part 3 #
Create a test in the helm deployment to simply confirm that the image successfully creates a pod.  You can use any command you wish