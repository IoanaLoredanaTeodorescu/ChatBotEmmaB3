#
import requests
import re
class email:
    def send_email(self, address, subject, body):
        r = requests.post(
            "https://maker.ifttt.com/trigger/send_email/with/key/n2MkPeTJEQbBYYUSx_Zj0-zjuDxuC78Epow95X_Db3V",
            data={"value1": address, "value2": subject, "value3": body})
        return r.status_code

