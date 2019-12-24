z.test = function(x, a0, a1, sd, sig.level=0.05) {
  n = length(x)
  z = (mean(x)-a0)*sqrt(n)/sd
  if (a1 > a0) {
    power = 1-pnorm(qnorm(1-sig.level)-(a1-a0)*sqrt(n)/sd)
    p.val = 1-pnorm(z)
    decision = ifelse(z < qnorm(1-sig.level), "Accept", "Reject")
  } else {
    power = pnorm(qnorm(sig.level)+(a0-a1)*sqrt(n)/sd)
    p.val = pnorm(z)
    decision = ifelse(z > qnorm(1 - sig.level), "Accept", "Reject")
  }
  RVAL = list(statistic = z, pvalue = p.val, decision = decision, power = power, method = "ztest for the mean value")
  class(RVAL)<-c("z.htest", "htest")
  return(RVAL)
}

print.z.htest<-function(x, ...) {
  NextMethod(x, ...)
  cat('Decision ', x$decision, '\n')
  cat('Power ', x$power, '\n')
  invisible(x)
}

z.test(rnorm(20, 1, 0.5), 1, 2, 0.5)