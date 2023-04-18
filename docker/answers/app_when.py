from datetime import datetime
from pytz import timezone

print(f"hello, the time is now {datetime.now(timezone('Europe/London')).strftime('%H:%M:%S %d/%m/%Y')}")