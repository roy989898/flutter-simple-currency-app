class Rates {
  double aUD;
  double bGN;
  double bRL;
  double cAD;
  double cHF;
  double cNY;
  double cZK;
  double dKK;
  double eUR;
  double gBP;
  double hKD;
  double hRK;
  double hUF;
  double iDR;
  double iLS;
  double iNR;
  double iSK;
  double jPY;
  double kRW;
  double mXN;
  double mYR;
  double nOK;
  double nZD;
  double pHP;
  double pLN;
  double rON;
  double rUB;
  double sEK;
  double sGD;
  double tHB;
  double tRY;
  int uSD;
  double zAR;

  Rates(
      {this.aUD,
      this.bGN,
      this.bRL,
      this.cAD,
      this.cHF,
      this.cNY,
      this.cZK,
      this.dKK,
      this.eUR,
      this.gBP,
      this.hKD,
      this.hRK,
      this.hUF,
      this.iDR,
      this.iLS,
      this.iNR,
      this.iSK,
      this.jPY,
      this.kRW,
      this.mXN,
      this.mYR,
      this.nOK,
      this.nZD,
      this.pHP,
      this.pLN,
      this.rON,
      this.rUB,
      this.sEK,
      this.sGD,
      this.tHB,
      this.tRY,
      this.uSD,
      this.zAR});

  factory Rates.fromJson(Map<String, dynamic> json) {
    return Rates(
      aUD: json['aUD'],
      bGN: json['bGN'],
      bRL: json['bRL'],
      cAD: json['cAD'],
      cHF: json['cHF'],
      cNY: json['cNY'],
      cZK: json['cZK'],
      dKK: json['dKK'],
      eUR: json['eUR'],
      gBP: json['gBP'],
      hKD: json['hKD'],
      hRK: json['hRK'],
      hUF: json['hUF'],
      iDR: json['iDR'],
      iLS: json['iLS'],
      iNR: json['iNR'],
      iSK: json['iSK'],
      jPY: json['jPY'],
      kRW: json['kRW'],
      mXN: json['mXN'],
      mYR: json['mYR'],
      nOK: json['nOK'],
      nZD: json['nZD'],
      pHP: json['pHP'],
      pLN: json['pLN'],
      rON: json['rON'],
      rUB: json['rUB'],
      sEK: json['sEK'],
      sGD: json['sGD'],
      tHB: json['tHB'],
      tRY: json['tRY'],
      uSD: json['uSD'],
      zAR: json['zAR'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['aUD'] = this.aUD;
    data['bGN'] = this.bGN;
    data['bRL'] = this.bRL;
    data['cAD'] = this.cAD;
    data['cHF'] = this.cHF;
    data['cNY'] = this.cNY;
    data['cZK'] = this.cZK;
    data['dKK'] = this.dKK;
    data['eUR'] = this.eUR;
    data['gBP'] = this.gBP;
    data['hKD'] = this.hKD;
    data['hRK'] = this.hRK;
    data['hUF'] = this.hUF;
    data['iDR'] = this.iDR;
    data['iLS'] = this.iLS;
    data['iNR'] = this.iNR;
    data['iSK'] = this.iSK;
    data['jPY'] = this.jPY;
    data['kRW'] = this.kRW;
    data['mXN'] = this.mXN;
    data['mYR'] = this.mYR;
    data['nOK'] = this.nOK;
    data['nZD'] = this.nZD;
    data['pHP'] = this.pHP;
    data['pLN'] = this.pLN;
    data['rON'] = this.rON;
    data['rUB'] = this.rUB;
    data['sEK'] = this.sEK;
    data['sGD'] = this.sGD;
    data['tHB'] = this.tHB;
    data['tRY'] = this.tRY;
    data['uSD'] = this.uSD;
    data['zAR'] = this.zAR;
    return data;
  }
}
