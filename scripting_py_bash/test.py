import boto3

def main():
    
    # remember to `$ export AWS_PROFILE=a-profile` & `$ export AWS_REGION=a-region`
    # to pick up credentials for this exercise, or set env vars appropriately for AK/SK access
    ec2_conn = boto3.client('ec2')

if __name__ == "__main__":
    main()