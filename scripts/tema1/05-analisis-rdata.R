clientes <- c("juan gabriel", "ricardo","pedro")
fechas <- as.Date(c("2017-12-27","2017-11-1","2018-1-1"))
pago <- c(315,192.55, 40.15)

pedidos <-data.frame(clientes,fechas,pago)

save(pedidos, file ="../../data/tema1/pedidos.Rdata")
saveRDS(pedidos,file = "../../data/tema1/pedidos.rds")

clientes_vip <- c("juan gabriel", "ricardo")
save(pedidos,clientes_vip, file ="../../data/tema1/pedidos.Rdata")

remove(pedidos)


load("../../data/tema1/pedidos.Rdata")

orders <- readRDS("../../data/tema1/pedidos.rds")


save.image("../../data/tema1/alldata.Rdata")

primer <- c(2,3,5,7,11,13)
pow2 <- c(2,4,8,16,32,64,128)
save(list = c("primer","pow2"),file = "../../data/tema1/primes_and_pow2.Rdata")


attach("../../data/tema1/alldata.Rdata")
