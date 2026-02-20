@addMethod(W3PlayerWitcher) function GetAttributeValue(attributeName : name, optional tags : array<name>, optional ignoreDeath : bool) : SAbilityAttributeValue
{
	var val : SAbilityAttributeValue;

	val = super.GetAttributeValue(attributeName, tags, ignoreDeath);
	if ( val.valueBase < 0)
		return val;
	if (HasBuff(EET_WellFed) && attributeName == 'vitalityRegen')
		val.valueAdditive += GetMaxHealth() / 30;
	return val;
}
