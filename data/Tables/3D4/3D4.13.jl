using ..GenericCharacterTables
import ..GenericCharacterTables: Cyclotomic, Parameters, Parameter, ParameterException, CharTable
using Oscar
R, q = polynomial_ring(QQ, "q")
Q = fraction_field(R)
S = UniversalPolynomialRing(Q, cached=false)
a,b,k,l, _...=gens(S, ["a", "b", "k", "l", "a1", "b1", "k1", "l1", "a2", "b2", "k2", "l2", "a3", "b3", "k3", "l3", "at1", "bt1", "kt1", "lt1", "at2", "bt2", "kt2", "lt2"])

order = q^12*(q^8+q^4+1)*(q^6-1)*(q^2-1)
table = Cyclotomic{QQPolyRingElem}[[
	CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0))] [
	(q^5-q^3+q)*CycloSum(R(1), S(0)),
	(-q^3+q)*CycloSum(R(1), S(0)),
	(q)*CycloSum(R(1), S(0)),
	(q^2+q)*CycloSum(R(1), S(0)),
	(-q^2+q)*CycloSum(R(1), S(0)),
	(q)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	(q)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	(q)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	(q^2+q-1)*CycloSum(R(1), S(0)),
	(q-1)*CycloSum(R(1), S(0)),
	-CycloSum(R(1), S(0)),
	(q)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(1), S(0)),
	-CycloSum(R(1), S(0)),
	-CycloSum(R(1), S(0)),
	-CycloSum(R(1), S(0)),
	(-q^2+q+1)*CycloSum(R(1), S(0)),
	(q+1)*CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	(q)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(1), S(0)),
	(-2)*CycloSum(R(1), S(0)),
	(2)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	-CycloSum(R(1), S(0))] [
	(q^3*(q+1)^2*(q^4-q^2+1)*1//2)*CycloSum(R(1), S(0)),
	(q^3*(-q^3+2*q+1)*1//2)*CycloSum(R(1), S(0)),
	(q^3*(q+1)*1//2)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	(q^3)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	((q^4+q^3+q+1)*1//2)*CycloSum(R(1), S(0)),
	((q^3+1)*1//2)*CycloSum(R(1), S(0)),
	((q+1)*1//2)*CycloSum(R(1), S(0)),
	((-q^2+1)*1//2)*CycloSum(R(1), S(0)),
	((1+q^2)*1//2)*CycloSum(R(1), S(0)),
	(q^3+1)*CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	(q^2+q)*CycloSum(R(1), S(0)),
	(q)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	(q+1)*CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	(2)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	(q^3+q^2-q-1)*CycloSum(R(1), S(0)),
	(-q-1)*CycloSum(R(1), S(0)),
	-CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	-CycloSum(R(1), S(0)),
	(-3)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0))] [
	(q^3*(q^3+1)^2*1//2)*CycloSum(R(1), S(0)),
	(q^3*(q^3+1)*1//2)*CycloSum(R(1), S(0)),
	(q^3*(q+1)*1//2)*CycloSum(R(1), S(0)),
	(q^3)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	((q^4+q^3+q+1)*1//2)*CycloSum(R(1), S(0)),
	((q^3+1)*1//2)*CycloSum(R(1), S(0)),
	((q+1)*1//2)*CycloSum(R(1), S(0)),
	((q^2+1)*1//2)*CycloSum(R(1), S(0)),
	((1-q^2)*1//2)*CycloSum(R(1), S(0)),
	(q^3+1)*CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	(q^3+1)*CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	(q+1)*CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	(2)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	(2)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	-CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0))] [
	(q^3*(q^3-1)^2*1//2)*CycloSum(R(1), S(0)),
	(q^3*(-q^3+1)*1//2)*CycloSum(R(1), S(0)),
	(q^3*(-q+1)*1//2)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	(q^3)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	((-q^4+q^3+q-1)*1//2)*CycloSum(R(1), S(0)),
	((q^3-1)*1//2)*CycloSum(R(1), S(0)),
	((q-1)*1//2)*CycloSum(R(1), S(0)),
	((q^2-1)*1//2)*CycloSum(R(1), S(0)),
	((-1-q^2)*1//2)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	(q^3-1)*CycloSum(R(1), S(0)),
	-CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	(q^3-1)*CycloSum(R(1), S(0)),
	-CycloSum(R(1), S(0)),
	-CycloSum(R(1), S(0)),
	(q-1)*CycloSum(R(1), S(0)),
	-CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	(-2)*CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	(-2)*CycloSum(R(1), S(0))] [
	(q^3*(q-1)^2*(q^4-q^2+1)*1//2)*CycloSum(R(1), S(0)),
	(q^3*(q^3-2*q+1)*1//2)*CycloSum(R(1), S(0)),
	(q^3*(-q+1)*1//2)*CycloSum(R(1), S(0)),
	(q^3)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	((-q^4+q^3+q-1)*1//2)*CycloSum(R(1), S(0)),
	((q^3-1)*1//2)*CycloSum(R(1), S(0)),
	((q-1)*1//2)*CycloSum(R(1), S(0)),
	((-q^2-1)*1//2)*CycloSum(R(1), S(0)),
	((q^2-1)*1//2)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	(q^3-q^2-q+1)*CycloSum(R(1), S(0)),
	(-q+1)*CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	(q^3-1)*CycloSum(R(1), S(0)),
	-CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	(-q^2+q)*CycloSum(R(1), S(0)),
	(q)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	(q-1)*CycloSum(R(1), S(0)),
	-CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	(3)*CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	(-2)*CycloSum(R(1), S(0))] [
	(q^11-q^9+q^7)*CycloSum(R(1), S(0)),
	(q^7)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	(q^3)*CycloSum(R(1), S(0)),
	(q^3)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	(q^3)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	(-q^3+q^2+q)*CycloSum(R(1), S(0)),
	(q)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	(q^3)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(1), S(0)),
	(-q^3-q^2+q)*CycloSum(R(1), S(0)),
	(q)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	-CycloSum(R(1), S(0)),
	-CycloSum(R(1), S(0)),
	-CycloSum(R(1), S(0)),
	(-2)*CycloSum(R(1), S(0)),
	(2)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	-CycloSum(R(1), S(0))] [
	(q^12)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	(q^4)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	(q^3)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	(q^3)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	(q)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(1), S(0)),
	(-q^3)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	-CycloSum(R(1), S(0)),
	(-q^3)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	(-q)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	-CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0))] [
	(q^8+q^4+1)*CycloSum(R(1), S(0)),
	(q^4+1)*CycloSum(R(1), S(0)),
	(q^4+1)*CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	(-q^3-q+1)*CycloSum(R(1), S(0)),
	(-q^3+1)*CycloSum(R(1), S(0)),
	(-q+1)*CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	q^3*CycloSum(R(1), a*S(1//(2)))+1+CycloSum(R(1), a*S(1//(2))),
	1+CycloSum(R(1), a*S(1//(2))),
	(q^2+q+1)*CycloSum(R(1), S(0)),
	(q+1)*CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	q*CycloSum(R(1), a*S(1//(2)))+1+CycloSum(R(1), a*S(1//(2))),
	1+CycloSum(R(1), a*S(1//(2))),
	CycloSum(R(1), a*S(1//(2)))+CycloSum(R(1), b*S(1//(2)))+CycloSum(R(1), (a+b)*S(1//(2))),
	1-q^3*CycloSum(R(1), a*S(1//(2)))+CycloSum(R(1), a*S(1//(2))),
	1+CycloSum(R(1), a*S(1//(2))),
	CycloSum(R(1), a*S(1//(2))),
	(q^2-q+1)*CycloSum(R(1), S(0)),
	(-q+1)*CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	1-q*CycloSum(R(1), a*S(1//(2)))+CycloSum(R(1), a*S(1//(2))),
	1+CycloSum(R(1), a*S(1//(2))),
	CycloSum(R(1), a*S(1//(2))),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(1), a*S(1//(2)))+CycloSum(R(1), b*S(1//(2)))+CycloSum(R(1), (a+b)*S(1//(2)))] [
	(q^9+q^5+q)*CycloSum(R(1), S(0)),
	(q)*CycloSum(R(1), S(0)),
	(q^3+q)*CycloSum(R(1), S(0)),
	(q^3+q^2+q)*CycloSum(R(1), S(0)),
	(q^3-q^2+q)*CycloSum(R(1), S(0)),
	(q)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	(-q^4+q-1)*CycloSum(R(1), S(0)),
	-CycloSum(R(1), S(0)),
	(q-1)*CycloSum(R(1), S(0)),
	-CycloSum(R(1), S(0)),
	-CycloSum(R(1), S(0)),
	q^3*CycloSum(R(1), a*S(1//(2)))+1+CycloSum(R(1), a*S(1//(2))),
	1+CycloSum(R(1), a*S(1//(2))),
	(q^3+q^2+q)*CycloSum(R(1), S(0)),
	(q)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	q+q*CycloSum(R(1), a*S(1//(2)))+CycloSum(R(1), a*S(1//(2))),
	CycloSum(R(1), a*S(1//(2))),
	CycloSum(R(1), a*S(1//(2)))+CycloSum(R(1), b*S(1//(2)))+CycloSum(R(1), (a+b)*S(1//(2))),
	-1+q^3*CycloSum(R(1), a*S(1//(2)))-CycloSum(R(1), a*S(1//(2))),
	-1-CycloSum(R(1), a*S(1//(2))),
	-CycloSum(R(1), a*S(1//(2))),
	(q^3-q^2+q)*CycloSum(R(1), S(0)),
	(q)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	q+q*CycloSum(R(1), a*S(1//(2)))-CycloSum(R(1), a*S(1//(2))),
	-CycloSum(R(1), a*S(1//(2))),
	CycloSum(R(1), a*S(1//(2))),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	-CycloSum(R(1), a*S(1//(2)))-CycloSum(R(1), b*S(1//(2)))-CycloSum(R(1), (a+b)*S(1//(2)))] [
	(q^11+q^7+q^3)*CycloSum(R(1), S(0)),
	(q^7+q^3)*CycloSum(R(1), S(0)),
	(q^3)*CycloSum(R(1), S(0)),
	(q^3)*CycloSum(R(1), S(0)),
	(q^3)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	(-q^4+q^3-1)*CycloSum(R(1), S(0)),
	(q^3-1)*CycloSum(R(1), S(0)),
	-CycloSum(R(1), S(0)),
	-CycloSum(R(1), S(0)),
	-CycloSum(R(1), S(0)),
	q^3+q^3*CycloSum(R(1), a*S(1//(2)))+CycloSum(R(1), a*S(1//(2))),
	CycloSum(R(1), a*S(1//(2))),
	(q^2+q+1)*CycloSum(R(1), S(0)),
	(q+1)*CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	q*CycloSum(R(1), a*S(1//(2)))+1+CycloSum(R(1), a*S(1//(2))),
	1+CycloSum(R(1), a*S(1//(2))),
	CycloSum(R(1), a*S(1//(2)))+CycloSum(R(1), b*S(1//(2)))+CycloSum(R(1), (a+b)*S(1//(2))),
	q^3+q^3*CycloSum(R(1), a*S(1//(2)))-CycloSum(R(1), a*S(1//(2))),
	-CycloSum(R(1), a*S(1//(2))),
	CycloSum(R(1), a*S(1//(2))),
	(-1-q^2+q)*CycloSum(R(1), S(0)),
	(q-1)*CycloSum(R(1), S(0)),
	-CycloSum(R(1), S(0)),
	-1+q*CycloSum(R(1), a*S(1//(2)))-CycloSum(R(1), a*S(1//(2))),
	-1-CycloSum(R(1), a*S(1//(2))),
	-CycloSum(R(1), a*S(1//(2))),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	-CycloSum(R(1), a*S(1//(2)))-CycloSum(R(1), b*S(1//(2)))-CycloSum(R(1), (a+b)*S(1//(2)))] [
	(q^12+q^8+q^4)*CycloSum(R(1), S(0)),
	(q^4)*CycloSum(R(1), S(0)),
	(q^4)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	(q^4-q^3-q)*CycloSum(R(1), S(0)),
	(-q^3)*CycloSum(R(1), S(0)),
	(-q)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	q^3+q^3*CycloSum(R(1), a*S(1//(2)))+CycloSum(R(1), a*S(1//(2))),
	CycloSum(R(1), a*S(1//(2))),
	(q^3+q^2+q)*CycloSum(R(1), S(0)),
	(q)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	q+q*CycloSum(R(1), a*S(1//(2)))+CycloSum(R(1), a*S(1//(2))),
	CycloSum(R(1), a*S(1//(2))),
	CycloSum(R(1), a*S(1//(2)))+CycloSum(R(1), b*S(1//(2)))+CycloSum(R(1), (a+b)*S(1//(2))),
	-q^3-q^3*CycloSum(R(1), a*S(1//(2)))+CycloSum(R(1), a*S(1//(2))),
	CycloSum(R(1), a*S(1//(2))),
	-CycloSum(R(1), a*S(1//(2))),
	(-q^3+q^2-q)*CycloSum(R(1), S(0)),
	(-q)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	-q-q*CycloSum(R(1), a*S(1//(2)))+CycloSum(R(1), a*S(1//(2))),
	CycloSum(R(1), a*S(1//(2))),
	-CycloSum(R(1), a*S(1//(2))),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(1), a*S(1//(2)))+CycloSum(R(1), b*S(1//(2)))+CycloSum(R(1), (a+b)*S(1//(2)))] [
	((q+1)*(q^2+q+1)*(q^2-q+1)*(q^4-q^2+1))*CycloSum(R(1), S(0)),
	(q^4+q+1)*CycloSum(R(1), S(0)),
	((q^2-q+1)*(q+1)^2)*CycloSum(R(1), S(0)),
	((q+1)*(q^2+1))*CycloSum(R(1), S(0)),
	(q^3-q^2+q+1)*CycloSum(R(1), S(0)),
	(q+1)*CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	(q+1)*(CycloSum(R(1), k*S(1//(2)))*q^3+1+CycloSum(R(1), k*S(1//(2)))),
	CycloSum(R(1), k*S(1//(2)))*q^3+1+CycloSum(R(1), k*S(1//(2))),
	(1+CycloSum(R(1), k*S(1//(2))))*(q+1),
	1+CycloSum(R(1), k*S(1//(2))),
	1+CycloSum(R(1), k*S(1//(2))),
	CycloSum(R(1), (2*a*k)*S(1//(q-1)))+CycloSum(R(1), (-a*k)*S(1//(q-1)))*q^3+CycloSum(R(1), (-a*k)*S(1//(q-1)))+q^3*CycloSum(R(1), (a*k)*S(1//(q-1)))+CycloSum(R(1), (a*k)*S(1//(q-1)))+CycloSum(R(1), (-2*a*k)*S(1//(q-1))),
	CycloSum(R(1), (2*a*k)*S(1//(q-1)))+CycloSum(R(1), (-a*k)*S(1//(q-1)))+CycloSum(R(1), (a*k)*S(1//(q-1)))+CycloSum(R(1), (-2*a*k)*S(1//(q-1))),
	((q+1)*(q^2+q+1))*CycloSum(R(1), S(0)),
	(2*q+1)*CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	(1+CycloSum(R(1), (a*k)*S(1//(q-1)))+CycloSum(R(1), (-a*k)*S(1//(q-1))))*(q+1),
	1+CycloSum(R(1), (a*k)*S(1//(q-1)))+CycloSum(R(1), (-a*k)*S(1//(q-1))),
	CycloSum(R(1), (b*k)*S(1//(q-1)))+CycloSum(R(1), (-b*k)*S(1//(q-1)))+CycloSum(R(1), ((a-b)*k)*S(1//(q-1)))+CycloSum(R(1), (-(a-b)*k)*S(1//(q-1)))+CycloSum(R(1), (-(a-2*b)*k)*S(1//(q-1)))+CycloSum(R(1), ((a-2*b)*k)*S(1//(q-1))),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	((q+1)*(q^2-q+1))*CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	(q+1)*CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(1), (a*k)*S(1//(q-1)))+CycloSum(R(1), (-a*k)*S(1//(q-1))),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0))] [
	(q^3*(q+1)*(q^2-q+1)*(q^2+q+1)*(q^4-q^2+1))*CycloSum(R(1), S(0)),
	(q^3*(q^4+q+1))*CycloSum(R(1), S(0)),
	(q^3*(q+1))*CycloSum(R(1), S(0)),
	(q^3)*CycloSum(R(1), S(0)),
	(q^3)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	(q+1)*(CycloSum(R(1), k*S(1//(2)))*q^3+q^3+CycloSum(R(1), k*S(1//(2)))),
	CycloSum(R(1), k*S(1//(2)))*q^3+q^3+CycloSum(R(1), k*S(1//(2))),
	CycloSum(R(1), k*S(1//(2)))*(q+1),
	CycloSum(R(1), k*S(1//(2))),
	CycloSum(R(1), k*S(1//(2))),
	CycloSum(R(1), (2*a*k)*S(1//(q-1)))*q^3+CycloSum(R(1), (-a*k)*S(1//(q-1)))*q^3+CycloSum(R(1), (-a*k)*S(1//(q-1)))+q^3*CycloSum(R(1), (a*k)*S(1//(q-1)))+CycloSum(R(1), (a*k)*S(1//(q-1)))+CycloSum(R(1), (-2*a*k)*S(1//(q-1)))*q^3,
	CycloSum(R(1), (a*k)*S(1//(q-1)))+CycloSum(R(1), (-a*k)*S(1//(q-1))),
	((q+1)*(q^2+q+1))*CycloSum(R(1), S(0)),
	(2*q+1)*CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	(1+CycloSum(R(1), (a*k)*S(1//(q-1)))+CycloSum(R(1), (-a*k)*S(1//(q-1))))*(q+1),
	1+CycloSum(R(1), (a*k)*S(1//(q-1)))+CycloSum(R(1), (-a*k)*S(1//(q-1))),
	CycloSum(R(1), (b*k)*S(1//(q-1)))+CycloSum(R(1), (-b*k)*S(1//(q-1)))+CycloSum(R(1), ((a-b)*k)*S(1//(q-1)))+CycloSum(R(1), (-(a-b)*k)*S(1//(q-1)))+CycloSum(R(1), (-(a-2*b)*k)*S(1//(q-1)))+CycloSum(R(1), ((a-2*b)*k)*S(1//(q-1))),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	(-(q+1)*(q^2-q+1))*CycloSum(R(1), S(0)),
	-CycloSum(R(1), S(0)),
	-CycloSum(R(1), S(0)),
	(-q-1)*CycloSum(R(1), S(0)),
	-CycloSum(R(1), S(0)),
	-CycloSum(R(1), (a*k)*S(1//(q-1)))-CycloSum(R(1), (-a*k)*S(1//(q-1))),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0))] [
	((q+1)*(q^4-q^2+1)*(q^2-q+1)^2)*CycloSum(R(1), S(0)),
	((q+1)*(q^2-q+1)*(q^3-q+1))*CycloSum(R(1), S(0)),
	(q^3-q+1)*CycloSum(R(1), S(0)),
	(2*q^3-q^2-q+1)*CycloSum(R(1), S(0)),
	(q^2-q+1)*CycloSum(R(1), S(0)),
	(-q+1)*CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	((q+1)*(q^2-q+1))*CycloSum(R(1), S(0)),
	((q+1)*(q^2-q+1))*CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	((q+1)*(q^2-q+1))*CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(1), (-a*k)*S(1//(q^2+q+1)))*q^3-CycloSum(R(1), (-a*k)*S(1//(q^2+q+1)))*q^2-CycloSum(R(1), (-a*k)*S(1//(q^2+q+1)))*q+CycloSum(R(1), (-a*k)*S(1//(q^2+q+1)))+CycloSum(R(1), ((2*q+1)*a*k)*S(1//(q^2+q+1)))+CycloSum(R(1), (a*k)*S(1//(q^2+q+1)))*q^3-CycloSum(R(1), (a*k)*S(1//(q^2+q+1)))*q^2-CycloSum(R(1), (a*k)*S(1//(q^2+q+1)))*q+CycloSum(R(1), (a*k)*S(1//(q^2+q+1)))+CycloSum(R(1), (-(2*q+1)*a*k)*S(1//(q^2+q+1))),
	CycloSum(R(1), (-(2*q+1)*a*k)*S(1//(q^2+q+1)))+CycloSum(R(1), ((2*q+1)*a*k)*S(1//(q^2+q+1)))-CycloSum(R(1), (-a*k)*S(1//(q^2+q+1)))*q+CycloSum(R(1), (-a*k)*S(1//(q^2+q+1)))-CycloSum(R(1), (a*k)*S(1//(q^2+q+1)))*q+CycloSum(R(1), (a*k)*S(1//(q^2+q+1))),
	CycloSum(R(1), (-(2*q+1)*a*k)*S(1//(q^2+q+1)))+CycloSum(R(1), ((2*q+1)*a*k)*S(1//(q^2+q+1)))+CycloSum(R(1), (-a*k)*S(1//(q^2+q+1)))+CycloSum(R(1), (a*k)*S(1//(q^2+q+1))),
	CycloSum(R(1), (-a*k*q)*S(1//(q^2+q+1)))+CycloSum(R(1), (a*k*q)*S(1//(q^2+q+1))),
	CycloSum(R(1), (-a*k*q)*S(1//(q^2+q+1)))+CycloSum(R(1), (a*k*q)*S(1//(q^2+q+1))),
	CycloSum(R(1), (-a*k*q)*S(1//(q^2+q+1)))+CycloSum(R(1), (a*k*q)*S(1//(q^2+q+1))),
	((q+1)*(q^2-q+1))*CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(1), (-(q+1)*a*k)*S(1//(q^2+q+1)))+CycloSum(R(1), ((q+1)*a*k)*S(1//(q^2+q+1))),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(1), (a*k)*S(1//(q^2+q+1)))+CycloSum(R(1), (-a*k)*S(1//(q^2+q+1)))+CycloSum(R(1), (-b*k)*S(1//(q^2+q+1)))+CycloSum(R(1), (b*k)*S(1//(q^2+q+1)))+CycloSum(R(1), (-k*(a*q+a-b*q))*S(1//(q^2+q+1)))+CycloSum(R(1), (-k*(a*q+b*q+b))*S(1//(q^2+q+1)))+CycloSum(R(1), (k*(a*q+a-b*q))*S(1//(q^2+q+1)))+CycloSum(R(1), (k*(a*q+b*q+b))*S(1//(q^2+q+1))),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0))] [
	(q*(q^4-q^2+1)*(q+1)^2*(q^2-q+1)^2)*CycloSum(R(1), S(0)),
	(q*(q+1)*(q^2-q+1)*(q^3-q^2+1))*CycloSum(R(1), S(0)),
	(q*(q+1)*(q^2-q+1))*CycloSum(R(1), S(0)),
	(-q*(q^2-q-1))*CycloSum(R(1), S(0)),
	(q*(q^2-q+1))*CycloSum(R(1), S(0)),
	(q)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	((q^2-q+1)*(q+1)^2)*CycloSum(R(1), S(0)),
	((q+1)*(q^2-q+1))*CycloSum(R(1), S(0)),
	(q+1)*CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	(2*(q+1)*(q^2-q+1))*CycloSum(R(1), S(0)),
	(2)*CycloSum(R(1), S(0)),
	-(q+1)*(CycloSum(R(1), (-a*k)*S(1//(q^2+q+1)))*q^2+CycloSum(R(1), (a*k)*S(1//(q^2+q+1)))*q^2-CycloSum(R(1), (-(2*q+1)*a*k)*S(1//(q^2+q+1)))*q-CycloSum(R(1), ((2*q+1)*a*k)*S(1//(q^2+q+1)))*q-2*CycloSum(R(1), (-a*k)*S(1//(q^2+q+1)))*q-2*CycloSum(R(1), (a*k)*S(1//(q^2+q+1)))*q+CycloSum(R(1), (-a*k)*S(1//(q^2+q+1)))+CycloSum(R(1), (a*k)*S(1//(q^2+q+1)))),
	CycloSum(R(1), (-(2*q+1)*a*k)*S(1//(q^2+q+1)))*q+CycloSum(R(1), ((2*q+1)*a*k)*S(1//(q^2+q+1)))*q+CycloSum(R(1), (-a*k)*S(1//(q^2+q+1)))*q-CycloSum(R(1), (-a*k)*S(1//(q^2+q+1)))+CycloSum(R(1), (a*k)*S(1//(q^2+q+1)))*q-CycloSum(R(1), (a*k)*S(1//(q^2+q+1))),
	-CycloSum(R(1), (a*k)*S(1//(q^2+q+1)))-CycloSum(R(1), (-a*k)*S(1//(q^2+q+1))),
	(CycloSum(R(1), (-a*k*q)*S(1//(q^2+q+1)))+CycloSum(R(1), (a*k*q)*S(1//(q^2+q+1))))*(q+1),
	CycloSum(R(1), (-a*k*q)*S(1//(q^2+q+1)))+CycloSum(R(1), (a*k*q)*S(1//(q^2+q+1))),
	2*CycloSum(R(1), (-a*k*q)*S(1//(q^2+q+1)))+2*CycloSum(R(1), (a*k*q)*S(1//(q^2+q+1))),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	-CycloSum(R(1), (a*k)*S(1//(q^2+q+1)))-CycloSum(R(1), (-a*k)*S(1//(q^2+q+1)))-CycloSum(R(1), (-b*k)*S(1//(q^2+q+1)))-CycloSum(R(1), (b*k)*S(1//(q^2+q+1)))-CycloSum(R(1), (-k*(a*q+a-b*q))*S(1//(q^2+q+1)))-CycloSum(R(1), (-k*(a*q+b*q+b))*S(1//(q^2+q+1)))-CycloSum(R(1), (k*(a*q+a-b*q))*S(1//(q^2+q+1)))-CycloSum(R(1), (k*(a*q+b*q+b))*S(1//(q^2+q+1))),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0))] [
	(q^3*(q+1)*(q^4-q^2+1)*(q^2-q+1)^2)*CycloSum(R(1), S(0)),
	(-q^3*(q-1)*(q+1)*(q^2-q+1))*CycloSum(R(1), S(0)),
	(q^3)*CycloSum(R(1), S(0)),
	(2*q^3)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	(q*(q+1)*(q^2-q+1))*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	(q)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	((q+1)*(q^2-q+1))*CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(1), (-a*k)*S(1//(q^2+q+1)))*q^3-CycloSum(R(1), (-a*k)*S(1//(q^2+q+1)))*q^2-CycloSum(R(1), (-a*k)*S(1//(q^2+q+1)))*q+CycloSum(R(1), (-a*k)*S(1//(q^2+q+1)))+CycloSum(R(1), (a*k)*S(1//(q^2+q+1)))*q^3-CycloSum(R(1), (a*k)*S(1//(q^2+q+1)))*q^2-CycloSum(R(1), (a*k)*S(1//(q^2+q+1)))*q+CycloSum(R(1), (a*k)*S(1//(q^2+q+1)))+CycloSum(R(1), (-(2*q+1)*a*k)*S(1//(q^2+q+1)))*q^3+CycloSum(R(1), ((2*q+1)*a*k)*S(1//(q^2+q+1)))*q^3,
	-(CycloSum(R(1), (a*k)*S(1//(q^2+q+1)))+CycloSum(R(1), (-a*k)*S(1//(q^2+q+1))))*(q-1),
	CycloSum(R(1), (a*k)*S(1//(q^2+q+1)))+CycloSum(R(1), (-a*k)*S(1//(q^2+q+1))),
	q*(CycloSum(R(1), (-a*k*q)*S(1//(q^2+q+1)))+CycloSum(R(1), (a*k*q)*S(1//(q^2+q+1)))),
	CycloSum(R(0), S(0)),
	CycloSum(R(1), (-a*k*q)*S(1//(q^2+q+1)))+CycloSum(R(1), (a*k*q)*S(1//(q^2+q+1))),
	(-(q+1)*(q^2-q+1))*CycloSum(R(1), S(0)),
	-CycloSum(R(1), S(0)),
	-CycloSum(R(1), (-(q+1)*a*k)*S(1//(q^2+q+1)))-CycloSum(R(1), ((q+1)*a*k)*S(1//(q^2+q+1))),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(1), (a*k)*S(1//(q^2+q+1)))+CycloSum(R(1), (-a*k)*S(1//(q^2+q+1)))+CycloSum(R(1), (-b*k)*S(1//(q^2+q+1)))+CycloSum(R(1), (b*k)*S(1//(q^2+q+1)))+CycloSum(R(1), (-k*(a*q+a-b*q))*S(1//(q^2+q+1)))+CycloSum(R(1), (-k*(a*q+b*q+b))*S(1//(q^2+q+1)))+CycloSum(R(1), (k*(a*q+a-b*q))*S(1//(q^2+q+1)))+CycloSum(R(1), (k*(a*q+b*q+b))*S(1//(q^2+q+1))),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0))] [
	((q+1)*(q^2+q+1)*(q^4-q^2+1)*(q^2-q+1)^2)*CycloSum(R(1), S(0)),
	((q+1)*(q^2-q+1)*(q^4+1))*CycloSum(R(1), S(0)),
	(q^4+q^3+1)*CycloSum(R(1), S(0)),
	((q+1)*(q^2-q+1))*CycloSum(R(1), S(0)),
	((q+1)*(q^2-q+1))*CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	(q+1)*(q^2-q+1)*(CycloSum(R(1), k*S(1//(2)))*q+1+CycloSum(R(1), k*S(1//(2)))),
	(q+1)*(q^2-q+1)*(1+CycloSum(R(1), k*S(1//(2)))),
	CycloSum(R(1), k*S(1//(2)))*q+1+CycloSum(R(1), k*S(1//(2))),
	1+CycloSum(R(1), k*S(1//(2))),
	1+CycloSum(R(1), k*S(1//(2))),
	(q+1)*(q^2-q+1)*(1+CycloSum(R(1), (a*k)*S(1//(q-1)))+CycloSum(R(1), (-a*k)*S(1//(q-1)))),
	1+CycloSum(R(1), (a*k)*S(1//(q-1)))+CycloSum(R(1), (-a*k)*S(1//(q-1))),
	(q^2+q+1)*(CycloSum(R(1), (a*k)*S(1//(q^2+q+1)))+CycloSum(R(1), (-a*k)*S(1//(q^2+q+1)))),
	(CycloSum(R(1), (a*k)*S(1//(q^2+q+1)))+CycloSum(R(1), (-a*k)*S(1//(q^2+q+1))))*(q+1),
	CycloSum(R(1), (a*k)*S(1//(q^2+q+1)))+CycloSum(R(1), (-a*k)*S(1//(q^2+q+1))),
	q*CycloSum(R(1), (a*k)*S(1//(q^3-1)))+CycloSum(R(1), (-a*k)*S(1//(q^3-1)))*q+CycloSum(R(1), (a*k)*S(1//(q^3-1)))+CycloSum(R(1), (-a*k)*S(1//(q^3-1)))+CycloSum(R(1), (a*(q+1)*k*q)*S(1//(q^3-1)))+CycloSum(R(1), (-a*(q+1)*k*q)*S(1//(q^3-1))),
	CycloSum(R(1), (a*(q+1)*k*q)*S(1//(q^3-1)))+CycloSum(R(1), (a*k)*S(1//(q^3-1)))+CycloSum(R(1), (-a*k)*S(1//(q^3-1)))+CycloSum(R(1), (-a*(q+1)*k*q)*S(1//(q^3-1))),
	CycloSum(R(1), (a*k)*S(1//(q^3-1)))+CycloSum(R(1), (-a*k)*S(1//(q^3-1)))+CycloSum(R(1), ((-a+b*q^2+b*q+b)*k)*S(1//(q^3-1)))+CycloSum(R(1), (k*(-b*q^2-b*q-b+a*q^2+a*q))*S(1//(q^3-1)))+CycloSum(R(1), (-k*(-b*q^2-b*q-b+a*q^2+a*q))*S(1//(q^3-1)))+CycloSum(R(1), (-(-a+b*q^2+b*q+b)*k)*S(1//(q^3-1))),
	((q+1)*(q^2-q+1))*CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(1), (-a*k*q)*S(1//(q^3-1)))+CycloSum(R(1), (a*k*q)*S(1//(q^3-1))),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0))] [
	(q*(q+1)*(q^2+q+1)*(q^4-q^2+1)*(q^2-q+1)^2)*CycloSum(R(1), S(0)),
	(q*(q+1)*(q^2-q+1))*CycloSum(R(1), S(0)),
	(q*(q^3+1+q^2))*CycloSum(R(1), S(0)),
	(q*(q^2+q+1))*CycloSum(R(1), S(0)),
	(q*(q^2-q+1))*CycloSum(R(1), S(0)),
	(q)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	(q+1)*(q^2-q+1)*(q+CycloSum(R(1), k*S(1//(2)))*q+CycloSum(R(1), k*S(1//(2)))),
	(q+1)*(q^2-q+1)*CycloSum(R(1), k*S(1//(2))),
	q+CycloSum(R(1), k*S(1//(2)))*q+CycloSum(R(1), k*S(1//(2))),
	CycloSum(R(1), k*S(1//(2))),
	CycloSum(R(1), k*S(1//(2))),
	(q+1)*(q^2-q+1)*(1+CycloSum(R(1), (a*k)*S(1//(q-1)))+CycloSum(R(1), (-a*k)*S(1//(q-1)))),
	1+CycloSum(R(1), (a*k)*S(1//(q-1)))+CycloSum(R(1), (-a*k)*S(1//(q-1))),
	q*(q^2+q+1)*(CycloSum(R(1), (a*k)*S(1//(q^2+q+1)))+CycloSum(R(1), (-a*k)*S(1//(q^2+q+1)))),
	q*(CycloSum(R(1), (a*k)*S(1//(q^2+q+1)))+CycloSum(R(1), (-a*k)*S(1//(q^2+q+1)))),
	CycloSum(R(0), S(0)),
	q*CycloSum(R(1), (a*k)*S(1//(q^3-1)))+CycloSum(R(1), (-a*k)*S(1//(q^3-1)))*q+q*CycloSum(R(1), (a*(q+1)*k*q)*S(1//(q^3-1)))+CycloSum(R(1), (-a*(q+1)*k*q)*S(1//(q^3-1)))*q+CycloSum(R(1), (a*k)*S(1//(q^3-1)))+CycloSum(R(1), (-a*k)*S(1//(q^3-1))),
	CycloSum(R(1), (a*k)*S(1//(q^3-1)))+CycloSum(R(1), (-a*k)*S(1//(q^3-1))),
	CycloSum(R(1), (a*k)*S(1//(q^3-1)))+CycloSum(R(1), (-a*k)*S(1//(q^3-1)))+CycloSum(R(1), ((-a+b*q^2+b*q+b)*k)*S(1//(q^3-1)))+CycloSum(R(1), (k*(-b*q^2-b*q-b+a*q^2+a*q))*S(1//(q^3-1)))+CycloSum(R(1), (-k*(-b*q^2-b*q-b+a*q^2+a*q))*S(1//(q^3-1)))+CycloSum(R(1), (-(-a+b*q^2+b*q+b)*k)*S(1//(q^3-1))),
	(-(q+1)*(q^2-q+1))*CycloSum(R(1), S(0)),
	-CycloSum(R(1), S(0)),
	-CycloSum(R(1), (-a*k*q)*S(1//(q^3-1)))-CycloSum(R(1), (a*k*q)*S(1//(q^3-1))),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0))] [
	((q^2+q+1)*(q^4-q^2+1)*(q+1)^2*(q^2-q+1)^2)*CycloSum(R(1), S(0)),
	((q+1)*(q^2-q+1)*(q^4+q+1))*CycloSum(R(1), S(0)),
	((q+1)*(2*q^3+1))*CycloSum(R(1), S(0)),
	(2*q^3+q^2+q+1)*CycloSum(R(1), S(0)),
	((2*q+1)*(q^2-q+1))*CycloSum(R(1), S(0)),
	(q+1)*CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	(q+1)*(q^3+1)*(CycloSum(R(1), (l)*S(1//(2)))+CycloSum(R(1), (k+l)*S(1//(2)))+CycloSum(R(1), (k)*S(1//(2)))),
	(q^3+1)*(CycloSum(R(1), (l)*S(1//(2)))+CycloSum(R(1), (k+l)*S(1//(2)))+CycloSum(R(1), (k)*S(1//(2)))),
	(q+1)*(CycloSum(R(1), (l)*S(1//(2)))+CycloSum(R(1), (k+l)*S(1//(2)))+CycloSum(R(1), (k)*S(1//(2)))),
	CycloSum(R(1), (l)*S(1//(2)))+CycloSum(R(1), (k+l)*S(1//(2)))+CycloSum(R(1), (k)*S(1//(2))),
	CycloSum(R(1), (l)*S(1//(2)))+CycloSum(R(1), (k+l)*S(1//(2)))+CycloSum(R(1), (k)*S(1//(2))),
	(q^3+1)*(CycloSum(R(1), (a*l)*S(1//(q-1)))+CycloSum(R(1), (-a*l)*S(1//(q-1)))+CycloSum(R(1), (a*k+a*l)*S(1//(q-1)))+CycloSum(R(1), (a*k+2*a*l)*S(1//(q-1)))+CycloSum(R(1), (-a*k-a*l)*S(1//(q-1)))+CycloSum(R(1), (-a*k-2*a*l)*S(1//(q-1)))),
	CycloSum(R(1), (a*l)*S(1//(q-1)))+CycloSum(R(1), (-a*l)*S(1//(q-1)))+CycloSum(R(1), (a*k+a*l)*S(1//(q-1)))+CycloSum(R(1), (a*k+2*a*l)*S(1//(q-1)))+CycloSum(R(1), (-a*k-a*l)*S(1//(q-1)))+CycloSum(R(1), (-a*k-2*a*l)*S(1//(q-1))),
	(q+1)*(q^2+q+1)*(CycloSum(R(1), (a*k)*S(1//(q^2+q+1)))+CycloSum(R(1), (-a*k)*S(1//(q^2+q+1)))),
	(2*q+1)*(CycloSum(R(1), (a*k)*S(1//(q^2+q+1)))+CycloSum(R(1), (-a*k)*S(1//(q^2+q+1)))),
	CycloSum(R(1), (a*k)*S(1//(q^2+q+1)))+CycloSum(R(1), (-a*k)*S(1//(q^2+q+1))),
	(q+1)*(CycloSum(R(1), (a*k)*S(1//(q^3-1)))+CycloSum(R(1), (-a*k)*S(1//(q^3-1)))+CycloSum(R(1), (a*k)*S(1//(q^3-1)))*CycloSum(R(1), (a*l)*S(1//(q-1)))+CycloSum(R(1), (-a*k)*S(1//(q^3-1)))*CycloSum(R(1), (-a*l)*S(1//(q-1)))+CycloSum(R(1), ((a*q^2+a*q)*k)*S(1//(q^3-1)))*CycloSum(R(1), (a*l)*S(1//(q-1)))+CycloSum(R(1), ((-a*q^2-a*q)*k)*S(1//(q^3-1)))*CycloSum(R(1), (-a*l)*S(1//(q-1)))),
	CycloSum(R(1), (a*k)*S(1//(q^3-1)))+CycloSum(R(1), (-a*k)*S(1//(q^3-1)))+CycloSum(R(1), (a*k)*S(1//(q^3-1)))*CycloSum(R(1), (a*l)*S(1//(q-1)))+CycloSum(R(1), (-a*k)*S(1//(q^3-1)))*CycloSum(R(1), (-a*l)*S(1//(q-1)))+CycloSum(R(1), ((a*q^2+a*q)*k)*S(1//(q^3-1)))*CycloSum(R(1), (a*l)*S(1//(q-1)))+CycloSum(R(1), ((-a*q^2-a*q)*k)*S(1//(q^3-1)))*CycloSum(R(1), (-a*l)*S(1//(q-1))),
	CycloSum(R(1), (a*k)*S(1//(q^3-1)))*CycloSum(R(1), (b*l)*S(1//(q-1)))+CycloSum(R(1), (-a*k)*S(1//(q^3-1)))*CycloSum(R(1), (-b*l)*S(1//(q-1)))+CycloSum(R(1), (a*k)*S(1//(q^3-1)))*CycloSum(R(1), ((a-b)*l)*S(1//(q-1)))+CycloSum(R(1), (-a*k)*S(1//(q^3-1)))*CycloSum(R(1), ((-a+b)*l)*S(1//(q-1)))+CycloSum(R(1), ((-a+b*q^2+b*q+b)*k)*S(1//(q^3-1)))*CycloSum(R(1), (b*l)*S(1//(q-1)))+CycloSum(R(1), ((-a+b*q^2+b*q+b)*k)*S(1//(q^3-1)))*CycloSum(R(1), ((-a+2*b)*l)*S(1//(q-1)))+CycloSum(R(1), (((a-b)*q^2+(a-b)*q-b)*k)*S(1//(q^3-1)))*CycloSum(R(1), ((a-b)*l)*S(1//(q-1)))+CycloSum(R(1), (((a-b)*q^2+(a-b)*q-b)*k)*S(1//(q^3-1)))*CycloSum(R(1), ((a-2*b)*l)*S(1//(q-1)))+CycloSum(R(1), (((-a+b)*q^2+(-a+b)*q+b)*k)*S(1//(q^3-1)))*CycloSum(R(1), ((-a+2*b)*l)*S(1//(q-1)))+CycloSum(R(1), (((-a+b)*q^2+(-a+b)*q+b)*k)*S(1//(q^3-1)))*CycloSum(R(1), ((-a+b)*l)*S(1//(q-1)))+CycloSum(R(1), ((a-b*q^2-b*q-b)*k)*S(1//(q^3-1)))*CycloSum(R(1), ((a-2*b)*l)*S(1//(q-1)))+CycloSum(R(1), ((a-b*q^2-b*q-b)*k)*S(1//(q^3-1)))*CycloSum(R(1), (-b*l)*S(1//(q-1))),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0))] [
	((q-1)*(q^2+q+1)*(q^2-q+1)*(q^4-q^2+1))*CycloSum(R(1), S(0)),
	(-q^4+q-1)*CycloSum(R(1), S(0)),
	(-(q^2+q+1)*(q-1)^2)*CycloSum(R(1), S(0)),
	(q^2+q-1+q^3)*CycloSum(R(1), S(0)),
	((q-1)*(q^2+1))*CycloSum(R(1), S(0)),
	(q-1)*CycloSum(R(1), S(0)),
	-CycloSum(R(1), S(0)),
	-(q-1)*(CycloSum(R(1), k*S(1//(2)))*q^3-1-CycloSum(R(1), k*S(1//(2)))),
	CycloSum(R(1), k*S(1//(2)))*q^3-1-CycloSum(R(1), k*S(1//(2))),
	(1+CycloSum(R(1), k*S(1//(2))))*(q-1),
	-1-CycloSum(R(1), k*S(1//(2))),
	-1-CycloSum(R(1), k*S(1//(2))),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	((q-1)*(q^2+q+1))*CycloSum(R(1), S(0)),
	-CycloSum(R(1), S(0)),
	-CycloSum(R(1), S(0)),
	(q-1)*CycloSum(R(1), S(0)),
	-CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	q^3*CycloSum(R(1), (-a*k)*S(1//(q+1)))-CycloSum(R(1), (-a*k)*S(1//(q+1)))-CycloSum(R(1), (2*a*k)*S(1//(q+1)))+q^3*CycloSum(R(1), (a*k)*S(1//(q+1)))-CycloSum(R(1), (a*k)*S(1//(q+1)))-CycloSum(R(1), (-2*a*k)*S(1//(q+1))),
	-CycloSum(R(1), (-a*k)*S(1//(q+1)))-CycloSum(R(1), (2*a*k)*S(1//(q+1)))-CycloSum(R(1), (a*k)*S(1//(q+1)))-CycloSum(R(1), (-2*a*k)*S(1//(q+1))),
	-CycloSum(R(1), (a*k)*S(1//(q+1)))-CycloSum(R(1), (-a*k)*S(1//(q+1))),
	((q-1)*(q^2-q+1))*CycloSum(R(1), S(0)),
	(2*q-1)*CycloSum(R(1), S(0)),
	-CycloSum(R(1), S(0)),
	(1+CycloSum(R(1), (a*k)*S(1//(q+1)))+CycloSum(R(1), (-a*k)*S(1//(q+1))))*(q-1),
	-1-CycloSum(R(1), (a*k)*S(1//(q+1)))-CycloSum(R(1), (-a*k)*S(1//(q+1))),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	-CycloSum(R(1), (b*k)*S(1//(q+1)))-CycloSum(R(1), (-b*k)*S(1//(q+1)))-CycloSum(R(1), ((a-b)*k)*S(1//(q+1)))-CycloSum(R(1), (-(a-b)*k)*S(1//(q+1)))-CycloSum(R(1), (-(a-2*b)*k)*S(1//(q+1)))-CycloSum(R(1), ((a-2*b)*k)*S(1//(q+1)))] [
	(q^3*(q-1)*(q^2-q+1)*(q^2+q+1)*(q^4-q^2+1))*CycloSum(R(1), S(0)),
	(-q^3*(q^4-q+1))*CycloSum(R(1), S(0)),
	(q^3*(q-1))*CycloSum(R(1), S(0)),
	(-q^3)*CycloSum(R(1), S(0)),
	(-q^3)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	(q-1)*(CycloSum(R(1), k*S(1//(2)))*q^3+q^3-CycloSum(R(1), k*S(1//(2)))),
	-q^3-CycloSum(R(1), k*S(1//(2)))*q^3+CycloSum(R(1), k*S(1//(2))),
	-(q-1)*CycloSum(R(1), k*S(1//(2))),
	CycloSum(R(1), k*S(1//(2))),
	CycloSum(R(1), k*S(1//(2))),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	((q-1)*(q^2+q+1))*CycloSum(R(1), S(0)),
	-CycloSum(R(1), S(0)),
	-CycloSum(R(1), S(0)),
	(q-1)*CycloSum(R(1), S(0)),
	-CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	-q^3*CycloSum(R(1), (-a*k)*S(1//(q+1)))+CycloSum(R(1), (-a*k)*S(1//(q+1)))-q^3*CycloSum(R(1), (2*a*k)*S(1//(q+1)))-q^3*CycloSum(R(1), (a*k)*S(1//(q+1)))+CycloSum(R(1), (a*k)*S(1//(q+1)))-q^3*CycloSum(R(1), (-2*a*k)*S(1//(q+1))),
	CycloSum(R(1), (a*k)*S(1//(q+1)))+CycloSum(R(1), (-a*k)*S(1//(q+1))),
	-CycloSum(R(1), (a*k)*S(1//(q+1)))-CycloSum(R(1), (-a*k)*S(1//(q+1))),
	(-(q-1)*(q^2-q+1))*CycloSum(R(1), S(0)),
	(-2*q+1)*CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	-(1+CycloSum(R(1), (a*k)*S(1//(q+1)))+CycloSum(R(1), (-a*k)*S(1//(q+1))))*(q-1),
	1+CycloSum(R(1), (a*k)*S(1//(q+1)))+CycloSum(R(1), (-a*k)*S(1//(q+1))),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(1), (b*k)*S(1//(q+1)))+CycloSum(R(1), (-b*k)*S(1//(q+1)))+CycloSum(R(1), ((a-b)*k)*S(1//(q+1)))+CycloSum(R(1), (-(a-b)*k)*S(1//(q+1)))+CycloSum(R(1), (-(a-2*b)*k)*S(1//(q+1)))+CycloSum(R(1), ((a-2*b)*k)*S(1//(q+1)))] [
	((q^4-q^2+1)*(q^2-q+1)^2*(q+1)*(q^2+q+1)*(q-1))*CycloSum(R(1), S(0)),
	(-q^7-q^3+q-1)*CycloSum(R(1), S(0)),
	(q-1)*CycloSum(R(1), S(0)),
	(q^2+q-1)*CycloSum(R(1), S(0)),
	(-q^2+q-1)*CycloSum(R(1), S(0)),
	(q-1)*CycloSum(R(1), S(0)),
	-CycloSum(R(1), S(0)),
	(q^3+1)*(q-1)*CycloSum(R(1), k*S(1//(2))),
	-(q^3+1)*CycloSum(R(1), k*S(1//(2))),
	CycloSum(R(1), k*S(1//(2)))*(q-1),
	-CycloSum(R(1), k*S(1//(2))),
	-CycloSum(R(1), k*S(1//(2))),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	(q^3-1)*(CycloSum(R(1), (a*k)*S(1//(q^2+q+1)))+CycloSum(R(1), (-a*k)*S(1//(q^2+q+1)))),
	-CycloSum(R(1), (a*k)*S(1//(q^2+q+1)))-CycloSum(R(1), (-a*k)*S(1//(q^2+q+1))),
	-CycloSum(R(1), (a*k)*S(1//(q^2+q+1)))-CycloSum(R(1), (-a*k)*S(1//(q^2+q+1))),
	(q-1)*(CycloSum(R(1), (a*k)*S(1//(q^3-1)))+CycloSum(R(1), (-a*k)*S(1//(q^3-1)))),
	-CycloSum(R(1), (a*k)*S(1//(q^3-1)))-CycloSum(R(1), (-a*k)*S(1//(q^3-1))),
	CycloSum(R(0), S(0)),
	-(q^3+1)*(CycloSum(R(1), (a*k)*S(1//(q+1)))+CycloSum(R(1), (-a*k)*S(1//(q+1)))),
	-CycloSum(R(1), (a*k)*S(1//(q+1)))-CycloSum(R(1), (-a*k)*S(1//(q+1))),
	-CycloSum(R(1), (a*k)*S(1//((q+1)*(q^3-1))))-CycloSum(R(1), (-a*k)*S(1//((q+1)*(q^3-1))))-CycloSum(R(1), (a*k*q^3)*S(1//((q+1)*(q^3-1))))-CycloSum(R(1), (-a*k*q^3)*S(1//((q+1)*(q^3-1)))),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0))] [
	((q-1)*(q^4-q^2+1)*(q^2+q+1)^2)*CycloSum(R(1), S(0)),
	(-(q-1)*(q^2+q+1)*(q^3-q-1))*CycloSum(R(1), S(0)),
	(q^3-q-1)*CycloSum(R(1), S(0)),
	(-q^2-q-1)*CycloSum(R(1), S(0)),
	(2*q^3+q^2-q-1)*CycloSum(R(1), S(0)),
	(-q-1)*CycloSum(R(1), S(0)),
	-CycloSum(R(1), S(0)),
	((q-1)*(q^2+q+1))*CycloSum(R(1), S(0)),
	((q-1)*(q^2+q+1))*CycloSum(R(1), S(0)),
	-CycloSum(R(1), S(0)),
	-CycloSum(R(1), S(0)),
	-CycloSum(R(1), S(0)),
	((q-1)*(q^2+q+1))*CycloSum(R(1), S(0)),
	-CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	((q-1)*(q^2+q+1))*CycloSum(R(1), S(0)),
	-CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	-CycloSum(R(1), (-a*(2*q-1)*k)*S(1//(q^2-q+1)))-CycloSum(R(1), (a*(2*q-1)*k)*S(1//(q^2-q+1)))+CycloSum(R(1), (a*k)*S(1//(q^2-q+1)))*q^3+CycloSum(R(1), (a*k)*S(1//(q^2-q+1)))*q^2-CycloSum(R(1), (a*k)*S(1//(q^2-q+1)))*q-CycloSum(R(1), (a*k)*S(1//(q^2-q+1)))+CycloSum(R(1), (-a*k)*S(1//(q^2-q+1)))*q^3+CycloSum(R(1), (-a*k)*S(1//(q^2-q+1)))*q^2-CycloSum(R(1), (-a*k)*S(1//(q^2-q+1)))*q-CycloSum(R(1), (-a*k)*S(1//(q^2-q+1))),
	-CycloSum(R(1), (-a*(2*q-1)*k)*S(1//(q^2-q+1)))-CycloSum(R(1), (a*(2*q-1)*k)*S(1//(q^2-q+1)))-CycloSum(R(1), (a*k)*S(1//(q^2-q+1)))*q-CycloSum(R(1), (a*k)*S(1//(q^2-q+1)))-CycloSum(R(1), (-a*k)*S(1//(q^2-q+1)))*q-CycloSum(R(1), (-a*k)*S(1//(q^2-q+1))),
	-CycloSum(R(1), (-a*(2*q-1)*k)*S(1//(q^2-q+1)))-CycloSum(R(1), (a*(2*q-1)*k)*S(1//(q^2-q+1)))-CycloSum(R(1), (a*k)*S(1//(q^2-q+1)))-CycloSum(R(1), (-a*k)*S(1//(q^2-q+1))),
	-CycloSum(R(1), (-a*k*q)*S(1//(q^2-q+1)))-CycloSum(R(1), (a*k*q)*S(1//(q^2-q+1))),
	-CycloSum(R(1), (-a*k*q)*S(1//(q^2-q+1)))-CycloSum(R(1), (a*k*q)*S(1//(q^2-q+1))),
	-CycloSum(R(1), ((q-1)*a*k)*S(1//(q^2-q+1)))-CycloSum(R(1), (-(q-1)*a*k)*S(1//(q^2-q+1))),
	CycloSum(R(0), S(0)),
	-CycloSum(R(1), (a*k)*S(1//(q^2-q+1)))-CycloSum(R(1), (-a*k)*S(1//(q^2-q+1)))-CycloSum(R(1), (-b*k)*S(1//(q^2-q+1)))-CycloSum(R(1), (b*k)*S(1//(q^2-q+1)))-CycloSum(R(1), (k*(-a-b*q+a*q))*S(1//(q^2-q+1)))-CycloSum(R(1), (k*(-b+b*q+a*q))*S(1//(q^2-q+1)))-CycloSum(R(1), (-k*(-a-b*q+a*q))*S(1//(q^2-q+1)))-CycloSum(R(1), (-k*(-b+b*q+a*q))*S(1//(q^2-q+1))),
	CycloSum(R(0), S(0)),
	-CycloSum(R(1), (-a*k*q)*S(1//(q^2-q+1)))-CycloSum(R(1), (a*k*q)*S(1//(q^2-q+1)))] [
	(q*(q^4-q^2+1)*(q-1)^2*(q^2+q+1)^2)*CycloSum(R(1), S(0)),
	(q*(q-1)*(q^2+q+1)*(q^3+q^2-1))*CycloSum(R(1), S(0)),
	(-q*(q-1)*(q^2+q+1))*CycloSum(R(1), S(0)),
	(q*(q^2+q+1))*CycloSum(R(1), S(0)),
	(-q*(q^2+q-1))*CycloSum(R(1), S(0)),
	(q)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	(-(q^2+q+1)*(q-1)^2)*CycloSum(R(1), S(0)),
	((q-1)*(q^2+q+1))*CycloSum(R(1), S(0)),
	(q-1)*CycloSum(R(1), S(0)),
	-CycloSum(R(1), S(0)),
	-CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	(2*(q-1)*(q^2+q+1))*CycloSum(R(1), S(0)),
	(-2)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	-(q-1)*(CycloSum(R(1), (a*k)*S(1//(q^2-q+1)))*q^2+CycloSum(R(1), (-a*k)*S(1//(q^2-q+1)))*q^2+q*CycloSum(R(1), (a*(2*q-1)*k)*S(1//(q^2-q+1)))+q*CycloSum(R(1), (-a*(2*q-1)*k)*S(1//(q^2-q+1)))+2*CycloSum(R(1), (-a*k)*S(1//(q^2-q+1)))*q+2*CycloSum(R(1), (a*k)*S(1//(q^2-q+1)))*q+CycloSum(R(1), (a*k)*S(1//(q^2-q+1)))+CycloSum(R(1), (-a*k)*S(1//(q^2-q+1)))),
	CycloSum(R(1), (a*k)*S(1//(q^2-q+1)))*q+CycloSum(R(1), (a*k)*S(1//(q^2-q+1)))+q*CycloSum(R(1), (a*(2*q-1)*k)*S(1//(q^2-q+1)))+CycloSum(R(1), (-a*k)*S(1//(q^2-q+1)))*q+CycloSum(R(1), (-a*k)*S(1//(q^2-q+1)))+q*CycloSum(R(1), (-a*(2*q-1)*k)*S(1//(q^2-q+1))),
	CycloSum(R(1), (a*k)*S(1//(q^2-q+1)))+CycloSum(R(1), (-a*k)*S(1//(q^2-q+1))),
	(CycloSum(R(1), (-a*k*q)*S(1//(q^2-q+1)))+CycloSum(R(1), (a*k*q)*S(1//(q^2-q+1))))*(q-1),
	-CycloSum(R(1), (-a*k*q)*S(1//(q^2-q+1)))-CycloSum(R(1), (a*k*q)*S(1//(q^2-q+1))),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(1), (a*k)*S(1//(q^2-q+1)))+CycloSum(R(1), (-a*k)*S(1//(q^2-q+1)))+CycloSum(R(1), (-b*k)*S(1//(q^2-q+1)))+CycloSum(R(1), (b*k)*S(1//(q^2-q+1)))+CycloSum(R(1), (k*(-a-b*q+a*q))*S(1//(q^2-q+1)))+CycloSum(R(1), (k*(-b+b*q+a*q))*S(1//(q^2-q+1)))+CycloSum(R(1), (-k*(-a-b*q+a*q))*S(1//(q^2-q+1)))+CycloSum(R(1), (-k*(-b+b*q+a*q))*S(1//(q^2-q+1))),
	CycloSum(R(0), S(0)),
	-2*CycloSum(R(1), (-a*k*q)*S(1//(q^2-q+1)))-2*CycloSum(R(1), (a*k*q)*S(1//(q^2-q+1)))] [
	(q^3*(q-1)*(q^4-q^2+1)*(q^2+q+1)^2)*CycloSum(R(1), S(0)),
	(q^3*(q-1)*(q+1)*(q^2+q+1))*CycloSum(R(1), S(0)),
	(-q^3)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	(-2*q^3)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	(q*(q-1)*(q^2+q+1))*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	(-q)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	((q-1)*(q^2+q+1))*CycloSum(R(1), S(0)),
	-CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	(-(q-1)*(q^2+q+1))*CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	-CycloSum(R(1), (a*k)*S(1//(q^2-q+1)))*q^2+CycloSum(R(1), (a*k)*S(1//(q^2-q+1)))-CycloSum(R(1), (a*k)*S(1//(q^2-q+1)))*q^3+CycloSum(R(1), (a*k)*S(1//(q^2-q+1)))*q-CycloSum(R(1), (-a*k)*S(1//(q^2-q+1)))*q^2+CycloSum(R(1), (-a*k)*S(1//(q^2-q+1)))-CycloSum(R(1), (-a*k)*S(1//(q^2-q+1)))*q^3+CycloSum(R(1), (-a*k)*S(1//(q^2-q+1)))*q-CycloSum(R(1), (a*(2*q-1)*k)*S(1//(q^2-q+1)))*q^3-CycloSum(R(1), (-a*(2*q-1)*k)*S(1//(q^2-q+1)))*q^3,
	(CycloSum(R(1), (a*k)*S(1//(q^2-q+1)))+CycloSum(R(1), (-a*k)*S(1//(q^2-q+1))))*(q+1),
	CycloSum(R(1), (a*k)*S(1//(q^2-q+1)))+CycloSum(R(1), (-a*k)*S(1//(q^2-q+1))),
	-q*(CycloSum(R(1), (-a*k*q)*S(1//(q^2-q+1)))+CycloSum(R(1), (a*k*q)*S(1//(q^2-q+1)))),
	CycloSum(R(0), S(0)),
	-CycloSum(R(1), ((q-1)*a*k)*S(1//(q^2-q+1)))-CycloSum(R(1), (-(q-1)*a*k)*S(1//(q^2-q+1))),
	CycloSum(R(0), S(0)),
	CycloSum(R(1), (a*k)*S(1//(q^2-q+1)))+CycloSum(R(1), (-a*k)*S(1//(q^2-q+1)))+CycloSum(R(1), (-b*k)*S(1//(q^2-q+1)))+CycloSum(R(1), (b*k)*S(1//(q^2-q+1)))+CycloSum(R(1), (k*(-a-b*q+a*q))*S(1//(q^2-q+1)))+CycloSum(R(1), (k*(-b+b*q+a*q))*S(1//(q^2-q+1)))+CycloSum(R(1), (-k*(-a-b*q+a*q))*S(1//(q^2-q+1)))+CycloSum(R(1), (-k*(-b+b*q+a*q))*S(1//(q^2-q+1))),
	CycloSum(R(0), S(0)),
	CycloSum(R(1), (-a*k*q)*S(1//(q^2-q+1)))+CycloSum(R(1), (a*k*q)*S(1//(q^2-q+1)))] [
	((q-1)*(q^2-q+1)*(q^4-q^2+1)*(q^2+q+1)^2)*CycloSum(R(1), S(0)),
	((q-1)*(q^2+q+1)*(q^4+1))*CycloSum(R(1), S(0)),
	(-1-q^4+q^3)*CycloSum(R(1), S(0)),
	((q-1)*(q^2+q+1))*CycloSum(R(1), S(0)),
	((q-1)*(q^2+q+1))*CycloSum(R(1), S(0)),
	-CycloSum(R(1), S(0)),
	-CycloSum(R(1), S(0)),
	-(q-1)*(q^2+q+1)*(CycloSum(R(1), k*S(1//(2)))*q-CycloSum(R(1), k*S(1//(2)))-1),
	(q-1)*(q^2+q+1)*(1+CycloSum(R(1), k*S(1//(2)))),
	CycloSum(R(1), k*S(1//(2)))*q-CycloSum(R(1), k*S(1//(2)))-1,
	-1-CycloSum(R(1), k*S(1//(2))),
	-1-CycloSum(R(1), k*S(1//(2))),
	((q-1)*(q^2+q+1))*CycloSum(R(1), S(0)),
	-CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	(q-1)*(q^2+q+1)*(1+CycloSum(R(1), (a*k)*S(1//(q+1)))+CycloSum(R(1), (-a*k)*S(1//(q+1)))),
	-1-CycloSum(R(1), (a*k)*S(1//(q+1)))-CycloSum(R(1), (-a*k)*S(1//(q+1))),
	CycloSum(R(0), S(0)),
	-(q^2-q+1)*(CycloSum(R(1), (a*k)*S(1//(q^2-q+1)))+CycloSum(R(1), (-a*k)*S(1//(q^2-q+1)))),
	(CycloSum(R(1), (a*k)*S(1//(q^2-q+1)))+CycloSum(R(1), (-a*k)*S(1//(q^2-q+1))))*(q-1),
	-CycloSum(R(1), (a*k)*S(1//(q^2-q+1)))-CycloSum(R(1), (-a*k)*S(1//(q^2-q+1))),
	-CycloSum(R(1), (-a*(q-1)*q*k)*S(1//(q^3+1)))-CycloSum(R(1), (a*(q-1)*q*k)*S(1//(q^3+1)))+q*CycloSum(R(1), (a*k)*S(1//(q^3+1)))+q*CycloSum(R(1), (-a*k)*S(1//(q^3+1)))-CycloSum(R(1), (a*k)*S(1//(q^3+1)))-CycloSum(R(1), (-a*k)*S(1//(q^3+1))),
	-CycloSum(R(1), (a*(q-1)*q*k)*S(1//(q^3+1)))-CycloSum(R(1), (a*k)*S(1//(q^3+1)))-CycloSum(R(1), (-a*k)*S(1//(q^3+1)))-CycloSum(R(1), (-a*(q-1)*q*k)*S(1//(q^3+1))),
	-CycloSum(R(1), (a*k*q)*S(1//(q^3+1)))-CycloSum(R(1), (-a*k*q)*S(1//(q^3+1))),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	-CycloSum(R(1), (a*k)*S(1//(q^3+1)))-CycloSum(R(1), (-a*k)*S(1//(q^3+1)))-CycloSum(R(1), ((-a+b*q^2-b*q+b)*k)*S(1//(q^3+1)))-CycloSum(R(1), (k*(b*q-b*q^2-a*q-b+a*q^2))*S(1//(q^3+1)))-CycloSum(R(1), (-k*(b*q-b*q^2-a*q-b+a*q^2))*S(1//(q^3+1)))-CycloSum(R(1), (-(-a+b*q^2-b*q+b)*k)*S(1//(q^3+1)))] [
	(q*(q-1)*(q^2-q+1)*(q^4-q^2+1)*(q^2+q+1)^2)*CycloSum(R(1), S(0)),
	(q*(q-1)*(q^2+q+1))*CycloSum(R(1), S(0)),
	(q*(-1+q^3-q^2))*CycloSum(R(1), S(0)),
	(-q*(q^2+q+1))*CycloSum(R(1), S(0)),
	(-q*(q^2-q+1))*CycloSum(R(1), S(0)),
	(-q)*CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	(q-1)*(q^2+q+1)*(CycloSum(R(1), k*S(1//(2)))*q+q-CycloSum(R(1), k*S(1//(2)))),
	-(q-1)*(q^2+q+1)*CycloSum(R(1), k*S(1//(2))),
	-q-CycloSum(R(1), k*S(1//(2)))*q+CycloSum(R(1), k*S(1//(2))),
	CycloSum(R(1), k*S(1//(2))),
	CycloSum(R(1), k*S(1//(2))),
	((q-1)*(q^2+q+1))*CycloSum(R(1), S(0)),
	-CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	-(q-1)*(q^2+q+1)*(1+CycloSum(R(1), (a*k)*S(1//(q+1)))+CycloSum(R(1), (-a*k)*S(1//(q+1)))),
	1+CycloSum(R(1), (a*k)*S(1//(q+1)))+CycloSum(R(1), (-a*k)*S(1//(q+1))),
	CycloSum(R(0), S(0)),
	-q*(q^2-q+1)*(CycloSum(R(1), (a*k)*S(1//(q^2-q+1)))+CycloSum(R(1), (-a*k)*S(1//(q^2-q+1)))),
	-q*(CycloSum(R(1), (a*k)*S(1//(q^2-q+1)))+CycloSum(R(1), (-a*k)*S(1//(q^2-q+1)))),
	CycloSum(R(0), S(0)),
	-q*CycloSum(R(1), (-a*(q-1)*q*k)*S(1//(q^3+1)))-q*CycloSum(R(1), (a*(q-1)*q*k)*S(1//(q^3+1)))-q*CycloSum(R(1), (a*k)*S(1//(q^3+1)))-q*CycloSum(R(1), (-a*k)*S(1//(q^3+1)))+CycloSum(R(1), (a*k)*S(1//(q^3+1)))+CycloSum(R(1), (-a*k)*S(1//(q^3+1))),
	CycloSum(R(1), (a*k)*S(1//(q^3+1)))+CycloSum(R(1), (-a*k)*S(1//(q^3+1))),
	-CycloSum(R(1), (a*k*q)*S(1//(q^3+1)))-CycloSum(R(1), (-a*k*q)*S(1//(q^3+1))),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(1), (a*k)*S(1//(q^3+1)))+CycloSum(R(1), (-a*k)*S(1//(q^3+1)))+CycloSum(R(1), ((-a+b*q^2-b*q+b)*k)*S(1//(q^3+1)))+CycloSum(R(1), (k*(a*q^2-b*q^2-a*q+b*q-b))*S(1//(q^3+1)))+CycloSum(R(1), (-k*(a*q^2-b*q^2-a*q+b*q-b))*S(1//(q^3+1)))+CycloSum(R(1), (-(-a+b*q^2-b*q+b)*k)*S(1//(q^3+1)))] [
	((q^4-q^2+1)*(q^2+q+1)^2*(q-1)*(q^2-q+1)*(q+1))*CycloSum(R(1), S(0)),
	(q^7+q^3-q-1)*CycloSum(R(1), S(0)),
	(-q-1)*CycloSum(R(1), S(0)),
	(-q^2-q-1)*CycloSum(R(1), S(0)),
	(q^2-q-1)*CycloSum(R(1), S(0)),
	(-q-1)*CycloSum(R(1), S(0)),
	-CycloSum(R(1), S(0)),
	CycloSum(R(1), k*S(1//(2)))*(q^3-1)*(q+1),
	CycloSum(R(1), k*S(1//(2)))*(q^3-1),
	-CycloSum(R(1), k*S(1//(2)))*(q+1),
	-CycloSum(R(1), k*S(1//(2))),
	-CycloSum(R(1), k*S(1//(2))),
	(q^3-1)*(CycloSum(R(1), (k*a)*S(1//(q-1)))+CycloSum(R(1), (-k*a)*S(1//(q-1)))),
	-CycloSum(R(1), (k*a)*S(1//(q-1)))-CycloSum(R(1), (-k*a)*S(1//(q-1))),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	-(q^3+1)*(CycloSum(R(1), (k*a)*S(1//(q^2-q+1)))+CycloSum(R(1), (-k*a)*S(1//(q^2-q+1)))),
	-CycloSum(R(1), (k*a)*S(1//(q^2-q+1)))-CycloSum(R(1), (-k*a)*S(1//(q^2-q+1))),
	-CycloSum(R(1), (k*a)*S(1//(q^2-q+1)))-CycloSum(R(1), (-k*a)*S(1//(q^2-q+1))),
	-(q+1)*(CycloSum(R(1), (k*a)*S(1//(q^3+1)))+CycloSum(R(1), (-k*a)*S(1//(q^3+1)))),
	-CycloSum(R(1), (k*a)*S(1//(q^3+1)))-CycloSum(R(1), (-k*a)*S(1//(q^3+1))),
	-CycloSum(R(1), (k*a)*S(1//((q-1)*(q^3+1))))-CycloSum(R(1), (-k*a)*S(1//((q-1)*(q^3+1))))-CycloSum(R(1), (k*a*q^3)*S(1//((q-1)*(q^3+1))))-CycloSum(R(1), (-k*a*q^3)*S(1//((q-1)*(q^3+1)))),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0))] [
	((q-1)^2*(q+1)^2*(q^2-q+1)^2*(q^4-q^2+1))*CycloSum(R(1), S(0)),
	(-(q-1)*(q+1)*(q^2-q+1)*(2*q^3-q^2-q+1))*CycloSum(R(1), S(0)),
	(-(q+1)*(q-1)^3)*CycloSum(R(1), S(0)),
	(5*q^3-2*q^2-2*q+1)*CycloSum(R(1), S(0)),
	(-(q-1)*(q^2-q+1))*CycloSum(R(1), S(0)),
	(-2*q+1)*CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	(q-1)^2*(q+1)*(CycloSum(R(1), (a*(k+l))*S(1//(q^2+q+1)))+CycloSum(R(1), (-a*(k+l))*S(1//(q^2+q+1)))+CycloSum(R(1), (a*(k-l))*S(1//(q^2+q+1)))+CycloSum(R(1), (a*(l-k))*S(1//(q^2+q+1)))+CycloSum(R(1), (a*(k+(2*q+1)*l))*S(1//(q^2+q+1)))+CycloSum(R(1), (a*((-2*q-1)*k+l))*S(1//(q^2+q+1)))+CycloSum(R(1), (a*((2*q+1)*k-l))*S(1//(q^2+q+1)))+CycloSum(R(1), (a*(-k+(-2*q-1)*l))*S(1//(q^2+q+1)))),
	-(q-1)*(CycloSum(R(1), (a*(k+l))*S(1//(q^2+q+1)))+CycloSum(R(1), (-a*(k+l))*S(1//(q^2+q+1)))+CycloSum(R(1), (a*(k-l))*S(1//(q^2+q+1)))+CycloSum(R(1), (a*(l-k))*S(1//(q^2+q+1)))+CycloSum(R(1), (a*(k+(2*q+1)*l))*S(1//(q^2+q+1)))+CycloSum(R(1), (a*((-2*q-1)*k+l))*S(1//(q^2+q+1)))+CycloSum(R(1), (a*((2*q+1)*k-l))*S(1//(q^2+q+1)))+CycloSum(R(1), (a*(-k+(-2*q-1)*l))*S(1//(q^2+q+1)))),
	CycloSum(R(1), (a*(k+l))*S(1//(q^2+q+1)))+CycloSum(R(1), (-a*(k+l))*S(1//(q^2+q+1)))+CycloSum(R(1), (a*(k-l))*S(1//(q^2+q+1)))+CycloSum(R(1), (a*(l-k))*S(1//(q^2+q+1)))+CycloSum(R(1), (a*(k+(2*q+1)*l))*S(1//(q^2+q+1)))+CycloSum(R(1), (a*((-2*q-1)*k+l))*S(1//(q^2+q+1)))+CycloSum(R(1), (a*((2*q+1)*k-l))*S(1//(q^2+q+1)))+CycloSum(R(1), (a*(-k+(-2*q-1)*l))*S(1//(q^2+q+1))),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(1), (a*k+b*l)*S(1//(q^2+q+1)))+CycloSum(R(1), (-a*k-b*l)*S(1//(q^2+q+1)))+CycloSum(R(1), (-b*k+a*l)*S(1//(q^2+q+1)))+CycloSum(R(1), (b*k-a*l)*S(1//(q^2+q+1)))+CycloSum(R(1), (a*k+((a+b)*q+b)*l)*S(1//(q^2+q+1)))+CycloSum(R(1), (a*k+(-(a-b)*q-a)*l)*S(1//(q^2+q+1)))+CycloSum(R(1), ((-(a-b)*q-a)*k+b*l)*S(1//(q^2+q+1)))+CycloSum(R(1), ((-(a+b)*q-b)*k+b*l)*S(1//(q^2+q+1)))+CycloSum(R(1), ((-(a+b)*q-b)*k+a*l)*S(1//(q^2+q+1)))+CycloSum(R(1), (b*k+((a+b)*q+b)*l)*S(1//(q^2+q+1)))+CycloSum(R(1), ((-(a-b)*q-a)*k-a*l)*S(1//(q^2+q+1)))+CycloSum(R(1), (b*k+((a-b)*q+a)*l)*S(1//(q^2+q+1)))+CycloSum(R(1), (-b*k+((-a+b)*q-a)*l)*S(1//(q^2+q+1)))+CycloSum(R(1), (((a-b)*q+a)*k+a*l)*S(1//(q^2+q+1)))+CycloSum(R(1), (-b*k+(-(a+b)*q-b)*l)*S(1//(q^2+q+1)))+CycloSum(R(1), (((a+b)*q+b)*k-a*l)*S(1//(q^2+q+1)))+CycloSum(R(1), (((a+b)*q+b)*k-b*l)*S(1//(q^2+q+1)))+CycloSum(R(1), (((a-b)*q+a)*k-b*l)*S(1//(q^2+q+1)))+CycloSum(R(1), (-a*k+((a-b)*q+a)*l)*S(1//(q^2+q+1)))+CycloSum(R(1), (-a*k+(-(a+b)*q-b)*l)*S(1//(q^2+q+1)))+CycloSum(R(1), (((a+b)*q+b)*k+((-a+b)*q-a)*l)*S(1//(q^2+q+1)))+CycloSum(R(1), ((-(a-b)*q-a)*k+(-(a+b)*q-b)*l)*S(1//(q^2+q+1)))+CycloSum(R(1), (((a-b)*q+a)*k+((a+b)*q+b)*l)*S(1//(q^2+q+1)))+CycloSum(R(1), ((-(a+b)*q-b)*k+((a-b)*q+a)*l)*S(1//(q^2+q+1))),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0))] [
	((q-1)^2*(q+1)^2*(q^2+q+1)^2*(q^4-q^2+1))*CycloSum(R(1), S(0)),
	((q-1)*(q+1)*(q^2+q+1)*(2*q^3+q^2-q-1))*CycloSum(R(1), S(0)),
	(-(q-1)*(q+1)^3)*CycloSum(R(1), S(0)),
	((q+1)*(q^2+q+1))*CycloSum(R(1), S(0)),
	(-5*q^3-2*q^2+2*q+1)*CycloSum(R(1), S(0)),
	(2*q+1)*CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	-(q-1)*(q+1)^2*(CycloSum(R(1), (a*(k+l))*S(1//(q^2-q+1)))+CycloSum(R(1), (-a*(k+l))*S(1//(q^2-q+1)))+CycloSum(R(1), (a*(k-l))*S(1//(q^2-q+1)))+CycloSum(R(1), (a*(l-k))*S(1//(q^2-q+1)))+CycloSum(R(1), (a*(k+(-2*q+1)*l))*S(1//(q^2-q+1)))+CycloSum(R(1), (a*((2*q-1)*k+l))*S(1//(q^2-q+1)))+CycloSum(R(1), (a*((-2*q+1)*k-l))*S(1//(q^2-q+1)))+CycloSum(R(1), (a*(-k+(2*q-1)*l))*S(1//(q^2-q+1)))),
	(q+1)*(CycloSum(R(1), (a*(k+l))*S(1//(q^2-q+1)))+CycloSum(R(1), (-a*(k+l))*S(1//(q^2-q+1)))+CycloSum(R(1), (a*(k-l))*S(1//(q^2-q+1)))+CycloSum(R(1), (a*(l-k))*S(1//(q^2-q+1)))+CycloSum(R(1), (a*(k+(-2*q+1)*l))*S(1//(q^2-q+1)))+CycloSum(R(1), (a*((2*q-1)*k+l))*S(1//(q^2-q+1)))+CycloSum(R(1), (a*((-2*q+1)*k-l))*S(1//(q^2-q+1)))+CycloSum(R(1), (a*(-k+(2*q-1)*l))*S(1//(q^2-q+1)))),
	CycloSum(R(1), (a*(k+l))*S(1//(q^2-q+1)))+CycloSum(R(1), (-a*(k+l))*S(1//(q^2-q+1)))+CycloSum(R(1), (a*(k-l))*S(1//(q^2-q+1)))+CycloSum(R(1), (a*(l-k))*S(1//(q^2-q+1)))+CycloSum(R(1), (a*(k+(-2*q+1)*l))*S(1//(q^2-q+1)))+CycloSum(R(1), (a*((2*q-1)*k+l))*S(1//(q^2-q+1)))+CycloSum(R(1), (a*((-2*q+1)*k-l))*S(1//(q^2-q+1)))+CycloSum(R(1), (a*(-k+(2*q-1)*l))*S(1//(q^2-q+1))),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(1), (a*k+b*l)*S(1//(q^2-q+1)))+CycloSum(R(1), (-a*k-b*l)*S(1//(q^2-q+1)))+CycloSum(R(1), (-b*k+a*l)*S(1//(q^2-q+1)))+CycloSum(R(1), (b*k-a*l)*S(1//(q^2-q+1)))+CycloSum(R(1), (a*k+((-a-b)*q+b)*l)*S(1//(q^2-q+1)))+CycloSum(R(1), (a*k+((a-b)*q-a)*l)*S(1//(q^2-q+1)))+CycloSum(R(1), (((a-b)*q-a)*k+b*l)*S(1//(q^2-q+1)))+CycloSum(R(1), (((a+b)*q-b)*k+b*l)*S(1//(q^2-q+1)))+CycloSum(R(1), (((a+b)*q-b)*k+a*l)*S(1//(q^2-q+1)))+CycloSum(R(1), (b*k+((-a-b)*q+b)*l)*S(1//(q^2-q+1)))+CycloSum(R(1), (((a-b)*q-a)*k-a*l)*S(1//(q^2-q+1)))+CycloSum(R(1), (b*k+((-a+b)*q+a)*l)*S(1//(q^2-q+1)))+CycloSum(R(1), (-b*k+((a-b)*q-a)*l)*S(1//(q^2-q+1)))+CycloSum(R(1), (((-a+b)*q+a)*k+a*l)*S(1//(q^2-q+1)))+CycloSum(R(1), (-b*k+((a+b)*q-b)*l)*S(1//(q^2-q+1)))+CycloSum(R(1), (((-a-b)*q+b)*k-a*l)*S(1//(q^2-q+1)))+CycloSum(R(1), (((-a-b)*q+b)*k-b*l)*S(1//(q^2-q+1)))+CycloSum(R(1), (((-a+b)*q+a)*k-b*l)*S(1//(q^2-q+1)))+CycloSum(R(1), (-a*k+((-a+b)*q+a)*l)*S(1//(q^2-q+1)))+CycloSum(R(1), (-a*k+((a+b)*q-b)*l)*S(1//(q^2-q+1)))+CycloSum(R(1), (((a-b)*q-a)*k+((a+b)*q-b)*l)*S(1//(q^2-q+1)))+CycloSum(R(1), (((-a-b)*q+b)*k+((a-b)*q-a)*l)*S(1//(q^2-q+1)))+CycloSum(R(1), (((-a+b)*q+a)*k+((-a-b)*q+b)*l)*S(1//(q^2-q+1)))+CycloSum(R(1), (((a+b)*q-b)*k+((-a+b)*q+a)*l)*S(1//(q^2-q+1))),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0))] [
	((q+1)^2*(q-1)^2*(q^2-q+1)^2*(q^2+q+1)^2)*CycloSum(R(1), S(0)),
	(-q^6+1)*CycloSum(R(1), S(0)),
	(-q^4+1)*CycloSum(R(1), S(0)),
	(-q^3+1)*CycloSum(R(1), S(0)),
	(q^3+1)*CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(1), (a*k)*S(1//(q^4-q^2+1)))+CycloSum(R(1), (-a*k)*S(1//(q^4-q^2+1)))+CycloSum(R(1), (a*k*q^3)*S(1//(q^4-q^2+1)))+CycloSum(R(1), (-a*k*q^3)*S(1//(q^4-q^2+1))),
	CycloSum(R(0), S(0))] [
	((q^2-q+1)*(q^4-q^2+1)*(q-1)^2*(q^2+q+1)^2)*CycloSum(R(1), S(0)),
	(-(q-1)*(q^2+q+1)*(q^4-q+1))*CycloSum(R(1), S(0)),
	((q-1)*(2*q^3-1))*CycloSum(R(1), S(0)),
	(-(2*q-1)*(q^2+q+1))*CycloSum(R(1), S(0)),
	(-2*q^3+q^2-q+1)*CycloSum(R(1), S(0)),
	(-q+1)*CycloSum(R(1), S(0)),
	CycloSum(R(1), S(0)),
	(q-1)*(q^3-1)*(CycloSum(R(1), (l)*S(1//(2)))+CycloSum(R(1), (k+l)*S(1//(2)))+CycloSum(R(1), (k)*S(1//(2)))),
	(-q^3+1)*(CycloSum(R(1), (l)*S(1//(2)))+CycloSum(R(1), (k+l)*S(1//(2)))+CycloSum(R(1), (k)*S(1//(2)))),
	(-q+1)*(CycloSum(R(1), (l)*S(1//(2)))+CycloSum(R(1), (k+l)*S(1//(2)))+CycloSum(R(1), (k)*S(1//(2)))),
	CycloSum(R(1), (l)*S(1//(2)))+CycloSum(R(1), (k+l)*S(1//(2)))+CycloSum(R(1), (k)*S(1//(2))),
	CycloSum(R(1), (l)*S(1//(2)))+CycloSum(R(1), (k+l)*S(1//(2)))+CycloSum(R(1), (k)*S(1//(2))),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	-(q^3-1)*(CycloSum(R(1), (a*l)*S(1//(q+1)))+CycloSum(R(1), (-a*l)*S(1//(q+1)))+CycloSum(R(1), (a*k+a*l)*S(1//(q+1)))+CycloSum(R(1), (a*k+2*a*l)*S(1//(q+1)))+CycloSum(R(1), (-a*k-a*l)*S(1//(q+1)))+CycloSum(R(1), (-a*k-2*a*l)*S(1//(q+1)))),
	CycloSum(R(1), (a*l)*S(1//(q+1)))+CycloSum(R(1), (-a*l)*S(1//(q+1)))+CycloSum(R(1), (a*k+a*l)*S(1//(q+1)))+CycloSum(R(1), (a*k+2*a*l)*S(1//(q+1)))+CycloSum(R(1), (-a*k-a*l)*S(1//(q+1)))+CycloSum(R(1), (-a*k-2*a*l)*S(1//(q+1))),
	CycloSum(R(0), S(0)),
	-(q-1)*(q^2-q+1)*(CycloSum(R(1), (a*k)*S(1//(q^2-q+1)))+CycloSum(R(1), (-a*k)*S(1//(q^2-q+1)))),
	(-2*q+1)*(CycloSum(R(1), (a*k)*S(1//(q^2-q+1)))+CycloSum(R(1), (-a*k)*S(1//(q^2-q+1)))),
	CycloSum(R(1), (a*k)*S(1//(q^2-q+1)))+CycloSum(R(1), (-a*k)*S(1//(q^2-q+1))),
	-(q-1)*(CycloSum(R(1), (a*k)*S(1//(q^3+1)))+CycloSum(R(1), (-a*k)*S(1//(q^3+1)))+CycloSum(R(1), (a*k)*S(1//(q^3+1)))*CycloSum(R(1), (a*l)*S(1//(q+1)))+CycloSum(R(1), (-a*k)*S(1//(q^3+1)))*CycloSum(R(1), (-a*l)*S(1//(q+1)))+CycloSum(R(1), (a*(q^2-q)*k)*S(1//(q^3+1)))*CycloSum(R(1), (a*l)*S(1//(q+1)))+CycloSum(R(1), (-a*(q^2-q)*k)*S(1//(q^3+1)))*CycloSum(R(1), (-a*l)*S(1//(q+1)))),
	CycloSum(R(1), (a*k)*S(1//(q^3+1)))+CycloSum(R(1), (-a*k)*S(1//(q^3+1)))+CycloSum(R(1), (a*k)*S(1//(q^3+1)))*CycloSum(R(1), (a*l)*S(1//(q+1)))+CycloSum(R(1), (-a*k)*S(1//(q^3+1)))*CycloSum(R(1), (-a*l)*S(1//(q+1)))+CycloSum(R(1), (a*(q^2-q)*k)*S(1//(q^3+1)))*CycloSum(R(1), (a*l)*S(1//(q+1)))+CycloSum(R(1), (-a*(q^2-q)*k)*S(1//(q^3+1)))*CycloSum(R(1), (-a*l)*S(1//(q+1))),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(0), S(0)),
	CycloSum(R(1), (a*k)*S(1//(q^3+1)))*CycloSum(R(1), (b*l)*S(1//(q+1)))+CycloSum(R(1), (-a*k)*S(1//(q^3+1)))*CycloSum(R(1), (-b*l)*S(1//(q+1)))+CycloSum(R(1), (a*k)*S(1//(q^3+1)))*CycloSum(R(1), ((a-b)*l)*S(1//(q+1)))+CycloSum(R(1), (-a*k)*S(1//(q^3+1)))*CycloSum(R(1), ((-a+b)*l)*S(1//(q+1)))+CycloSum(R(1), ((-a+b*q^2-b*q+b)*k)*S(1//(q^3+1)))*CycloSum(R(1), (b*l)*S(1//(q+1)))+CycloSum(R(1), ((-a+b*q^2-b*q+b)*k)*S(1//(q^3+1)))*CycloSum(R(1), ((-a+2*b)*l)*S(1//(q+1)))+CycloSum(R(1), (((a-b)*q^2+(-a+b)*q-b)*k)*S(1//(q^3+1)))*CycloSum(R(1), ((a-b)*l)*S(1//(q+1)))+CycloSum(R(1), (((a-b)*q^2+(-a+b)*q-b)*k)*S(1//(q^3+1)))*CycloSum(R(1), ((a-2*b)*l)*S(1//(q+1)))+CycloSum(R(1), (((-a+b)*q^2+(a-b)*q+b)*k)*S(1//(q^3+1)))*CycloSum(R(1), ((-a+2*b)*l)*S(1//(q+1)))+CycloSum(R(1), (((-a+b)*q^2+(a-b)*q+b)*k)*S(1//(q^3+1)))*CycloSum(R(1), ((-a+b)*l)*S(1//(q+1)))+CycloSum(R(1), ((a-b*q^2+b*q-b)*k)*S(1//(q^3+1)))*CycloSum(R(1), ((a-2*b)*l)*S(1//(q+1)))+CycloSum(R(1), ((a-b*q^2+b*q-b)*k)*S(1//(q^3+1)))*CycloSum(R(1), (-b*l)*S(1//(q+1)))]]
classinfo = Vector{Any}[
	[[1,0],["^3D_4","u_0"]],
	[[1,1],["^3D_4","u_1"]],
	[[1,2],["^3D_4","u_2"]],
	[[1,3],["^3D_4","u_3"]],
	[[1,4],["^3D_4","u_4"]],
	[[1,5],["^3D_4","u_5"]],
	[[1,6],["^3D_4","u_6"]],
	[[2,0],["A_1+A_1","u_0"]],
	[[2,1],["A_1+A_1","u_1"]],
	[[2,2],["A_1+A_1","u_2"]],
	[[2,3],["A_1+A_1","u_3"]],
	[[2,4],["A_1+A_1","u_4"]],
	[[3,0],["A_1",[1,1]]],
	[[3,1],["A_1",[2]]],
	[[4,0],["A_2",[1,1,1]]],
	[[4,1],["A_2",[2,1]]],
	[[4,2],["A_2",[3]]],
	[[5,0],["A_1",[1,1]]],
	[[5,1],["A_1",[2]]],
	[[6,0],["A_0",[1]]],
	[[7,0],["A_1",[1,1]]],
	[[7,1],["A_1",[2]]],
	[[8,0],["A_0",[1]]],
	[[9,0],["A_2",[1,1,1]]],
	[[9,1],["A_2",[2,1]]],
	[[9,2],["A_2",[3]]],
	[[10,0],["A_1",[1,1]]],
	[[10,1],["A_1",[2]]],
	[[11,0],["A_0",[1]]],
	[[12,0],["A_0",[1]]],
	[[13,0],["A_0",[1]]],
	[[14,0],["A_0",[1]]],
	[[15,0],["A_0",[1]]]]
classlength = R.([
	1,
	(q^2-1)*(q^8+q^4+1),
	q^2*(q^6-1)*(q^8+q^4+1),
	q^4*(q^8+q^4+1)*(q^2-1)^2*(q^2-q+1)*1//2,
	q^4*(q^8+q^4+1)*(q^2-1)^2*(q^2+q+1)*1//2,
	q^6*(q^2-1)*(q^6-1)*(q^8+q^4+1),
	q^8*(q^2-1)*(q^6-1)*(q^8+q^4+1),
	q^8*(q^8+q^4+1),
	q^8*(q^2-1)*(q^8+q^4+1),
	q^8*(q^6-1)*(q^8+q^4+1),
	q^8*(q^2-1)*(q^6-1)*(q^8+q^4+1)*1//2,
	q^8*(q^2-1)*(q^6-1)*(q^8+q^4+1)*1//2,
	q^9*(q+1)*(q^8+q^4+1),
	q^9*(q+1)*(q^6-1)*(q^8+q^4+1),
	q^9*(q^3+1)*(q^2-q+1)*(q^4-q^2+1),
	q^9*(q^2-1)*(q^3+1)*(q^8+q^4+1),
	q^10*(q^2-1)*(q-1)*(q^3+1)*(q^8+q^4+1),
	q^11*(q^3+1)*(q^8+q^4+1),
	q^11*(q^3+1)*(q^2-1)*(q^8+q^4+1),
	q^12*(q+1)*(q^3+1)*(q^8+q^4+1),
	q^9*(q-1)*(q^8+q^4+1),
	q^9*(q-1)*(q^6-1)*(q^8+q^4+1),
	q^12*(q-1)*(q^3+1)*(q^8+q^4+1),
	q^9*(q^3-1)*(q^2+q+1)*(q^4-q^2+1),
	q^9*(q^2-1)*(q^3-1)*(q^8+q^4+1),
	q^10*(q^2-1)*(q^3-1)*(q+1)*(q^8+q^4+1),
	q^11*(q^3-1)*(q^8+q^4+1),
	q^11*(q^2-1)*(q^3-1)*(q^8+q^4+1),
	q^12*(q+1)*(q^3-1)*(q^8+q^4+1),
	q^12*(q^2-1)*(q-1)*(q^3+1)*(q^2-q+1)*(q^4-q^2+1),
	q^12*(q^2-1)*(q+1)*(q^3-1)*(q^2+q+1)*(q^4-q^2+1),
	q^12*(q^2-1)*(q^6-1)*(q^4+q^2+1),
	q^12*(q-1)*(q^3-1)*(q^8+q^4+1)])
charinfo = Vector{Any}[
	[[1,0],["^3D_4","\\phi_{1,0}"]],
	[[1,1],["^3D_4","\\phi_{1,3}'"]],
	[[1,2],["^3D_4","\\phi_{2,2}"]],
	[[1,3],["^3D_4","\\phi_{2,1}"]],
	[[1,4],["^3D_4","^3D_4[-1]"]],
	[[1,5],["^3D_4","^3D_4[1]"]],
	[[1,6],["^3D_4","\\phi_{1,3}''"]],
	[[1,7],["^3D_4","\\phi_{1,6}"]],
	[[2,0],["A_1+A_1",[[2],[2]]]],
	[[2,1],["A_1+A_1",[[2],[1,1]]]],
	[[2,2],["A_1+A_1",[[1,1],[2]]]],
	[[2,3],["A_1+A_1",[[1,1],[1,1]]]],
	[[3,0],["A_1",[2]]],
	[[3,1],["A_1",[1,1]]],
	[[4,0],["A_2",[3]]],
	[[4,1],["A_2",[2,1]]],
	[[4,2],["A_2",[1,1,1]]],
	[[5,0],["A_1",[2]]],
	[[5,1],["A_1",[1,1]]],
	[[6,0],["A_0",[1]]],
	[[7,0],["A_1",[2]]],
	[[7,1],["A_1",[1,1]]],
	[[8,0],["A_0",[1]]],
	[[9,0],["A_2",[3]]],
	[[9,1],["A_2",[2,1]]],
	[[9,2],["A_2",[1,1,1]]],
	[[10,0],["A_1",[2]]],
	[[10,1],["A_1",[1,1]]],
	[[11,0],["A_0",[1]]],
	[[12,0],["A_0",[1]]],
	[[13,0],["A_0",[1]]],
	[[14,0],["A_0",[1]]],
	[[15,0],["A_0",[1]]]]
chardegree = R.([
	1,
	q^5-q^3+q,
	q^3*(q+1)^2*(q^4-q^2+1)*1//2,
	q^3*(q^3+1)^2*1//2,
	q^3*(q^3-1)^2*1//2,
	q^3*(q-1)^2*(q^4-q^2+1)*1//2,
	q^11-q^9+q^7,
	q^12,
	q^8+q^4+1,
	q^9+q^5+q,
	q^11+q^7+q^3,
	q^12+q^8+q^4,
	(q+1)*(q^2+q+1)*(q^2-q+1)*(q^4-q^2+1),
	q^3*(q+1)*(q^2-q+1)*(q^2+q+1)*(q^4-q^2+1),
	(q+1)*(q^4-q^2+1)*(q^2-q+1)^2,
	q*(q^4-q^2+1)*(q+1)^2*(q^2-q+1)^2,
	q^3*(q+1)*(q^4-q^2+1)*(q^2-q+1)^2,
	(q+1)*(q^2+q+1)*(q^4-q^2+1)*(q^2-q+1)^2,
	q*(q+1)*(q^2+q+1)*(q^4-q^2+1)*(q^2-q+1)^2,
	(q^2+q+1)*(q^4-q^2+1)*(q+1)^2*(q^2-q+1)^2,
	(q-1)*(q^2+q+1)*(q^2-q+1)*(q^4-q^2+1),
	q^3*(q-1)*(q^2-q+1)*(q^2+q+1)*(q^4-q^2+1),
	(q^4-q^2+1)*(q^2-q+1)^2*(q+1)*(q^2+q+1)*(q-1),
	(q-1)*(q^4-q^2+1)*(q^2+q+1)^2,
	q*(q^4-q^2+1)*(q-1)^2*(q^2+q+1)^2,
	q^3*(q-1)*(q^4-q^2+1)*(q^2+q+1)^2,
	(q-1)*(q^2-q+1)*(q^4-q^2+1)*(q^2+q+1)^2,
	q*(q-1)*(q^2-q+1)*(q^4-q^2+1)*(q^2+q+1)^2,
	(q^4-q^2+1)*(q^2+q+1)^2*(q-1)*(q^2-q+1)*(q+1),
	(q-1)^2*(q+1)^2*(q^2-q+1)^2*(q^4-q^2+1),
	(q-1)^2*(q+1)^2*(q^2+q+1)^2*(q^4-q^2+1),
	(q+1)^2*(q-1)^2*(q^2-q+1)^2*(q^2+q+1)^2,
	(q^2-q+1)*(q^4-q^2+1)*(q-1)^2*(q^2+q+1)^2])

classsums=[
function (tt::Cyclotomic)
	tt
end,
function (tt::Cyclotomic)
	tt
end,
function (tt::Cyclotomic)
	tt
end,
function (tt::Cyclotomic)
	tt
end,
function (tt::Cyclotomic)
	tt
end,
function (tt::Cyclotomic)
	tt
end,
function (tt::Cyclotomic)
	tt
end,
function (tt::Cyclotomic)
	tt
end,
function (tt::Cyclotomic)
	tt
end,
function (tt::Cyclotomic)
	tt
end,
function (tt::Cyclotomic)
	tt
end,
function (tt::Cyclotomic)
	tt
end,
function (tt::Cyclotomic)
	s1=nesum(tt, a, 1, (q-2), congruence)
	tt1=eesubs(tt, [a], [(q-1)*1//2])
	1//2*s1-1//2*tt1
end,
function (tt::Cyclotomic)
	s1=nesum(tt, a, 1, (q-2), congruence)
	tt1=eesubs(tt, [a], [(q-1)*1//2])
	1//2*s1-1//2*tt1
end,
function (tt::Cyclotomic)
	s1=nesum(tt, a, 1, q^2+q, congruence)
	1//2*s1
end,
function (tt::Cyclotomic)
	s1=nesum(tt, a, 1, q^2+q, congruence)
	1//2*s1
end,
function (tt::Cyclotomic)
	s1=nesum(tt, a, 1, q^2+q, congruence)
	1//2*s1
end,
function (tt::Cyclotomic)
	s1=nesum(tt, a, 0, q^3-2, congruence)
	tt1=eesubs(tt, [a], [(q-1)*a])
	s2=nesum(tt1, a, 0, q^2+q, congruence)
	s3=eesubs(tt, [a], [(q^3-1)*1//2])
	1//2*s1-1//2*s2-1//2*s3
end,
function (tt::Cyclotomic)
	s1=nesum(tt, a, 0, q^3-2, congruence)
	tt1=eesubs(tt, [a], [(q-1)*a])
	s2=nesum(tt1, a, 0, q^2+q, congruence)
	s3=eesubs(tt, [a], [(q^3-1)*1//2])
	1//2*s1-1//2*s2-1//2*s3
end,
function (tt::Cyclotomic)
	s1=nesum(tt, a, 0, q^3-2, congruence)
	s2=nesum(s1, b, 1, q-2, congruence)
	tt1=eesubs(tt, [a,b], S.([(q^2+q+1)*a,2*a]))
	s3=nesum(tt1, a, 0, q-2, congruence)
	tt1=eesubs(tt, [a,b], S.([2*a,a]))
	s4=nesum(tt1, a, 0, q^3-2, congruence)
	tt1=eesubs(tt, [b], [a])
	s5=nesum(tt1, a, 0, q^3-2, congruence)
	tt1=eesubs(tt, [a,b], S.([(q-1)*a,0]))
	s6=nesum(tt1, a, 0, q^2+q, congruence)
	tt1=eesubs(tt, [a,b], S.([(q^3-1)*1//2,0]))
	tt2=eesubs(tt, [a,b], S.([(q^3-1),0]))
	1//12*s2-1//4*s3-1//12*s4-1//12*s5+1//6*s6+1//4*tt1+1//4*tt2
end,
function (tt::Cyclotomic)
	s1=nesum(tt, a, 1, q, congruence)
	tt1=eesubs(tt, [a], [(q+1)*1//2])
	1//2*s1-1//2*tt1
end,
function (tt::Cyclotomic)
	s1=nesum(tt, a, 1, q, congruence)
	tt1=eesubs(tt, [a], [(q+1)*1//2])
	1//2*s1-1//2*tt1
end,
function (tt::Cyclotomic)
	s1=nesum(tt, a, 0, q^4+q^3-q-2, congruence)
	tt1=eesubs(tt, [a], [(q+1)*a])
	s2=nesum(tt1, a, 0, q^3-2, congruence)
	tt1=eesubs(tt, [a], [(q^3-1)*a])
	s3=nesum(tt1, a, 0, q, congruence)
	tt1=eesubs(tt, [a], [(q^3-1)*(q+1)*1//2])
	tt2=eesubs(tt, [a], [(q^3-1)*(q+1)])
	1//4*s1-1//4*s2-1//4*s3+1//4*tt1+1//4*tt2
end,
function (tt::Cyclotomic)
	s1=nesum(tt, a, 1, q^2-q, congruence)
	1//2*s1
end,
function (tt::Cyclotomic)
	s1=nesum(tt, a, 1, q^2-q, congruence)
	1//2*s1
end,
function (tt::Cyclotomic)
	s1=nesum(tt, a, 1, q^2-q, congruence)
	1//2*s1
end,
function (tt::Cyclotomic)
	s1=nesum(tt, a, 0, q^3, congruence)
	tt1=eesubs(tt, [a], [(q+1)*a])
	s2=nesum(tt1, a, 0, q^2-q, congruence)
	s3=eesubs(tt, [a], [(q^3+1)*1//2])
	1//2*s1-1//2*s2-1//2*s3
end,
function (tt::Cyclotomic)
	s1=nesum(tt, a, 0, q^3, congruence)
	tt1=eesubs(tt, [a], [(q+1)*a])
	s2=nesum(tt1, a, 0, q^2-q, congruence)
	s3=eesubs(tt, [a], [(q^3+1)*1//2])
	1//2*s1-1//2*s2-1//2*s3
end,
function (tt::Cyclotomic)
	s1=nesum(tt, a, 0, q^4-q^3+q-2, congruence)
	tt1=eesubs(tt, [a], [(q-1)*a])
	s2=nesum(tt1, a, 0, q^3, congruence)
	tt1=eesubs(tt, [a], [(q^3+1)*a])
	s3=nesum(tt1, a, 0, q-2, congruence)
	tt1=eesubs(tt, [a], [(q^3+1)*(q-1)*1//2])
	tt2=eesubs(tt, [a], [(q^3+1)*(q-1)])
	1//4*s1-1//4*s2-1//4*s3+1//4*tt1+1//4*tt2
end,
function (tt::Cyclotomic)
	s1=nesum(tt, a, 0, q^2+q, congruence)
	s2=nesum(s1, b, 0, q^2+q, congruence)
	tt1=eesubs(tt, [b], [a])
	s3=nesum(tt1, a, 0, q^2+q, congruence)
	tt1=eesubs(tt, [a,b], S.([0,0]))
	1//24*s2-1//6*s3+1//8*tt1
end,
function (tt::Cyclotomic)
	s1=nesum(tt, a, 0, q^2-q, congruence)
	s2=nesum(s1, b, 0, q^2-q, congruence)
	tt1=eesubs(tt, [b], [a])
	s3=nesum(tt1, a, 0, q^2-q, congruence)
	tt1=eesubs(tt, [a,b], S.([0,0]))
	1//24*s2-1//6*s3+1//8*tt1
end,
function (tt::Cyclotomic)
	s1=nesum(tt, a, 1, q^4-q^2, congruence)
	1//4*s1
end,
function (tt::Cyclotomic)
	s1=nesum(tt, a, 0, q^3, congruence)
	s2=nesum(s1, b, 1, q, congruence)
	tt1=eesubs(tt, [a,b], S.([(q^2-q+1)*a,2*a]))
	s3=nesum(tt1, a, 0, q, congruence)
	tt1=eesubs(tt, [a,b], S.([2*a,a]))
	s4=nesum(tt1, a, 0, q^3, congruence)
	tt1=eesubs(tt, [b], [a])
	s5=nesum(tt1, a, 0, q^3, congruence)
	tt1=eesubs(tt, [a,b], S.([(q+1)*a,0]))
	s6=nesum(tt1, a, 0, q^2-q, congruence)
	tt1=eesubs(tt, [a,b], S.([(q^3+1)*1//2,0]))
	tt2=eesubs(tt, [a,b], S.([(q^3+1),0]))
	1//12*s2-1//4*s3-1//12*s4-1//12*s5+1//6*s6+1//4*tt1+1//4*tt2
end
]

charsums=[
function (tt::Cyclotomic)
	tt
end,
function (tt::Cyclotomic)
	tt
end,
function (tt::Cyclotomic)
	tt
end,
function (tt::Cyclotomic)
	tt
end,
function (tt::Cyclotomic)
	tt
end,
function (tt::Cyclotomic)
	tt
end,
function (tt::Cyclotomic)
	tt
end,
function (tt::Cyclotomic)
	tt
end,
function (tt::Cyclotomic)
	tt
end,
function (tt::Cyclotomic)
	tt
end,
function (tt::Cyclotomic)
	tt
end,
function (tt::Cyclotomic)
	tt
end,
function (tt::Cyclotomic)
	s1=nesum(tt, k, 1, (q-2), congruence)
	tt1=eesubs(tt, [k], [(q-1)*1//2])
	1//2*s1-1//2*tt1
end,
function (tt::Cyclotomic)
	s1=nesum(tt, k, 1, (q-2), congruence)
	tt1=eesubs(tt, [k], [(q-1)*1//2])
	1//2*s1-1//2*tt1
end,
function (tt::Cyclotomic)
	s1=nesum(tt, k, 1, q^2+q, congruence)
	1//2*s1
end,
function (tt::Cyclotomic)
	s1=nesum(tt, k, 1, q^2+q, congruence)
	1//2*s1
end,
function (tt::Cyclotomic)
	s1=nesum(tt, k, 1, q^2+q, congruence)
	1//2*s1
end,
function (tt::Cyclotomic)
	s1=nesum(tt, k, 0, q^3-2, congruence)
	tt1=eesubs(tt, [k], [(q-1)*k])
	s2=nesum(tt1, k, 0, q^2+q, congruence)
	s3=eesubs(tt, [k], [(q^3-1)*1//2])
	1//2*s1-1//2*s2-1//2*s3
end,
function (tt::Cyclotomic)
	s1=nesum(tt, k, 0, q^3-2, congruence)
	tt1=eesubs(tt, [k], [(q-1)*k])
	s2=nesum(tt1, k, 0, q^2+q, congruence)
	s3=eesubs(tt, [k], [(q^3-1)*1//2])
	1//2*s1-1//2*s2-1//2*s3
end,
function (tt::Cyclotomic)
	s1=nesum(tt, k, 0, q^3-2, congruence)
	s2=nesum(s1, l, 0, q-2, congruence)
	tt1=eesubs(tt, [l], [0])
	s3=nesum(tt1, k, 0, q^3-2, congruence)
	tt1=eesubs(tt, [k,l], S.([(q-1)*k,0]))
	s4=nesum(tt1, k, 0, q^2+q, congruence)
	tt1=eesubs(tt, [k], [0])
	s5=nesum(tt1, l, 1, q-2, congruence)
	tt1=eesubs(tt, [k,l], S.([(q^3-1)*1//2,0]))
	1//12*s2-1//4*s3+1//6*s4-1//4*s5+1//4*tt1
end,
function (tt::Cyclotomic)
	s1=nesum(tt, k, 1, q, congruence)
	tt1=eesubs(tt, [k], [(q+1)*1//2])
	1//2*s1-1//2*tt1
end,
function (tt::Cyclotomic)
	s1=nesum(tt, k, 1, q, congruence)
	tt1=eesubs(tt, [k], [(q+1)*1//2])
	1//2*s1-1//2*tt1
end,
function (tt::Cyclotomic)
	s1=nesum(tt, k, 0, q^4+q^3-q-2, congruence)
	tt1=eesubs(tt, [k], [(q+1)*k])
	s2=nesum(tt1, k, 0, q^3-2, congruence)
	tt1=eesubs(tt, [k], [(q^3-1)*k])
	s3=nesum(tt1, k, 0, q, congruence)
	tt1=eesubs(tt, [k], [(q^3-1)*(q+1)*1//2])
	tt2=eesubs(tt, [k], [(q^3-1)*(q+1)])
	1//4*s1-1//4*s2-1//4*s3+1//4*tt1+1//4*tt2
end,
function (tt::Cyclotomic)
	s1=nesum(tt, k, 1, q^2-q, congruence)
	1//2*s1
end,
function (tt::Cyclotomic)
	s1=nesum(tt, k, 1, q^2-q, congruence)
	1//2*s1
end,
function (tt::Cyclotomic)
	s1=nesum(tt, k, 1, q^2-q, congruence)
	1//2*s1
end,
function (tt::Cyclotomic)
	s1=nesum(tt, k, 0, q^3, congruence)
	tt1=eesubs(tt, [k], [(q+1)*k])
	s2=nesum(tt1, k, 0, q^2-q, congruence)
	s3=eesubs(tt, [k], [(q^3+1)*1//2])
	1//2*s1-1//2*s2-1//2*s3
end,
function (tt::Cyclotomic)
	s1=nesum(tt, k, 0, q^3, congruence)
	tt1=eesubs(tt, [k], [(q+1)*k])
	s2=nesum(tt1, k, 0, q^2-q, congruence)
	s3=eesubs(tt, [k], [(q^3+1)*1//2])
	1//2*s1-1//2*s2-1//2*s3
end,
function (tt::Cyclotomic)
	s1=nesum(tt, k, 0, q^4-q^3+q-2, congruence)
	tt1=eesubs(tt, [k], [(q-1)*k])
	s2=nesum(tt1, k, 0, q^3, congruence)
	tt1=eesubs(tt, [k], [(q^3+1)*k])
	s3=nesum(tt1, k, 0, q-2, congruence)
	tt1=eesubs(tt, [k], [(q^3+1)*(q-1)*1//2])
	tt2=eesubs(tt, [k], [(q^3+1)*(q-1)])
	1//4*s1-1//4*s2-1//4*s3+1//4*tt1+1//4*tt2
end,
function (tt::Cyclotomic)
	s1=nesum(tt, k, 0, q^2+q, congruence)
	s2=nesum(s1, l, 0, q^2+q, congruence)
	tt1=eesubs(tt, [l], [0])
	s3=nesum(tt1, k, 0, q^2+q, congruence)
	tt1=eesubs(tt, [k,l], S.([0,0]))
	1//24*s2-1//6*s3+1//8*tt1
end,
function (tt::Cyclotomic)
	s1=nesum(tt, k, 0, q^2-q, congruence)
	s2=nesum(s1, l, 0, q^2-q, congruence)
	tt1=eesubs(tt, [l], [0])
	s3=nesum(tt1, k, 0, q^2-q, congruence)
	tt1=eesubs(tt, [k,l], S.([0,0]))
	1//24*s2-1//6*s3+1//8*tt1
end,
function (tt::Cyclotomic)
	s1=nesum(tt, k, 1, q^4-q^2, congruence)
	1//4*s1
end,
function (tt::Cyclotomic)
	s1=nesum(tt, k, 1, q^3, congruence)
	s2=nesum(s1, l, 1, q, congruence)
	tt1=eesubs(tt, [l], [0])
	s3=nesum(tt1, k, 1, q^3, congruence)
	tt1=eesubs(tt, [k,l], S.([(q+1)*k,0]))
	s4=nesum(tt1, k, 1, q^2-q, congruence)
	tt1=eesubs(tt, [k], [0])
	s5=nesum(tt1, l, 1, q, congruence)
	tt1=eesubs(tt, [k,l], S.([(q^3+1)*1//2,0]))
	1//12*s2-1//6*s3+1//6*s4-1//6*s5+1//4*tt1
end
]

classparams=[
Parameters(Parameter{QQPolyRingElem}[]),
Parameters(Parameter{QQPolyRingElem}[]),
Parameters(Parameter{QQPolyRingElem}[]),
Parameters(Parameter{QQPolyRingElem}[]),
Parameters(Parameter{QQPolyRingElem}[]),
Parameters(Parameter{QQPolyRingElem}[]),
Parameters(Parameter{QQPolyRingElem}[]),
Parameters(Parameter{QQPolyRingElem}[]),
Parameters(Parameter{QQPolyRingElem}[]),
Parameters(Parameter{QQPolyRingElem}[]),
Parameters(Parameter{QQPolyRingElem}[]),
Parameters(Parameter{QQPolyRingElem}[]),
Parameters([Parameter(a, q-1)], [ParameterException((a)*1//((q-1)*1//2))]),
Parameters([Parameter(a, q-1)], [ParameterException((a)*1//((q-1)*1//2))]),
Parameters([Parameter(a, q^2+q+1)], [ParameterException((a)*1//(q^2+q+1))]),
Parameters([Parameter(a, q^2+q+1)], [ParameterException((a)*1//(q^2+q+1))]),
Parameters([Parameter(a, q^2+q+1)], [ParameterException((a)*1//(q^2+q+1))]),
Parameters([Parameter(a, q^3-1)], [ParameterException((a)*1//(q-1)), ParameterException((a)*1//((q^3-1)*1//2))]),
Parameters([Parameter(a, q^3-1)], [ParameterException((a)*1//(q-1)), ParameterException((a)*1//((q^3-1)*1//2))]),
Parameters([Parameter(a, q^3-1), Parameter(b, q-1)]),
Parameters([Parameter(a, q+1)], [ParameterException((a)*1//((q+1)*1//2))]),
Parameters([Parameter(a, q+1)], [ParameterException((a)*1//((q+1)*1//2))]),
Parameters([Parameter(a, (q^3-1)*(q+1))], [ParameterException((a)*1//(q+1)), ParameterException((a)*1//(q^3-1)), ParameterException((a)*1//((q^3-1)*(q+1)*1//2))]),
Parameters([Parameter(a, q^2-q+1)], [ParameterException((a)*1//(q^2-q+1))]),
Parameters([Parameter(a, q^2-q+1)], [ParameterException((a)*1//(q^2-q+1))]),
Parameters([Parameter(a, q^2-q+1)], [ParameterException((a)*1//(q^2-q+1))]),
Parameters([Parameter(a, q^3+1)], [ParameterException((a)*1//(q+1)), ParameterException((a)*1//((q^3+1)*1//2))]),
Parameters([Parameter(a, q^3+1)], [ParameterException((a)*1//(q+1)), ParameterException((a)*1//((q^3+1)*1//2))]),
Parameters([Parameter(a, (q^3+1)*(q-1))], [ParameterException((a)*1//(q-1)), ParameterException((a)*1//(q^3+1)), ParameterException((a)*1//((q^3+1)*(q-1)*1//2))]),
Parameters([Parameter(a, q^2+q+1), Parameter(b, q^2+q+1)]),
Parameters([Parameter(a, q^2-q+1), Parameter(b, q^2-q+1)]),
Parameters([Parameter(a, q^4-q^2+1)], [ParameterException((a)*1//(q^4-q^2+1))]),
Parameters([Parameter(a, q^3+1), Parameter(b, q+1)])
]

charparams=[
Parameters(Parameter{QQPolyRingElem}[]),
Parameters(Parameter{QQPolyRingElem}[]),
Parameters(Parameter{QQPolyRingElem}[]),
Parameters(Parameter{QQPolyRingElem}[]),
Parameters(Parameter{QQPolyRingElem}[]),
Parameters(Parameter{QQPolyRingElem}[]),
Parameters(Parameter{QQPolyRingElem}[]),
Parameters(Parameter{QQPolyRingElem}[]),
Parameters(Parameter{QQPolyRingElem}[]),
Parameters(Parameter{QQPolyRingElem}[]),
Parameters(Parameter{QQPolyRingElem}[]),
Parameters(Parameter{QQPolyRingElem}[]),
Parameters([Parameter(k, q-1)], [ParameterException((k)*1//((q-1)*1//2))]),
Parameters([Parameter(k, q-1)], [ParameterException((k)*1//((q-1)*1//2))]),
Parameters([Parameter(k, q^2+q+1)], [ParameterException((k)*1//(q^2+q+1))]),
Parameters([Parameter(k, q^2+q+1)], [ParameterException((k)*1//(q^2+q+1))]),
Parameters([Parameter(k, q^2+q+1)], [ParameterException((k)*1//(q^2+q+1))]),
Parameters([Parameter(k, q^3-1)], [ParameterException((k)*1//(q-1)), ParameterException((k)*1//((q^3-1)*1//2))]),
Parameters([Parameter(k, q^3-1)], [ParameterException((k)*1//(q-1)), ParameterException((k)*1//((q^3-1)*1//2))]),
Parameters([Parameter(k, q^3-1), Parameter(l, q-1)]),
Parameters([Parameter(k, q+1)], [ParameterException((k)*1//((q+1)*1//2))]),
Parameters([Parameter(k, q+1)], [ParameterException((k)*1//((q+1)*1//2))]),
Parameters([Parameter(k, (q^3-1)*(q+1))], [ParameterException((k)*1//(q+1)), ParameterException((k)*1//(q^3-1)), ParameterException((k)*1//((q^3-1)*(q+1)*1//2))]),
Parameters([Parameter(k, q^2-q+1)], [ParameterException((k)*1//(q^2-q+1))]),
Parameters([Parameter(k, q^2-q+1)], [ParameterException((k)*1//(q^2-q+1))]),
Parameters([Parameter(k, q^2-q+1)], [ParameterException((k)*1//(q^2-q+1))]),
Parameters([Parameter(k, q^3+1)], [ParameterException((k)*1//(q+1)), ParameterException((k)*1//((q^3+1)*1//2))]),
Parameters([Parameter(k, q^3+1)], [ParameterException((k)*1//(q+1)), ParameterException((k)*1//((q^3+1)*1//2))]),
Parameters([Parameter(k, (q^3+1)*(q-1))], [ParameterException((k)*1//(q-1)), ParameterException((k)*1//(q^3+1)), ParameterException((k)*1//((q^3+1)*(q-1)*1//2))]),
Parameters([Parameter(k, q^2+q+1), Parameter(l, q^2+q+1)]),
Parameters([Parameter(k, q^2-q+1), Parameter(l, q^2-q+1)]),
Parameters([Parameter(k, q^4-q^2+1)], [ParameterException((k)*1//(q^4-q^2+1))]),
Parameters([Parameter(k, q^3+1), Parameter(l, q+1)])
]

classparamindex=var_index.([a,b])
charparamindex=var_index.([k,l])
congruence=R.((-1,4))

information = raw"""- Information about the generic character table of $^3D_4(q)$,
  $p>2$, congruent to $3$ modulo $4$.

- CHEVIE-name of the table: ``3D4.1``

- The table was first computed in:
  {\sc D. I. Deriziotis, G. O. Michler}, Character table and blocks
    of finite simple triality groups $^3D_4(q)$, {\em Trans. Am. Math. Soc.
    \bf303} (1987), 39--70.
"""

TABLE=CharTable(order,permutedims(table),classinfo,classlength,charinfo,chardegree,
	classsums,charsums,classparamindex,charparamindex,classparams,charparams,congruence,R,S,information,splitext(basename(@__FILE__))[1])
