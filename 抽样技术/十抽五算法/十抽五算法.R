# 从1-10十个数中，简单放回随机抽样抽取5个数，展示所有的抽样结果，并计算出共有多少种抽样结果
pop = seq(1, 10)
n = 5
# init
N = length(pop)
ind = seq(1,5)
sam = ind

while (ind[1] < N-n+1){
	if (ind[n] < N){
		anc = ind[n]
		inc = 1
	}
	if (ind[n] == N){
		anc = ind[n-inc]
		inc = inc + 1
	}
	print(sprintf('inc = %d', inc))
	print(sprintf('anc = %d', anc))
	ind[seq(n - inc +1, n)] = anc + seq(1, anc) #}
	print(ind)
	sam = rbind(sam, pop[ind])
}
