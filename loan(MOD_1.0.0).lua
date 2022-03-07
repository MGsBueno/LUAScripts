loan={}
loan.amount = 0
loan.choise
loan.month_reference= { call_month_of_Loan }

function loan_method (choose)
	choose == 1 payment_method = "12 months"
	choose == 2 payment_method = "60 months"
	choose == 3 payment_method = "120 months"
return payment_method	
end

function load_loan_default_stats()
	--reference currency "Euro"
	level = { call_level_method }
	loan = {}
	if level == easy
	then
		loan.interest = "0.07" 
		loan.max = 2000000

	elseif level == normal 
		loan.interest =0,13
		loan.limit = 1000000

	else 
		loan.interest =0,18
		loan.limit = 500000
	end
	return loan
end

function payday(loan)
	end
