#!/bin/bash

PS3="Please select a city: "
select city in Tokyo London "Los Angeles" Moscow Dubai Manchester "New York" Paris Bangalore Johannesburg Istanbul Milan "Abu Dhabi" Pune Nairobi Berlin Karachi;
do
  case "$city" in
    Tokyo) country=Japan;;       Johannesburg) country="South Africa";;
    Moscow) country=Russia;;     Paris) country=France;;
    Istanbul) country=Turkey;;   Milan) country=Italy;;
    Nairobi) country=Kenya;;     Berlin) country=Germany;;
    Karachi) country=Pakistan;;
    "Los Angeles"|"New York") country=USA;;
    London|Manchester) country=England;; 
    Dubai|"Abu Dhabi") country="United Arab Emirates";; 
    Bangalore|Pune) country=India;;
    *) echo "Sorry you provided an unknown value"; break;
  esac
  echo "$city is in $country"
  break
done

