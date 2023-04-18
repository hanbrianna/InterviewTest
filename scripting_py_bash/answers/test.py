import boto3

def main():
    
    # remember to `$ export AWS_PROFILE=a-profile` & `$ export AWS_REGION=a-region`
    # to pick up credentials for this exercise, or set env vars appropriately for AK/SK access
    ec2_conn = boto3.client('ec2')

    volumes = ec2_conn.describe_volumes()

    # for loop is fine too, but list comprehension most succinct here if possible
    [print(vol['VolumeId'], vol['VolumeType']) for vol in volumes['Volumes'] if vol['VolumeType'] != 'gp3']

    # ie the below is good too
    # for vol in volumes['Volumes']:
    #     if vol['VolumeType'] != 'gp3':
    #         print(vol["VolumeId"], vol['VolumeType'])

if __name__ == "__main__":
    main()