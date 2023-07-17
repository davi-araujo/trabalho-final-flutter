class Pessoas_de_rua{
  String _nome;
  int _idade;
  String _sexo;
  String _cadUnico;
  String _filiacao;
  String _emprego;
  double _RG;

  Pessoas_de_rua(this._nome, this._idade, this._sexo, this._cadUnico,this._filiacao,this._emprego,
      this._RG);

  String get Nome => _nome;

  @override
  String toString() {
    return "Nome: ${_nome}\nIdade: ${_idade}\nSexo: ${_sexo}\nCadastro Único: ${_cadUnico}\nFiliação: ${_filiacao}\nInteresse em vaga de emprego: ${_emprego}\nRG: ${_RG}";
  }

  int getidade() => _idade;

  String getSexo() => _sexo;

  String getCadUnico() => _cadUnico;

  String getFiliacao() => _filiacao;

  String getEmprego() => _emprego;

  double getRG() => _RG;
}