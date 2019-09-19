Feature: تصريف اسم الفاعل من الفعل الرباعي المزيد

  Scenario Outline: augmented quadrilateral active participle
    Given an augmented verb
    When the derived noun is from an augmented quad verb is "PassiveParticiple"
    Then singular masculine nouns of the quad verb "<verb>" of formula "<formula>" are nominative "<m_single_n>" and accusative "<m_single_a>" and genitive "<m_single_g>"
    And  singular feminine nouns of the quad verb "<verb>" of formula "<formula>" are nominative "<f_single_n>" and accusative "<f_single_a>" and genitive "<f_single_g>"
    And  dual masculine nouns of the quad verb "<verb>" of formula "<formula>" are nominative "<m_dual_n>" and accusative "<m_dual_a>" and genitive "<m_dual_g>"
    And  dual feminine nouns of the quad verb "<verb>" of formula "<formula>" are nominative "<f_dual_n>" and accusative "<f_dual_a>" and genitive "<f_dual_g>"
    And  plural masculine nouns of the quad verb "<verb>" of formula "<formula>" are nominative "<m_plural_n>" and accusative "<m_plural_a>" and genitive "<m_plural_g>"
    And  plural feminine nouns of the quad verb "<verb>" of formula "<formula>" are nominative "<f_plural_n>" and accusative "<f_plural_a>" and genitive "<f_plural_g>"
    Examples:
      | verb | formula | m_single_n   | f_single_n     | m_dual_n        | f_dual_n          | m_plural_n      | f_plural_n      | m_single_a    | f_single_a     | m_dual_a         | f_dual_a           | m_plural_a      | f_plural_a      | m_single_g   | f_single_g     | m_dual_g         | f_dual_g           | m_plural_g      | f_plural_g      |
      | دحرج | 1       | مُتَدَحْرَجٌ | مُتَدَحْرَجَةٌ | مُتَدَحْرَجَانِ | مُتَدَحْرَجَتَانِ | مُتَدَحْرَجُونَ | مُتَدَحْرَجَاتٌ | مُتَدَحْرَجًا | مُتَدَحْرَجَةً | مُتَدَحْرَجَيْنِ | مُتَدَحْرَجَتَيْنِ | مُتَدَحْرَجِينَ | مُتَدَحْرَجَاتٍ | مُتَدَحْرَجٍ | مُتَدَحْرَجَةٍ | مُتَدَحْرَجَيْنِ | مُتَدَحْرَجَتَيْنِ | مُتَدَحْرَجِينَ | مُتَدَحْرَجَاتٍ |
      | بلور | 1       | مُتَبَلْوَرٌ | مُتَبَلْوَرَةٌ | مُتَبَلْوَرَانِ | مُتَبَلْوَرَتَانِ | مُتَبَلْوَرُونَ | مُتَبَلْوَرَاتٌ | مُتَبَلْوَرًا | مُتَبَلْوَرَةً | مُتَبَلْوَرَيْنِ | مُتَبَلْوَرَتَيْنِ | مُتَبَلْوَرِينَ | مُتَبَلْوَرَاتٍ | مُتَبَلْوَرٍ | مُتَبَلْوَرَةٍ | مُتَبَلْوَرَيْنِ | مُتَبَلْوَرَتَيْنِ | مُتَبَلْوَرِينَ | مُتَبَلْوَرَاتٍ |
      | جءجء | 1       | مُتَجَأْجَأٌ | مُتَجَأْجَأَةٌ | مُتَجَأْجَآنِ   | مُتَجَأْجَأَتَانِ | مُتَجَأْجَؤُونَ | مُتَجَأْجَآتٌ   | مُتَجَأْجَأً  | مُتَجَأْجَأَةً | مُتَجَأْجَأَيْنِ | مُتَجَأْجَأَتَيْنِ | مُتَجَأْجَئِينَ | مُتَجَأْجَآتٍ   | مُتَجَأْجَأٍ | مُتَجَأْجَأَةٍ | مُتَجَأْجَأَيْنِ | مُتَجَأْجَأَتَيْنِ | مُتَجَأْجَئِينَ | مُتَجَأْجَآتٍ   |
      | رهيء | 1       | مُتَرَهْيَأٌ | مُتَرَهْيَأَةٌ | مُتَرَهْيَآنِ   | مُتَرَهْيَأَتَانِ | مُتَرَهْيَؤُونَ | مُتَرَهْيَآتٌ   | مُتَرَهْيَأً  | مُتَرَهْيَأَةً | مُتَرَهْيَأَيْنِ | مُتَرَهْيَأَتَيْنِ | مُتَرَهْيَئِينَ | مُتَرَهْيَآتٍ   | مُتَرَهْيَأٍ | مُتَرَهْيَأَةٍ | مُتَرَهْيَأَيْنِ | مُتَرَهْيَأَتَيْنِ | مُتَرَهْيَئِينَ | مُتَرَهْيَآتٍ   |
      | زلزل | 1       | مُتَزَلْزَلٌ | مُتَزَلْزَلَةٌ | مُتَزَلْزَلانِ  | مُتَزَلْزَلَتَانِ | مُتَزَلْزَلُونَ | مُتَزَلْزَلاتٌ  | مُتَزَلْزَلاً | مُتَزَلْزَلَةً | مُتَزَلْزَلَيْنِ | مُتَزَلْزَلَتَيْنِ | مُتَزَلْزَلِينَ | مُتَزَلْزَلاتٍ  | مُتَزَلْزَلٍ | مُتَزَلْزَلَةٍ | مُتَزَلْزَلَيْنِ | مُتَزَلْزَلَتَيْنِ | مُتَزَلْزَلِينَ | مُتَزَلْزَلَاتٍ |
      | سيطر | 1       | مُتَسَيْطَرٌ | مُتَسَيْطَرَةٌ | مُتَسَيْطَرَانِ | مُتَسَيْطَرَتَانِ | مُتَسَيْطَرُونَ | مُتَسَيْطَرَاتٌ | مُتَسَيْطَرًا | مُتَسَيْطَرَةً | مُتَسَيْطَرَيْنِ | مُتَسَيْطَرَتَيْنِ | مُتَسَيْطَرِينَ | مُتَسَيْطَرَاتٍ | مُتَسَيْطَرٍ | مُتَسَيْطَرَةٍ | مُتَسَيْطَرَيْنِ | مُتَسَيْطَرَتَيْنِ | مُتَسَيْطَرِينَ | مُتَسَيْطَرَاتٍ |
      | طمءن | 1       | مُتَطَمْأَنٌ | مُتَطَمْأَنَةٌ | مُتَطَمْأَنَانِ | مُتَطَمْأَنَتَانِ | مُتَطَمْأَنُونَ | مُتَطَمْأَنَاتٌ | مُتَطَمْأَنًا | مُتَطَمْأَنَةً | مُتَطَمْأَنَيْنِ | مُتَطَمْأَنَتَيْنِ | مُتَطَمْأَنِينَ | مُتَطَمْأَنَاتٍ | مُتَطَمْأَنٍ | مُتَطَمْأَنَةٍ | مُتَطَمْأَنَيْنِ | مُتَطَمْأَنَتَيْنِ | مُتَطَمْأَنِينَ | مُتَطَمْأَنَاتٍ |
      | طمءن | 3       | مُطْمَأَنٌّ  | مُطْمَأَنَّةٌ  | مُطْمَأَنَّانِ  | مُطْمَأَنَّتَانِ  | مُطْمَأَنُّونَ  | مُطْمَأَنَّاتٌ  | مُطْمَأَنًّا  | مُطْمَأَنَّةً  | مُطْمَأَنَّيْنِ  | مُطْمَأَنَّتَيْنِ  | مُطْمَأَنِّينَ  | مُطْمَأَنَّاتٍ  | مُطْمَأَنٍّ  | مُطْمَأَنَّةٍ  | مُطْمَأَنَّيْنِ  | مُطْمَأَنَّتَيْنِ  | مُطْمَأَنِّينَ  | مُطْمَأَنَّاتٍ  |
      | قلسي | 1       | مُتَقَلْسًى  | مُتَقَلْسَاةٌ  | مُتَقَلْسَيَانِ | مُتَقَلْسَاتَانِ  | مُتَقَلْسَوْنَ  | مُتَقَلْسَيَاتٌ | مُتَقَلْسًى   | مُتَقَلْسَاةً  | مُتَقَلْسَيَيْنِ | مُتَقَلْسَاتَيْنِ  | مُتَقَلْسَيْنَ  | مُتَقَلْسَيَاتٍ | مُتَقَلْسًى  | مُتَقَلْسَاةٍ  | مُتَقَلْسَيَيْنِ | مُتَقَلْسَاتَيْنِ  | مُتَقَلْسَيْنَ  | مُتَقَلْسَيَاتٍ |
      | شرءب | 3       | مُشْرَأَبٌّ  | مُشْرَأَبَّةٌ  | مُشْرَأَبَّانِ  | مُشْرَأَبَّتَانِ  | مُشْرَأَبُّونَ  | مُشْرَأَبَّاتٌ  | مُشْرَأَبًّا  | مُشْرَأَبَّةً  | مُشْرَأَبَّيْنِ  | مُشْرَأَبَّتَيْنِ  | مُشْرَأَبِّينَ  | مُشْرَأَبَّاتٍ  | مُشْرَأَبٍّ  | مُشْرَأَبَّةٍ  | مُشْرَأَبَّيْنِ  | مُشْرَأَبَّتَيْنِ  | مُشْرَأَبِّينَ  | مُشْرَأَبَّاتٍ  |
      | مرءي | 1       | مُتَمَرْأًى  | مُتَمَرْآةٌ    | مُتَمَرْأَيَانِ | مُتَمَرْآتَانِ    | مُتَمَرْأَوْنَ  | مُتَمَرْأَيَاتٌ | مُتَمَرْأًى   | مُتَمَرْآةً    | مُتَمَرْأَيَيْنِ | مُتَمَرْآتَيْنِ    | مُتَمَرْأَيْنَ  | مُتَمَرْأَيَاتٍ | مُتَمَرْأًى  | مُتَمَرْآةٍ    | مُتَمَرْأَيَيْنِ | مُتَمَرْآتَيْنِ    | مُتَمَرْأَيْنَ  | مُتَمَرْأَيَاتٍ |
      | شيطن | 1       | مُتَشَيْطَنٌ | مُتَشَيْطَنَةٌ | مُتَشَيْطَنَانِ | مُتَشَيْطَنَتَانِ | مُتَشَيْطَنُونَ | مُتَشَيْطَنَاتٌ | مُتَشَيْطَنًا | مُتَشَيْطَنَةً | مُتَشَيْطَنَيْنِ | مُتَشَيْطَنَتَيْنِ | مُتَشَيْطَنِينَ | مُتَشَيْطَنَاتٍ | مُتَشَيْطَنٍ | مُتَشَيْطَنَةٍ | مُتَشَيْطَنَيْنِ | مُتَشَيْطَنَتَيْنِ | مُتَشَيْطَنِينَ | مُتَشَيْطَنَاتٍ |
      | وشوش | 1       | مُتَوَشْوَشٌ | مُتَوَشْوَشَةٌ | مُتَوَشْوَشَانِ | مُتَوَشْوَشَتَانِ | مُتَوَشْوَشُونَ | مُتَوَشْوَشَاتٌ | مُتَوَشْوَشًا | مُتَوَشْوَشَةً | مُتَوَشْوَشَيْنِ | مُتَوَشْوَشَتَيْنِ | مُتَوَشْوَشِينَ | مُتَوَشْوَشَاتٍ | مُتَوَشْوَشٍ | مُتَوَشْوَشَةٍ | مُتَوَشْوَشَيْنِ | مُتَوَشْوَشَتَيْنِ | مُتَوَشْوَشِينَ | مُتَوَشْوَشَاتٍ |
      | بخدن | 2       | مُبْخَنْدَنٌ | مُبْخَنْدَنَةٌ | مُبْخَنْدَنَانِ | مُبْخَنْدَنَتَانِ | مُبْخَنْدَنُونَ | مُبْخَنْدَنَاتٌ | مُبْخَنْدَنًا | مُبْخَنْدَنَةً | مُبْخَنْدَنَيْنِ | مُبْخَنْدَنَتَيْنِ | مُبْخَنْدَنِينَ | مُبْخَنْدَنَاتٍ | مُبْخَنْدَنٍ | مُبْخَنْدَنَةٍ | مُبْخَنْدَنَيْنِ | مُبْخَنْدَنَتَيْنِ | مُبْخَنْدَنِينَ | مُبْخَنْدَنَاتٍ |
      | حبطء | 2       | مُحْبَنْطَأٌ | مُحْبَنْطَأَةٌ | مُحْبَنْطَآنِ   | مُحْبَنْطَأَتَانِ | مُحْبَنْطَؤُونَ | مُحْبَنْطَآتٌ   | مُحْبَنْطَأً  | مُحْبَنْطَأَةً | مُحْبَنْطَأَيْنِ | مُحْبَنْطَأَتَيْنِ | مُحْبَنْطَئِينَ | مُحْبَنْطَآتٍ   | مُحْبَنْطَأٍ | مُحْبَنْطَأَةٍ | مُحْبَنْطَأَيْنِ | مُحْبَنْطَأَتَيْنِ | مُحْبَنْطَئِينَ | مُحْبَنْطَآتٍ   |
      | حوصل | 2       | مُحْوَنْصَلٌ | مُحْوَنْصَلَةٌ | مُحْوَنْصَلانِ  | مُحْوَنْصَلَتَانِ | مُحْوَنْصَلُونَ | مُحْوَنْصَلاتٌ  | مُحْوَنْصَلاً | مُحْوَنْصَلَةً | مُحْوَنْصَلَيْنِ | مُحْوَنْصَلَتَيْنِ | مُحْوَنْصَلِينَ | مُحْوَنْصَلاتٍ  | مُحْوَنْصَلٍ | مُحْوَنْصَلَةٍ | مُحْوَنْصَلَيْنِ | مُحْوَنْصَلَتَيْنِ | مُحْوَنْصَلِينَ | مُحْوَنْصَلَاتٍ |
      | سلقي | 2       | مُسْلَنْقًى  | مُسْلَنْقَاةٌ  | مُسْلَنْقَيَانِ | مُسْلَنْقَاتَانِ  | مُسْلَنْقَوْنَ  | مُسْلَنْقَيَاتٌ | مُسْلَنْقًى   | مُسْلَنْقَاةً  | مُسْلَنْقَيَيْنِ | مُسْلَنْقَاتَيْنِ  | مُسْلَنْقَيْنَ  | مُسْلَنْقَيَاتٍ | مُسْلَنْقًى  | مُسْلَنْقَاةٍ  | مُسْلَنْقَيَيْنِ | مُسْلَنْقَاتَيْنِ  | مُسْلَنْقَيْنَ  | مُسْلَنْقَيَاتٍ |
      | فرقع | 1       | مُتَفَرْقَعٌ | مُتَفَرْقَعَةٌ | مُتَفَرْقَعَانِ | مُتَفَرْقَعَتَانِ | مُتَفَرْقَعُونَ | مُتَفَرْقَعَاتٌ | مُتَفَرْقَعًا | مُتَفَرْقَعَةً | مُتَفَرْقَعَيْنِ | مُتَفَرْقَعَتَيْنِ | مُتَفَرْقَعِينَ | مُتَفَرْقَعَاتٍ | مُتَفَرْقَعٍ | مُتَفَرْقَعَةٍ | مُتَفَرْقَعَيْنِ | مُتَفَرْقَعَتَيْنِ | مُتَفَرْقَعِينَ | مُتَفَرْقَعَاتٍ |
      | فرقع | 2       | مُفْرَنْقَعٌ | مُفْرَنْقَعَةٌ | مُفْرَنْقَعَانِ | مُفْرَنْقَعَتَانِ | مُفْرَنْقَعُونَ | مُفْرَنْقَعَاتٌ | مُفْرَنْقَعًا | مُفْرَنْقَعَةً | مُفْرَنْقَعَيْنِ | مُفْرَنْقَعَتَيْنِ | مُفْرَنْقَعِينَ | مُفْرَنْقَعَاتٍ | مُفْرَنْقَعٍ | مُفْرَنْقَعَةٍ | مُفْرَنْقَعَيْنِ | مُفْرَنْقَعَتَيْنِ | مُفْرَنْقَعِينَ | مُفْرَنْقَعَاتٍ |
      | قشعر | 1       | مُتَقَشْعَرٌ | مُتَقَشْعَرَةٌ | مُتَقَشْعَرَانِ | مُتَقَشْعَرَتَانِ | مُتَقَشْعَرُونَ | مُتَقَشْعَرَاتٌ | مُتَقَشْعَرًا | مُتَقَشْعَرَةً | مُتَقَشْعَرَيْنِ | مُتَقَشْعَرَتَيْنِ | مُتَقَشْعَرِينَ | مُتَقَشْعَرَاتٍ | مُتَقَشْعَرٍ | مُتَقَشْعَرَةٍ | مُتَقَشْعَرَيْنِ | مُتَقَشْعَرَتَيْنِ | مُتَقَشْعَرِينَ | مُتَقَشْعَرَاتٍ |
      | قشعر | 3       | مُقْشَعَرٌّ  | مُقْشَعَرَّةٌ  | مُقْشَعَرَّانِ  | مُقْشَعَرَّتَانِ  | مُقْشَعَرُّونَ  | مُقْشَعَرَّاتٌ  | مُقْشَعَرًّا  | مُقْشَعَرَّةً  | مُقْشَعَرَّيْنِ  | مُقْشَعَرَّتَيْنِ  | مُقْشَعَرِّينَ  | مُقْشَعَرَّاتٍ  | مُقْشَعَرٍّ  | مُقْشَعَرَّةٍ  | مُقْشَعَرَّيْنِ  | مُقْشَعَرَّتَيْنِ  | مُقْشَعَرِّينَ  | مُقْشَعَرَّاتٍ  |
      | كوءد | 3       | مُكْوَأَدٌّ  | مُكْوَأَدَّةٌ  | مُكْوَأَدَّانِ  | مُكْوَأَدَّتَانِ  | مُكْوَأَدُّونَ  | مُكْوَأَدَّاتٌ  | مُكْوَأَدًّا  | مُكْوَأَدَّةً  | مُكْوَأَدَّيْنِ  | مُكْوَأَدَّتَيْنِ  | مُكْوَأَدِّينَ  | مُكْوَأَدَّاتٍ  | مُكْوَأَدٍّ  | مُكْوَأَدَّةٍ  | مُكْوَأَدَّيْنِ  | مُكْوَأَدَّتَيْنِ  | مُكْوَأَدِّينَ  | مُكْوَأَدَّاتٍ  |
      | كوهد | 3       | مُكْوَهَدٌّ  | مُكْوَهَدَّةٌ  | مُكْوَهَدَّانِ  | مُكْوَهَدَّتَانِ  | مُكْوَهَدُّونَ  | مُكْوَهَدَّاتٌ  | مُكْوَهَدًّا  | مُكْوَهَدَّةً  | مُكْوَهَدَّيْنِ  | مُكْوَهَدَّتَيْنِ  | مُكْوَهَدِّينَ  | مُكْوَهَدَّاتٍ  | مُكْوَهَدٍّ  | مُكْوَهَدَّةٍ  | مُكْوَهَدَّيْنِ  | مُكْوَهَدَّتَيْنِ  | مُكْوَهَدِّينَ  | مُكْوَهَدَّاتٍ  |
      | مضحن | 3       | مُمْضَحَنٌّ  | مُمْضَحَنَّةٌ  | مُمْضَحَنَّانِ  | مُمْضَحَنَّتَانِ  | مُمْضَحَنُّونَ  | مُمْضَحَنَّاتٌ  | مُمْضَحَنًّا  | مُمْضَحَنَّةً  | مُمْضَحَنَّيْنِ  | مُمْضَحَنَّتَيْنِ  | مُمْضَحَنِّينَ  | مُمْضَحَنَّاتٍ  | مُمْضَحَنٍّ  | مُمْضَحَنَّةٍ  | مُمْضَحَنَّيْنِ  | مُمْضَحَنَّتَيْنِ  | مُمْضَحَنِّينَ  | مُمْضَحَنَّاتٍ  |
