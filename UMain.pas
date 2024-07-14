{ ****************************************************************************** }
{ }
{ PrivateKeyFinder }
{ }
{ Copyright(c) 2024 Pieter Valentijn }
{ Github Repository <https://github.com/PieterValentijn/> }
{ }
{ Distributed under GNU AGPL v3.0 with Commons Clause }
{ }
{ This program is free software: you can redistribute it and/or modify }
{ it under the terms of the GNU Affero General Public License as published }
{ by the Free Software Foundation, either version 3 of the License, or }
{ (at your option) any later version. }
{ }
{ This program is distributed in the hope that it will be useful, }
{ but WITHOUT ANY WARRANTY; without even the implied warranty of }
{ MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the }
{ GNU Affero General Public License for more details. }
{ }
{ You should have received a copy of the GNU Affero General Public License }
{ along with this program.  If not, see <https://www.gnu.org/licenses/> }
{ }
{ ****************************************************************************** }

unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Samples.Spin, SyncObjs,
  shellapi, System.Threading, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBasic,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinWXI, dxSkinXmas2008Blue, cxTextEdit, cxLabel,
  Vcl.Menus, cxButtons, web3.bip39, Vcl.ExtCtrls;

type
  TfmMain = class(TForm)
    pcMain: TPageControl;
    tsAbout: TTabSheet;
    mabout: TMemo;
    tsWords: TTabSheet;
    GridPanel1: TGridPanel;
    cb1: TComboBox;
    cb2: TComboBox;
    cb3: TComboBox;
    cb4: TComboBox;
    cb5: TComboBox;
    cb6: TComboBox;
    cb7: TComboBox;
    cb8: TComboBox;
    cb9: TComboBox;
    cb10: TComboBox;
    cb11: TComboBox;
    cb12: TComboBox;
    cb13: TComboBox;
    cb14: TComboBox;
    cb15: TComboBox;
    cb16: TComboBox;
    cb17: TComboBox;
    cb18: TComboBox;
    cb19: TComboBox;
    cb20: TComboBox;
    cb21: TComboBox;
    cb22: TComboBox;
    cb23: TComboBox;
    cb24: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    bNextInput39: TcxButton;
    ePassword: TEdit;
    Label4: TLabel;
    bCopywordsToClipoard: TButton;
    cxBIP32Path: TcxTextEdit;
    cxLabel12: TcxLabel;
    tsKeys: TTabSheet;
    mKeys: TMemo;
    ProgressBar1: TProgressBar;
    cbSugestedWords: TComboBox;
    Label8: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure bNextInput39Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure pcMainChanging(Sender: TObject; var AllowChange: Boolean);
    procedure bCopywordsToClipoardClick(Sender: TObject);
  private
    isLoading: Boolean;
    Wordlist: TStringlist;
    procedure DoWordSuggestion;
    procedure FinishPath;
  public
    { Public declarations }
    WordsControlArray: array of TComboBox;
    procedure SetControlsToIntArray(aArray: array of integer);
    procedure SetIntArrayToControls(aArray: Array of integer);
  end;

  TMnemonicHelper = record helper for TMnemonic
    function CheckWords(aList: TStrings): Boolean;
    class function ListEnglish: TStringlist; static;
    class function Innerfrom8bitTo11bit(const input: TBytes): TArray<integer>; static;
    class procedure MoveFrom11BitTo8Bit(var OutArray: array of byte; const inArray: Array of integer); static;
    class procedure InWordsToArray11Bit(const aInList: TStrings; var OutArray: array of integer); static;
  end;

var
  fmMain: TfmMain;

implementation

{$R *.dfm}

uses
  ClpEncoders, web3.eth.types, web3, web3.crypto, web3.utils, web3.eth.crypto, Clipbrd, web3.bip44;

procedure TfmMain.bCopywordsToClipoardClick(Sender: TObject);
var
  aOut: String;
begin
  aOut := '';
  for var x := 0 to 23 do
    aOut := Trim(aOut + ' ' + WordsControlArray[x].Text);
  Clipboard.AsText := aOut;
end;

procedure TfmMain.bNextInput39Click(Sender: TObject);
var
  Intarray: array of integer;
  TheByteArray: TBytes;
begin
  // check words if the way is input from BIP 39 words
  SetLength(Intarray, 24);
  for var x := 0 to 23 do
    Intarray[x] := WordsControlArray[x].ItemIndex;
  SetLength(TheByteArray, 33);
  TMnemonic.MoveFrom11BitTo8Bit(TheByteArray, Intarray);
  var
  Checkbyte := TheByteArray[High(TheByteArray)];
  SetLength(TheByteArray, 32);
  var
  checksum := sha256(TheByteArray)[0];
  if not(Checkbyte = checksum) then
    begin
      DoWordSuggestion;
      raise exception.Create('Checksum error please review your (last) word(s)');
    end;
 FinishPath;
 pcMain.ActivePage := tsKeys;
end;

procedure TfmMain.DoWordSuggestion;
begin

  var
    Intarray: array of integer;
  var
    TheByteArray: TBytes;
    // check words if the way is input from BIP 39 words
  SetLength(Intarray, 24);
  ProgressBar1.Max := Wordlist.Count;
  ProgressBar1.Position := 1;

  cbSugestedWords.Items.BeginUpdate;
  try
    cbSugestedWords.Items.clear;
    for var words := 0 to Wordlist.Count - 1 do
    begin
      ProgressBar1.Position := ProgressBar1.Position + 1;
      for var x := 0 to 22 do
        Intarray[x] := WordsControlArray[x].ItemIndex;
      Intarray[23] := words;
      SetLength(TheByteArray, 33);

      TMnemonic.MoveFrom11BitTo8Bit(TheByteArray, Intarray);
      var
      Checkbyte := TheByteArray[High(TheByteArray)];
      SetLength(TheByteArray, 32);
      var
      checksum := sha256(TheByteArray)[0];
      if (Checkbyte = checksum) then
        cbSugestedWords.Items.Add(Wordlist[words]);
    end;
  finally
    if cbSugestedWords.Items.Count > 0 then
      cbSugestedWords.ItemIndex := 0;
    cbSugestedWords.Items.EndUpdate;
    ProgressBar1.Position := 0;
  end;
end;

procedure TfmMain.FinishPath;
var
  bip32path, words: String;
  procedure DoPath;
  begin
    var
    key := wallet(seed(words, ePassword.Text), bip32path);
    mKeys.Lines.Add('PRIVATE:' + key.Value.ToString);
    mKeys.Lines.Add('PUBLIC:' + key.Value.GetAddress.Value);
    mKeys.Lines.Add('PRIVATEBASE58:' + TBase58.Encode(fromHex(key.Value.ToString)));
    mKeys.Lines.Add('PATH:' + bip32path);
    mKeys.Lines.Add('-------------------------------');
  end;

begin
  var
  useChain := Ethereum;
  // create results

  // See if path is corret
  bip32path := cxBIP32Path.Text;
  words := '';
  for var x := 0 to 23 do
    words := Trim(words + ' ' + WordsControlArray[x].Text);
  DoPath;
end;

procedure TfmMain.FormCreate(Sender: TObject);
begin
  pcMain.ActivePageIndex := 0;
  Wordlist := TMnemonic.ListEnglish;
  SetLength(WordsControlArray, 24);
end;

procedure TfmMain.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Wordlist);
end;

procedure TfmMain.pcMainChanging(Sender: TObject; var AllowChange: Boolean);
begin
  if cb1.Items.Text <> '' then
    exit;
  isLoading := True;
  try
    ProgressBar1.Max := 24;
    ProgressBar1.Position := 0;
    for var x := 1 to 24 do
    begin
      WordsControlArray[x - 1] := (FindComponent('cb' + x.ToString) as TComboBox);
      WordsControlArray[x - 1].Items.Assign(Wordlist);
      WordsControlArray[x - 1].ItemIndex := 0;
      ProgressBar1.Position := x;
    end;
    ProgressBar1.Position := 0;
  finally
    isLoading := False;
  end;
end;

procedure TfmMain.SetIntArrayToControls(aArray: Array of integer);
begin
  isLoading := True;
  try
    for var x := 0 to 23 do
      WordsControlArray[x].ItemIndex := aArray[x];
  finally
    isLoading := False;
  end;
end;

procedure TfmMain.SetControlsToIntArray(aArray: array of integer);
begin
  for var x := 0 to 23 do
    aArray[x] := WordsControlArray[x].ItemIndex;
end;

{ TMnemonicHelper }

function TMnemonicHelper.CheckWords(aList: TStrings): Boolean;
var
  WordsArray: Array of integer;
  ByteArray: TBytes;
  ByteArrayLen: integer;
  ByteCheckSum: integer;
begin
  // pre conditions
  // Convert words to IntArray 11 bit
  SetLength(WordsArray, aList.Count);
  InWordsToArray11Bit(aList, WordsArray);
  ByteArrayLen := (aList.Count * 11) div 8;
  SetLength(ByteArray, ByteArrayLen);
  for ByteArrayLen := Low(ByteArray) to High(ByteArray) do
    ByteArray[ByteArrayLen] := 0;

  MoveFrom11BitTo8Bit(ByteArray, WordsArray);

  ByteCheckSum := web3.utils.sha256(copy(ByteArray, 0, 32))[0];

  Result := ByteArray[High(ByteArray)] = ByteCheckSum;
end;

class function TMnemonicHelper.Innerfrom8bitTo11bit(const input: TBytes): TArray<integer>;
begin
  const
    len = (Length(input) * 8) div 11;
  SetLength(Result, len);

  var
  mnemAnd := 1024;
  var
  idx_output := 0;

  for var idx_input := 0 to High(input) do
  begin
    var
    byteAnd := 128;
    for var I := 0 to 7 do
    begin
      if (input[idx_input] and byteAnd) = byteAnd then
        Result[idx_output] := Result[idx_output] or mnemAnd;
      mnemAnd := mnemAnd div 2;
      byteAnd := byteAnd div 2;
      if mnemAnd < 1 then
      begin
        mnemAnd := 1024;
        inc(idx_output);
        if idx_output >= len then
          exit;
      end;
    end;
  end;
end;

class function TMnemonicHelper.ListEnglish: TStringlist;
begin
  Result := TStringlist.Create;
  const
    RS = TResourceStream.Create(hInstance, 'BIP39_ENGLISH_WORDLIST', RT_RCDATA);
  try
    Result.LoadFromStream(RS, TEncoding.UTF8);
  finally
    RS.Free;
  end;
end;

class procedure TMnemonicHelper.InWordsToArray11Bit(const aInList: TStrings; var OutArray: array of integer);
var
  OutArrayIndex: integer;
  Wordlist: TStringlist;
  aFoundIndex: integer;
begin
  Wordlist := ListEnglish;
  try
    for OutArrayIndex := Low(OutArray) to High(OutArray) do
    begin
      aFoundIndex := Wordlist.IndexOf(aInList[OutArrayIndex]);
      if aFoundIndex = -1 then
        raise exception.Create(aInList[OutArrayIndex] + ' Word is not in list');
      OutArray[OutArrayIndex] := aFoundIndex;
    end;
  finally
    FreeAndNil(Wordlist);
  end;
end;

class procedure TMnemonicHelper.MoveFrom11BitTo8Bit(var OutArray: array of byte; const inArray: array of integer);
var
  IntArrayIndex, BitIndex: integer;
  byteAnd, mnemAnd: integer;
  OutArrayIndex: integer;
begin
  byteAnd := 128;
  OutArrayIndex := 0;
  for IntArrayIndex := Low(inArray) to High(inArray) do
  begin
    mnemAnd := 1024;
    for BitIndex := 0 to 10 do
    begin
      if (inArray[IntArrayIndex] and mnemAnd) = mnemAnd then
        OutArray[OutArrayIndex] := OutArray[OutArrayIndex] or byteAnd;
      mnemAnd := mnemAnd div 2;
      byteAnd := byteAnd div 2;
      if byteAnd < 1 then
      begin
        byteAnd := 128;
        inc(OutArrayIndex);
      end;
    end;
  end;
end;

end.
