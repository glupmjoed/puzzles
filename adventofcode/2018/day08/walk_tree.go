package main

import "fmt"

func main() {
	fmt.Println(walkTree())
}

func walkTree() (int, int) {
	var childMetaSum, numChildren, numMeta, nodeMetaSum, tmp int

	// scan input in tree order (i.e. call walkTree before scanning meta)
	fmt.Scanf("%d%d", &numChildren, &numMeta)
	children := make([]int, numChildren)
	for i := range children {
		children[i], tmp = walkTree()
		childMetaSum += tmp
	}
	metaValues := make([]int, numMeta)
	for i := range metaValues {
		fmt.Scanf("%d", &tmp)
		metaValues[i] = tmp
		nodeMetaSum += tmp
	}

	if numChildren == 0 {
		return nodeMetaSum, nodeMetaSum + childMetaSum
	}
	tmp = 0
	for _, i := range metaValues {
		i--
		if i >= 0 && i < len(children) {
			tmp += children[i]
		}
	}
	return tmp, nodeMetaSum + childMetaSum
}
