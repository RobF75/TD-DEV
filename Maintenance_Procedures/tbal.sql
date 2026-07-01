connect stock dani/dani;
set timeout 5;
disconnect stock;
connect stockdev dani/dani;
update statistics on database;

 SELECT 
  Customer_Master.Cust_No,
  Customer_Master.Cust_Name,
  Customer_Master.Bus_Name, 
  Customer_Master.Service_Charge,
  Customer_Master.With_Debt_Collect, 
  Customer_Master.AR_Comments,
  Customer_Master.Ass_Cust_No, 
  Customer_Master.Comb_Statement 
  FROM 
    Customer_Master
   ORDER BY Customer_Master.Cust_Name, Customer_Master.Cust_No;

 SELECT Cust_No 
FROM 
  Customer_Master
WHERE 
  Ass_Cust_No = 333485 order by Cust_no;
commit;
create index IEAss_Cust
   On Customer_Master
(
Ass_Cust_No
);
update statistics on INDEX IeAss_Cust;

 SELECT Comb_Statement 
FROM 
  Customer_Master
WHERE 
  Cust_No = 333485 ;

 SELECT  
  trans_user_id, 
  trans_sysdatetime, 
  reference_id, 
  transaction_date, 
  transaction_type,
  transaction_amount,
  transaction_code,
  trans_amount_outst, 
  transaction_notes
FROM 
  transaction
WHERE 
  transaction_date <= 1997-03-01 and 
  cust_no = 333485
ORDER BY transaction_date;

 SELECT  
      Cash_Receipt.Receipt_Date, 
      cash_application.applied_amount 
    FROM 
      cash_application,
      cash_receipt 
        WHERE 
      cash_application.trans_user_id = 'LYNN' and
      cash_application.trans_sysdatetime = 24-DEC-1996 15:37:31 and
      cash_application.receipt_user_id = cash_receipt.Receipt_User_Id AND 
      cash_application.receipt_sysdatetim = cash_receipt.Rcpt_Sysdatetime AND  
      Date_Applied <= 1997-03-01 AND 
      NOT EXISTS 
      ( 
        SELECT 
          Deposit_History.Rcpt_Sysdatetime 
        FROM 
          Deposit_History
        WHERE 
          Deposit_History.Receipt_User_Id = Cash_Application.Receipt_User_Id AND 
          Deposit_History.Rcpt_sysdatetime = Cash_Application.Receipt_Sysdatetim 
      )   
    ORDER BY date_applied;

 SELECT  
  Dep_Hist_Paid_Date, 
  DepHist_Amt_Paid
FROM 
  Deposit_History
WHERE 
  trans_user_id = 'LYNN' and
  trans_sysdatetime = 24-DEC-1996 15:37:31  
ORDER BY Dep_Hist_Paid_Date  ;

SELECT 
  Receipt_Date, 
  Receipt_Type,
  Amount_Unapplied  
FROM 
  Cash_Receipt
WHERE 
  Receipt_Date <= 24-DEC-1996 and 
  cust_no = 333485 and 
  Fully_applied_flag = 'N' 
ORDER BY Receipt_Date;

SELECT 
  cash_application.date_applied, 
  cash_application.Applied_Amount, 
  cash_application.receipt_user_id,
  cash_application.receipt_sysdatetim
FROM 
  cash_application, 
  transaction
WHERE 
  cash_application.cust_no = 333485 and 
  cash_application.trans_user_id = transaction.trans_user_id and 
  cash_application.trans_sysdatetime = transaction.trans_sysdatetime and
  cash_application.date_applied <= 24-DEC-1996 and
  transaction.transaction_date > 01-DEC-1996
ORDER BY Cash_Application.Date_Applied;

 SELECT 
  Receipt_Date
FROM 
  cash_receipt
WHERE 
  Receipt_User_Id = 'LYNN' AND 
  Rcpt_sysdatetime = 24-DEC-1996  ;

 SELECT 
  Dep_date_reqd, 
  dep_amount_reqd
FROM 
  outstand_deposit
WHERE 
  cust_no = 333485 and 
  dep_date_reqd <= 24-DEC-1996  AND 
  ( dep_amount_paid IS NULL OR dep_amount_paid = 0 ) 
ORDER BY Dep_Date_reqd;
commit;
