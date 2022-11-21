public boolean cigarParty(int cigars, boolean isWeekend) {
  if (isWeekend == true)
  {
    if (cigars >= 40)
    {
      return true;
    }
    else
    {
      return false;
    }
  }
  else if ((cigars >=40 && cigars <= 60))
  {
    return true;
  }
  else
  {
    return false;
  }
}




public boolean cigarParty(int cigars, boolean isWeekend) {
  if ((isWeekend == true  && cigars >= 40)|| (cigars >=40 && cigars <= 60))
  {
    return true;
  }
  else
  {
    return false;
  }
}

public boolean cigarParty(int cigars, boolean isWeekend) {
  return ((isWeekend && cigars >= 40)|| (cigars >=40 && cigars <= 60));
}


public int dateFashion(int you, int date) {
  if (you <= 2 || date <= 2)
  {
    return 0;
  }
  else if (you >= 8 || date >=8)
  {
    return 2;
  }
  else
  {
    return 1; 
  }
}

public int dateFashion(int you, int date) {
  return (you <= 2 || date <= 2) ? 0 : ((you >= 8 || date >=8) ? 2 : 1);
}

public int caughtSpeeding(int speed, boolean isBirthday) {
  int extra = (isBirthday) ? 5 : 0;
  if (speed <= 60 + extra)
  {
    return 0;
  }
  else if (speed > 60 + extra && speed <= 80 + extra)
  {
    return 1;
  }
  else
  {
    return 2;
  }
}

