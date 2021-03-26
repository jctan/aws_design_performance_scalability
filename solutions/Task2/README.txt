Initial Cost Estimation
Total Monthly: 9,362.84 USD
https://calculator.aws/#/estimate?id=a360a6c644413f2cc68a518d765a494aca11aebb 

------------------------------------------------------------------------------

Reduced Cost Estimation
- VPC DT Outbound - Amazon CloudFront: 100000 => 10000, Intra-Region: 20 TB per month => 40 TB per month
- EC2 Instance Type: c6g.4xlarge => c6g.xlarge
- RDS for postgreSQL: db.m5.8xlarge => db.m5.xlarge, db.m5.8xlarge => db.m5.4xlarge

Due to limited budget, EC2 Instance Types and RDS for postgreSQL are downgraded to a cheaper family with lower performance.
Reduced the capacity of outbound data transfer on cloudfront and increase the amount of intra-region data transfer of TD per month for VPC.

Total Monthly: 5,898.62 USD
https://calculator.aws/#/estimate?id=be5ead1b30255baff380aa47d9dee79157df8bce

------------------------------------------------------------------------------ 

Increased Cost Estimation
- EC2 Instance Type: c6g.4xlarge => c6g.12xlarge
- RDS for postgreSQL: db.m5.8xlarge => db.m5.16xlarge
- Elastic load balancer - LCU processed bytes: 50 GB per hour => 100 GB per hour, LCU Avg new connections per ALB: 2000/sec => 1000/sec, LCU Avg number of requests/second/ALB: 100 => 1000
- VPC DT Outbound - Amazon CloudFront: 100000 => 10000, Intra-Region: 20 TB per month => 50 TB per month

Upgrade the size of EC2 instace family with higher performance.
Upgrade the storage/size of RDS to support larger amount of data. 
Increase the Load balancer capacity unit to proecess more traffic per request.
Reduced the capacity of outbound data transfer on cloudfront and increase the amount of intra-region data transfer of TD per month for VPC.

Total Monthly: 19,608.60 USD
https://calculator.aws/#/estimate?id=72127eba848d13c37b619e7b8dcb9b86b6121518