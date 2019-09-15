Feature: تصريف اسم الزمان و المكان من الفعل الثلاثي المزيد

  Scenario Outline: augmented trilateral time and place
    Given an augmented verb
    When the derived noun is from an augmented verb is "TimeAndPlace"
    Then singular masculine nouns of the verb "<verb>" of formula "<formula>" are nominative "<m_single_n>" and accusative "<m_single_a>" and genitive "<m_single_g>"
    And  singular feminine nouns of the verb "<verb>" of formula "<formula>" are nominative "<f_single_n>" and accusative "<f_single_a>" and genitive "<f_single_g>"
    And  dual masculine nouns of the verb "<verb>" of formula "<formula>" are nominative "<m_dual_n>" and accusative "<m_dual_a>" and genitive "<m_dual_g>"
    And  dual feminine nouns of the verb "<verb>" of formula "<formula>" are nominative "<f_dual_n>" and accusative "<f_dual_a>" and genitive "<f_dual_g>"
    And  plural masculine nouns of the verb "<verb>" of formula "<formula>" are nominative "<m_plural_n>" and accusative "<m_plural_a>" and genitive "<m_plural_g>"
    And  plural feminine nouns of the verb "<verb>" of formula "<formula>" are nominative "<f_plural_n>" and accusative "<f_plural_a>" and genitive "<f_plural_g>"
    Examples:
      | verb | formula | m_single_n   | f_single_n | m_dual_n        | f_dual_n | m_plural_n | f_plural_n | m_single_a    | f_single_a | m_dual_a         | f_dual_a | m_plural_a | f_plural_a | m_single_g   | f_single_g | m_dual_g         | f_dual_g | m_plural_g | f_plural_g |
      | ءتي  | 1       | مُؤْتًى      |            | مُؤْتَيَانِ     |          |            |            | مُؤْتًى       |            | مُؤْتَيَيْنِ     |          |            |            | مُؤْتًى      |            | مُؤْتَيَيْنِ     |          |            |            |
      | ءتي  | 2       | مُؤَتًّى     |            | مُؤَتَّيَانِ    |          |            |            | مُؤَتًّى      |            | مُؤَتَّيَيْنِ    |          |            |            | مُؤَتًّى     |            | مُؤَتَّيَيْنِ    |          |            |            |
      | ءتي  | 8       | مُتَأَتًّى   |            | مُتَأَتَّيَانِ  |          |            |            | مُتَأَتًّى    |            | مُتَأَتَّيَيْنِ  |          |            |            | مُتَأَتًّى   |            | مُتَأَتَّيَيْنِ  |          |            |            |
      | ءتي  | 9       | مُسْتَأْتًى  |            | مُسْتَأْتَيَانِ |          |            |            | مُسْتَأْتًى   |            | مُسْتَأْتَيَيْنِ |          |            |            | مُسْتَأْتًى  |            | مُسْتَأْتَيَيْنِ |          |            |            |
      | ءدي  | 1       | مُؤْدًى      |            | مُؤْدَيَانِ     |          |            |            | مُؤْدًى       |            | مُؤْدَيَيْنِ     |          |            |            | مُؤْدًى      |            | مُؤْدَيَيْنِ     |          |            |            |
      | ءدي  | 2       | مُؤَدًّى     |            | مُؤَدَّيَانِ    |          |            |            | مُؤَدًّى      |            | مُؤَدَّيَيْنِ    |          |            |            | مُؤَدًّى     |            | مُؤَدَّيَيْنِ    |          |            |            |
      | ءدي  | 7       | مُتَآدًى     |            | مُتَآدَيَانِ    |          |            |            | مُتَآدًى      |            | مُتَآدَيَيْنِ    |          |            |            | مُتَآدًى     |            | مُتَآدَيَيْنِ    |          |            |            |
      | ءدي  | 8       | مُتَأَدًّى   |            | مُتَأَدَّيَانِ  |          |            |            | مُتَأَدًّى    |            | مُتَأَدَّيَيْنِ  |          |            |            | مُتَأَدًّى   |            | مُتَأَدَّيَيْنِ  |          |            |            |
      | ءدي  | 9       | مُسْتَأْدًى  |            | مُسْتَأْدَيَانِ |          |            |            | مُسْتَأْدًى   |            | مُسْتَأْدَيَيْنِ |          |            |            | مُسْتَأْدًى  |            | مُسْتَأْدَيَيْنِ |          |            |            |
      | ءجر  | 1       | مُؤْجَرٌ     |            | مُؤْجَرَانِ     |          |            |            | مُؤْجَرًا     |            | مُؤْجَرَيْنِ     |          |            |            | مُؤْجَرٍ     |            | مُؤْجَرَيْنِ     |          |            |            |
      | ءجر  | 3       | مُؤَاجَرٌ    |            | مُؤَاجَرَانِ    |          |            |            | مُؤَاجَرًا    |            | مُؤَاجَرَيْنِ    |          |            |            | مُؤَاجَرٍ    |            | مُؤَاجَرَيْنِ    |          |            |            |
      | ءجر  | 5       | مُؤْتَجَرٌ   |            | مُؤْتَجَرَانِ   |          |            |            | مُؤْتَجَرًا   |            | مُؤْتَجَرَيْنِ   |          |            |            | مُؤْتَجَرٍ   |            | مُؤْتَجَرَيْنِ   |          |            |            |
      | ءجر  | 9       | مُسْتَأْجَرٌ |            | مُسْتَأْجَرَانِ |          |            |            | مُسْتَأْجَرًا |            | مُسْتَأْجَرَيْنِ |          |            |            | مُسْتَأْجَرٍ |            | مُسْتَأْجَرَيْنِ |          |            |            |
      | بيض  | 1       | مُبَاضٌ      |            | مُبَاضَانِ      |          |            |            | مُبَاضًا      |            | مُبَاضَيْنِ      |          |            |            | مُبَاضٍ      |            | مُبَاضَيْنِ      |          |            |            |
      | بيض  | 12      | مُبْيَاضٌّ   |            | مُبْيَاضَّانِ   |          |            |            | مُبْيَاضًّا   |            | مُبْيَاضَّيْنِ   |          |            |            | مُبْيَاضٍّ   |            | مُبْيَاضَّيْنِ   |          |            |            |
      | بيض  | 2       | مُبَيَّضٌ    |            | مُبَيَّضَانِ    |          |            |            | مُبَيَّضًا    |            | مُبَيَّضَيْنِ    |          |            |            | مُبَيَّضٍ    |            | مُبَيَّضَيْنِ    |          |            |            |
      | بيض  | 3       | مُبَايَضٌ    |            | مُبَايَضَانِ    |          |            |            | مُبَايَضًا    |            | مُبَايَضَيْنِ    |          |            |            | مُبَايَضٍ    |            | مُبَايَضَيْنِ    |          |            |            |
      | بيض  | 5       | مُبْتَاضٌ    |            | مُبْتَاضَانِ    |          |            |            | مُبْتَاضًا    |            | مُبْتَاضَيْنِ    |          |            |            | مُبْتَاضٍ    |            | مُبْتَاضَيْنِ    |          |            |            |
      | بيض  | 6       | مُبْيَضٌّ    |            | مُبْيَضَّانِ    |          |            |            | مُبْيَضًّا    |            | مُبْيَضَّيْنِ    |          |            |            | مُبْيَضٍّ    |            | مُبْيَضَّيْنِ    |          |            |            |
      | بيض  | 9       | مُسْتَبَاضٌ  |            | مُسْتَبَاضَانِ  |          |            |            | مُسْتَبَاضًا  |            | مُسْتَبَاضَيْنِ  |          |            |            | مُسْتَبَاضٍ  |            | مُسْتَبَاضَيْنِ  |          |            |            |
      | ءكل  | 1       | مُؤْكَلٌ     |            | مُؤْكَلانِ      |          |            |            | مُؤْكَلاً     |            | مُؤْكَلَيْنِ     |          |            |            | مُؤْكَلٍ     |            | مُؤْكَلَيْنِ     |          |            |            |
      | ءكل  | 2       | مُؤَكَّلٌ    |            | مُؤَكَّلانِ     |          |            |            | مُؤَكَّلاً    |            | مُؤَكَّلَيْنِ    |          |            |            | مُؤَكَّلٍ    |            | مُؤَكَّلَيْنِ    |          |            |            |
      | ءكل  | 3       | مُؤَاكَلٌ    |            | مُؤَاكَلانِ     |          |            |            | مُؤَاكَلاً    |            | مُؤَاكَلَيْنِ    |          |            |            | مُؤَاكَلٍ    |            | مُؤَاكَلَيْنِ    |          |            |            |
      | ءكل  | 5       | مُؤْتَكَلٌ   |            | مُؤْتَكَلانِ    |          |            |            | مُؤْتَكَلاً   |            | مُؤْتَكَلَيْنِ   |          |            |            | مُؤْتَكَلٍ   |            | مُؤْتَكَلَيْنِ   |          |            |            |
      | ءكل  | 7       | مُتَآكَلٌ    |            | مُتَآكَلانِ     |          |            |            | مُتَآكَلاً    |            | مُتَآكَلَيْنِ    |          |            |            | مُتَآكَلٍ    |            | مُتَآكَلَيْنِ    |          |            |            |
      | ءكل  | 8       | مُتَأَكَّلٌ  |            | مُتَأَكَّلانِ   |          |            |            | مُتَأَكَّلاً  |            | مُتَأَكَّلَيْنِ  |          |            |            | مُتَأَكَّلٍ  |            | مُتَأَكَّلَيْنِ  |          |            |            |
      | ءكل  | 9       | مُسْتَأْكَلٌ |            | مُسْتَأْكَلانِ  |          |            |            | مُسْتَأْكَلاً |            | مُسْتَأْكَلَيْنِ |          |            |            | مُسْتَأْكَلٍ |            | مُسْتَأْكَلَيْنِ |          |            |            |
      | جءل  | 6       | مُجْأَلٌّ    |            | مُجْأَلاَّنِ    |          |            |            | مُجْأَلًّا    |            | مُجْأَلَّيْنِ    |          |            |            | مُجْأَلٍّ    |            | مُجْأَلَّيْنِ    |          |            |            |
      | ءبن  | 2       | مُؤَبَّنٌ    |            | مُؤَبَّنَانِ    |          |            |            | مُؤَبَّنًا    |            | مُؤَبَّنَيْنِ    |          |            |            | مُؤَبَّنٍ    |            | مُؤَبَّنَيْنِ    |          |            |            |
      | ءبن  | 8       | مُتَأَبَّنٌ  |            | مُتَأَبَّنَانِ  |          |            |            | مُتَأَبَّنًا  |            | مُتَأَبَّنَيْنِ  |          |            |            | مُتَأَبَّنٍ  |            | مُتَأَبَّنَيْنِ  |          |            |            |
      | ءذن  | 1       | مُؤْذَنٌ     |            | مُؤْذَنَانِ     |          |            |            | مُؤْذَنًا     |            | مُؤْذَنَيْنِ     |          |            |            | مُؤْذَنٍ     |            | مُؤْذَنَيْنِ     |          |            |            |
      | ءذن  | 2       | مُؤَذَّنٌ    |            | مُؤَذَّنَانِ    |          |            |            | مُؤَذَّنًا    |            | مُؤَذَّنَيْنِ    |          |            |            | مُؤَذَّنٍ    |            | مُؤَذَّنَيْنِ    |          |            |            |
      | ءذن  | 8       | مُتَأَذَّنٌ  |            | مُتَأَذَّنَانِ  |          |            |            | مُتَأَذَّنًا  |            | مُتَأَذَّنَيْنِ  |          |            |            | مُتَأَذَّنٍ  |            | مُتَأَذَّنَيْنِ  |          |            |            |
      | ءذن  | 9       | مُسْتَأْذَنٌ |            | مُسْتَأْذَنَانِ |          |            |            | مُسْتَأْذَنًا |            | مُسْتَأْذَنَيْنِ |          |            |            | مُسْتَأْذَنٍ |            | مُسْتَأْذَنَيْنِ |          |            |            |
      | حزو  | 8       | مُتَحَزًّى   |            | مُتَحَزَّيَانِ  |          |            |            | مُتَحَزًّى    |            | مُتَحَزَّيَيْنِ  |          |            |            | مُتَحَزًّى   |            | مُتَحَزَّيَيْنِ  |          |            |            |
      | حزو  | 10      | مُحْزَوْزًى  |            | مُحْزَوْزَيَانِ |          |            |            | مُحْزَوْزًى   |            | مُحْزَوْزَيَيْنِ |          |            |            | مُحْزَوْزًى  |            | مُحْزَوْزَيَيْنِ |          |            |            |
      | جءي  | 11      | مُجْأَوًّى   |            | مُجْأَوَّيَانِ  |          |            |            | مُجْأَوًّى    |            | مُجْأَوَّيَيْنِ  |          |            |            | مُجْأَوًّى   |            | مُجْأَوَّيَيْنِ  |          |            |            |
      | جءي  | 1       | مُجْأًى      |            | مُجْأَيَانِ     |          |            |            | مُجْأًى       |            | مُجْأَيَيْنِ     |          |            |            | مُجْأًى      |            | مُجْأَيَيْنِ     |          |            |            |
      | دهم  | 1       | مُدْهَمٌ     |            | مُدْهَمَانِ     |          |            |            | مُدْهَمًا     |            | مُدْهَمَيْنِ     |          |            |            | مُدْهَمٍ     |            | مُدْهَمَيْنِ     |          |            |            |
      | دهم  | 12      | مُدْهَامٌّ   |            | مُدْهَامَّانِ   |          |            |            | مُدْهَامًّا   |            | مُدْهَامَّيْنِ   |          |            |            | مُدْهَامٍّ   |            | مُدْهَامَّيْنِ   |          |            |            |
      | دهم  | 2       | مُدَهَّمٌ    |            | مُدَهَّمَانِ    |          |            |            | مُدَهَّمًا    |            | مُدَهَّمَيْنِ    |          |            |            | مُدَهَّمٍ    |            | مُدَهَّمَيْنِ    |          |            |            |
      | دهم  | 6       | مُدْهَمٌّ    |            | مُدْهَمَّانِ    |          |            |            | مُدْهَمًّا    |            | مُدْهَمَّيْنِ    |          |            |            | مُدْهَمٍّ    |            | مُدْهَمَّيْنِ    |          |            |            |
      | دهم  | 8       | مُتَدَهَّمٌ  |            | مُتَدَهَّمَانِ  |          |            |            | مُتَدَهَّمًا  |            | مُتَدَهَّمَيْنِ  |          |            |            | مُتَدَهَّمٍ  |            | مُتَدَهَّمَيْنِ  |          |            |            |
      | بلج  | 1       | مُبْلَجٌ     |            | مُبْلَجَانِ     |          |            |            | مُبْلَجًا     |            | مُبْلَجَيْنِ     |          |            |            | مُبْلَجٍ     |            | مُبْلَجَيْنِ     |          |            |            |
      | بلج  | 12      | مُبْلاجٌّ    |            | مُبْلاجَّانِ    |          |            |            | مُبْلاجًّا    |            | مُبْلاجَّيْنِ    |          |            |            | مُبْلاجٍّ    |            | مُبْلَاجَّيْنِ   |          |            |            |
      | بلج  | 4       | مُنْبَلَجٌ   |            | مُنْبَلَجَانِ   |          |            |            | مُنْبَلَجًا   |            | مُنْبَلَجَيْنِ   |          |            |            | مُنْبَلَجٍ   |            | مُنْبَلَجَيْنِ   |          |            |            |
      | بلج  | 5       | مُبْتَلَجٌ   |            | مُبْتَلَجَانِ   |          |            |            | مُبْتَلَجًا   |            | مُبْتَلَجَيْنِ   |          |            |            | مُبْتَلَجٍ   |            | مُبْتَلَجَيْنِ   |          |            |            |
      | بلج  | 8       | مُتَبَلَّجٌ  |            | مُتَبَلَّجَانِ  |          |            |            | مُتَبَلَّجًا  |            | مُتَبَلَّجَيْنِ  |          |            |            | مُتَبَلَّجٍ  |            | مُتَبَلَّجَيْنِ  |          |            |            |
      | قبل  | 1       | مُقْبَلٌ     |            | مُقْبَلانِ      |          |            |            | مُقْبَلاً     |            | مُقْبَلَيْنِ     |          |            |            | مُقْبَلٍ     |            | مُقْبَلَيْنِ     |          |            |            |
      | قبل  | 12      | مُقْبَالٌّ   |            | مُقْبَالاَّنِ   |          |            |            | مُقْبَالًّا   |            | مُقْبَالَّيْنِ   |          |            |            | مُقْبَالٍّ   |            | مُقْبَالَّيْنِ   |          |            |            |
      | قبل  | 2       | مُقَبَّلٌ    |            | مُقَبَّلانِ     |          |            |            | مُقَبَّلاً    |            | مُقَبَّلَيْنِ    |          |            |            | مُقَبَّلٍ    |            | مُقَبَّلَيْنِ    |          |            |            |
      | قبل  | 3       | مُقَابَلٌ    |            | مُقَابَلانِ     |          |            |            | مُقَابَلاً    |            | مُقَابَلَيْنِ    |          |            |            | مُقَابَلٍ    |            | مُقَابَلَيْنِ    |          |            |            |
      | قبل  | 5       | مُقْتَبَلٌ   |            | مُقْتَبَلانِ    |          |            |            | مُقْتَبَلاً   |            | مُقْتَبَلَيْنِ   |          |            |            | مُقْتَبَلٍ   |            | مُقْتَبَلَيْنِ   |          |            |            |
      | قبل  | 6       | مُقْبَلٌّ    |            | مُقْبَلاَّنِ    |          |            |            | مُقْبَلًّا    |            | مُقْبَلَّيْنِ    |          |            |            | مُقْبَلٍّ    |            | مُقْبَلَّيْنِ    |          |            |            |
      | قبل  | 7       | مُتَقَابَلٌ  |            | مُتَقَابَلانِ   |          |            |            | مُتَقَابَلاً  |            | مُتَقَابَلَيْنِ  |          |            |            | مُتَقَابَلٍ  |            | مُتَقَابَلَيْنِ  |          |            |            |
      | قبل  | 8       | مُتَقَبَّلٌ  |            | مُتَقَبَّلانِ   |          |            |            | مُتَقَبَّلاً  |            | مُتَقَبَّلَيْنِ  |          |            |            | مُتَقَبَّلٍ  |            | مُتَقَبَّلَيْنِ  |          |            |            |
      | قبل  | 9       | مُسْتَقْبَلٌ |            | مُسْتَقْبَلانِ  |          |            |            | مُسْتَقْبَلاً |            | مُسْتَقْبَلَيْنِ |          |            |            | مُسْتَقْبَلٍ |            | مُسْتَقْبَلَيْنِ |          |            |            |
      | ءيس  | 2       | مُؤَيَّسٌ    |            | مُؤَيَّسَانِ    |          |            |            | مُؤَيَّسًا    |            | مُؤَيَّسَيْنِ    |          |            |            | مُؤَيَّسٍ    |            | مُؤَيَّسَيْنِ    |          |            |            |
      | ءيس  | 8       | مُتَأَيَّسٌ  |            | مُتَأَيَّسَانِ  |          |            |            | مُتَأَيَّسًا  |            | مُتَأَيَّسَيْنِ  |          |            |            | مُتَأَيَّسٍ  |            | مُتَأَيَّسَيْنِ  |          |            |            |
      | صبر  | 1       | مُصْبَرٌ     |            | مُصْبَرَانِ     |          |            |            | مُصْبَرًا     |            | مُصْبَرَيْنِ     |          |            |            | مُصْبَرٍ     |            | مُصْبَرَيْنِ     |          |            |            |
      | صبر  | 12      | مُصْبَارٌّ   |            | مُصْبَارَّانِ   |          |            |            | مُصْبَارًّا   |            | مُصْبَارَّيْنِ   |          |            |            | مُصْبَارٍّ   |            | مُصْبَارَّيْنِ   |          |            |            |
      | صبر  | 2       | مُصَبَّرٌ    |            | مُصَبَّرَانِ    |          |            |            | مُصَبَّرًا    |            | مُصَبَّرَيْنِ    |          |            |            | مُصَبَّرٍ    |            | مُصَبَّرَيْنِ    |          |            |            |
      | صبر  | 3       | مُصَابَرٌ    |            | مُصَابَرَانِ    |          |            |            | مُصَابَرًا    |            | مُصَابَرَيْنِ    |          |            |            | مُصَابَرٍ    |            | مُصَابَرَيْنِ    |          |            |            |
      | صبر  | 5       | مُصْطَبَرٌ   |            | مُصْطَبَرَانِ   |          |            |            | مُصْطَبَرًا   |            | مُصْطَبَرَيْنِ   |          |            |            | مُصْطَبَرٍ   |            | مُصْطَبَرَيْنِ   |          |            |            |
      | صبر  | 8       | مُتَصَبَّرٌ  |            | مُتَصَبَّرَانِ  |          |            |            | مُتَصَبَّرًا  |            | مُتَصَبَّرَيْنِ  |          |            |            | مُتَصَبَّرٍ  |            | مُتَصَبَّرَيْنِ  |          |            |            |
      | صبر  | 9       | مُسْتَصْبَرٌ |            | مُسْتَصْبَرَانِ |          |            |            | مُسْتَصْبَرًا |            | مُسْتَصْبَرَيْنِ |          |            |            | مُسْتَصْبَرٍ |            | مُسْتَصْبَرَيْنِ |          |            |            |
      | نتء  | 5       | مُنْتَتَأٌ   |            | مُنْتَتَآنِ     |          |            |            | مُنْتَتَأً    |            | مُنْتَتَأَيْنِ   |          |            |            | مُنْتَتَأٍ   |            | مُنْتَتَأَيْنِ   |          |            |            |
      | ختو  | 1       | مُخْتًى      |            | مُخْتَيَانِ     |          |            |            | مُخْتًى       |            | مُخْتَيَيْنِ     |          |            |            | مُخْتًى      |            | مُخْتَيَيْنِ     |          |            |            |
      | ختو  | 5       | مُخْتَتًى    |            | مُخْتَتَيَانِ   |          |            |            | مُخْتَتًى     |            | مُخْتَتَيَيْنِ   |          |            |            | مُخْتَتًى    |            | مُخْتَتَيَيْنِ   |          |            |            |
      | نءي  | 1       | مُنْأًى      |            | مُنْأَيَانِ     |          |            |            | مُنْأًى       |            | مُنْأَيَيْنِ     |          |            |            | مُنْأًى      |            | مُنْأَيَيْنِ     |          |            |            |
      | نءي  | 3       | مُنَاءًى     |            | مُنَاءَيَانِ    |          |            |            | مُنَاءًى      |            | مُنَاءَيَيْنِ    |          |            |            | مُنَاءًى     |            | مُنَاءَيَيْنِ    |          |            |            |
      | نءي  | 5       | مُنْتَأًى    |            | مُنْتَأَيَانِ   |          |            |            | مُنْتَأًى     |            | مُنْتَأَيَيْنِ   |          |            |            | مُنْتَأًى    |            | مُنْتَأَيَيْنِ   |          |            |            |
      | نءي  | 7       | مُتَنَاءًى   |            | مُتَنَاءَيَانِ  |          |            |            | مُتَنَاءًى    |            | مُتَنَاءَيَيْنِ  |          |            |            | مُتَنَاءًى   |            | مُتَنَاءَيَيْنِ  |          |            |            |
      | دخر  | 1       | مُدْخَرٌ     |            | مُدْخَرَانِ     |          |            |            | مُدْخَرًا     |            | مُدْخَرَيْنِ     |          |            |            | مُدْخَرٍ     |            | مُدْخَرَيْنِ     |          |            |            |
      | دخر  | 5       | مُدَّخَرٌ    |            | مُدَّخَرَانِ    |          |            |            | مُدَّخَرًا    |            | مُدَّخَرَيْنِ    |          |            |            | مُدَّخَرٍ    |            | مُدَّخَرَيْنِ    |          |            |            |
      | ملح  | 1       | مُمْلَحٌ     |            | مُمْلَحَانِ     |          |            |            | مُمْلَحًا     |            | مُمْلَحَيْنِ     |          |            |            | مُمْلَحٍ     |            | مُمْلَحَيْنِ     |          |            |            |
      | ملح  | 12      | مُمْلاحٌّ    |            | مُمْلاحَّانِ    |          |            |            | مُمْلاحًّا    |            | مُمْلاحَّيْنِ    |          |            |            | مُمْلاحٍّ    |            | مُمْلَاحَّيْنِ   |          |            |            |
      | ملح  | 2       | مُمَلَّحٌ    |            | مُمَلَّحَانِ    |          |            |            | مُمَلَّحًا    |            | مُمَلَّحَيْنِ    |          |            |            | مُمَلَّحٍ    |            | مُمَلَّحَيْنِ    |          |            |            |
      | ملح  | 3       | مُمَالَحٌ    |            | مُمَالَحَانِ    |          |            |            | مُمَالَحًا    |            | مُمَالَحَيْنِ    |          |            |            | مُمَالَحٍ    |            | مُمَالَحَيْنِ    |          |            |            |
      | ملح  | 5       | مُمْتَلَحٌ   |            | مُمْتَلَحَانِ   |          |            |            | مُمْتَلَحًا   |            | مُمْتَلَحَيْنِ   |          |            |            | مُمْتَلَحٍ   |            | مُمْتَلَحَيْنِ   |          |            |            |
      | ملح  | 6       | مُمْلَحٌّ    |            | مُمْلَحَّانِ    |          |            |            | مُمْلَحًّا    |            | مُمْلَحَّيْنِ    |          |            |            | مُمْلَحٍّ    |            | مُمْلَحَّيْنِ    |          |            |            |
      | ملح  | 8       | مُتَمَلَّحٌ  |            | مُتَمَلَّحَانِ  |          |            |            | مُتَمَلَّحًا  |            | مُتَمَلَّحَيْنِ  |          |            |            | مُتَمَلَّحٍ  |            | مُتَمَلَّحَيْنِ  |          |            |            |
      | ملح  | 9       | مُسْتَمْلَحٌ |            | مُسْتَمْلَحَانِ |          |            |            | مُسْتَمْلَحًا |            | مُسْتَمْلَحَيْنِ |          |            |            | مُسْتَمْلَحٍ |            | مُسْتَمْلَحَيْنِ |          |            |            |
      | شءم  | 1       | مُشْأَمٌ     |            | مُشْأَمَانِ     |          |            |            | مُشْأَمًا     |            | مُشْأَمَيْنِ     |          |            |            | مُشْأَمٍ     |            | مُشْأَمَيْنِ     |          |            |            |
      | شءم  | 2       | مُشَأَّمٌ    |            | مُشَأَّمَانِ    |          |            |            | مُشَأَّمًا    |            | مُشَأَّمَيْنِ    |          |            |            | مُشَأَّمٍ    |            | مُشَأَّمَيْنِ    |          |            |            |
      | شءم  | 3       | مُشَاءَمٌ    |            | مُشَاءَمَانِ    |          |            |            | مُشَاءَمًا    |            | مُشَاءَمَيْنِ    |          |            |            | مُشَاءَمٍ    |            | مُشَاءَمَيْنِ    |          |            |            |
      | شءم  | 7       | مُتَشَاءَمٌ  |            | مُتَشَاءَمَانِ  |          |            |            | مُتَشَاءَمًا  |            | مُتَشَاءَمَيْنِ  |          |            |            | مُتَشَاءَمٍ  |            | مُتَشَاءَمَيْنِ  |          |            |            |
      | شءم  | 8       | مُتَشَأَّمٌ  |            | مُتَشَأَّمَانِ  |          |            |            | مُتَشَأَّمًا  |            | مُتَشَأَّمَيْنِ  |          |            |            | مُتَشَأَّمٍ  |            | مُتَشَأَّمَيْنِ  |          |            |            |
      | شءم  | 9       | مُسْتَشْأَمٌ |            | مُسْتَشْأَمَانِ |          |            |            | مُسْتَشْأَمًا |            | مُسْتَشْأَمَيْنِ |          |            |            | مُسْتَشْأَمٍ |            | مُسْتَشْأَمَيْنِ |          |            |            |
      | يقظ  | 1       | مُوقَظٌ      |            | مُوقَظَانِ      |          |            |            | مُوقَظًا      |            | مُوقَظَيْنِ      |          |            |            | مُوقَظٍ      |            | مُوقَظَيْنِ      |          |            |            |
      | يقظ  | 2       | مُيَقَّظٌ    |            | مُيَقَّظَانِ    |          |            |            | مُيَقَّظًا    |            | مُيَقَّظَيْنِ    |          |            |            | مُيَقَّظٍ    |            | مُيَقَّظَيْنِ    |          |            |            |
      | يقظ  | 8       | مُتَيَقَّظٌ  |            | مُتَيَقَّظَانِ  |          |            |            | مُتَيَقَّظًا  |            | مُتَيَقَّظَيْنِ  |          |            |            | مُتَيَقَّظٍ  |            | مُتَيَقَّظَيْنِ  |          |            |            |
      | يقظ  | 9       | مُسْتَيْقَظٌ |            | مُسْتَيْقَظَانِ |          |            |            | مُسْتَيْقَظًا |            | مُسْتَيْقَظَيْنِ |          |            |            | مُسْتَيْقَظٍ |            | مُسْتَيْقَظَيْنِ |          |            |            |
      | ءسو  | 2       | مُؤَسًّى     |            | مُؤَسَّيَانِ    |          |            |            | مُؤَسًّى      |            | مُؤَسَّيَيْنِ    |          |            |            | مُؤَسًّى     |            | مُؤَسَّيَيْنِ    |          |            |            |
      | ءسو  | 3       | مُؤَاسًى     |            | مُؤَاسَيَانِ    |          |            |            | مُؤَاسًى      |            | مُؤَاسَيَيْنِ    |          |            |            | مُؤَاسًى     |            | مُؤَاسَيَيْنِ    |          |            |            |
      | ءسو  | 5       | مُؤْتَسًى    |            | مُؤْتَسَيَانِ   |          |            |            | مُؤْتَسًى     |            | مُؤْتَسَيَيْنِ   |          |            |            | مُؤْتَسًى    |            | مُؤْتَسَيَيْنِ   |          |            |            |
      | ءسو  | 7       | مُتَآسًى     |            | مُتَآسَيَانِ    |          |            |            | مُتَآسًى      |            | مُتَآسَيَيْنِ    |          |            |            | مُتَآسًى     |            | مُتَآسَيَيْنِ    |          |            |            |
      | ءسو  | 8       | مُتَأَسًّى   |            | مُتَأَسَّيَانِ  |          |            |            | مُتَأَسًّى    |            | مُتَأَسَّيَيْنِ  |          |            |            | مُتَأَسًّى   |            | مُتَأَسَّيَيْنِ  |          |            |            |
      | ءسي  | 1       | مُؤْسًى      |            | مُؤْسَيَانِ     |          |            |            | مُؤْسًى       |            | مُؤْسَيَيْنِ     |          |            |            | مُؤْسًى      |            | مُؤْسَيَيْنِ     |          |            |            |
      | ءسي  | 3       | مُؤَاسًى     |            | مُؤَاسَيَانِ    |          |            |            | مُؤَاسًى      |            | مُؤَاسَيَيْنِ    |          |            |            | مُؤَاسًى     |            | مُؤَاسَيَيْنِ    |          |            |            |
      | ءضض  | 3       | مُؤَاضٌّ     |            | مُؤَاضَّانِ     |          |            |            | مُؤَاضًّا     |            | مُؤَاضَّيْنِ     |          |            |            | مُؤَاضٍّ     |            | مُؤَاضَّيْنِ     |          |            |            |
      | ءضض  | 5       | مُؤْتَضٌّ    |            | مُؤْتَضَّانِ    |          |            |            | مُؤْتَضًّا    |            | مُؤْتَضَّيْنِ    |          |            |            | مُؤْتَضٍّ    |            | مُؤْتَضَّيْنِ    |          |            |            |
      | حوي  | 2       | مُحَوًّى     |            | مُحَوَّيَانِ    |          |            |            | مُحَوًّى      |            | مُحَوَّيَيْنِ    |          |            |            | مُحَوًّى     |            | مُحَوَّيَيْنِ    |          |            |            |
      | حوي  | 5       | مُحْتَوًى    |            | مُحْتَوَيَانِ   |          |            |            | مُحْتَوًى     |            | مُحْتَوَيَيْنِ   |          |            |            | مُحْتَوًى    |            | مُحْتَوَيَيْنِ   |          |            |            |
      | حوي  | 8       | مُتَحَوًّى   |            | مُتَحَوَّيَانِ  |          |            |            | مُتَحَوًّى    |            | مُتَحَوَّيَيْنِ  |          |            |            | مُتَحَوًّى   |            | مُتَحَوَّيَيْنِ  |          |            |            |
      | حيي  | 1       | مُحْيًا      |            | مُحْيَيَانِ     |          |            |            | مُحْيًا       |            | مُحْيَيَيْنِ     |          |            |            | مُحْيًا      |            | مُحْيَيَيْنِ     |          |            |            |
      | حيي  | 2       | مُحَيًّا     |            | مُحَيَّيَانِ    |          |            |            | مُحَيًّا      |            | مُحَيَّيَيْنِ    |          |            |            | مُحَيًّا     |            | مُحَيَّيَيْنِ    |          |            |            |
      | حيي  | 3       | مُحَايًا     |            | مُحَايَيَانِ    |          |            |            | مُحَايًا      |            | مُحَايَيَيْنِ    |          |            |            | مُحَايًا     |            | مُحَايَيَيْنِ    |          |            |            |
      | حيي  | 7       | مُتَحَايًا   |            | مُتَحَايَيَانِ  |          |            |            | مُتَحَايًا    |            | مُتَحَايَيَيْنِ  |          |            |            | مُتَحَايًا   |            | مُتَحَايَيَيْنِ  |          |            |            |
      | حيي  | 8       | مُتَحَيًّا   |            | مُتَحَيَّيَانِ  |          |            |            | مُتَحَيًّا    |            | مُتَحَيَّيَيْنِ  |          |            |            | مُتَحَيًّا   |            | مُتَحَيَّيَيْنِ  |          |            |            |
      | حيي  | 9       | مُسْتَحْيًا  |            | مُسْتَحْيَيَانِ |          |            |            | مُسْتَحْيًا   |            | مُسْتَحْيَيَيْنِ |          |            |            | مُسْتَحْيًا  |            | مُسْتَحْيَيَيْنِ |          |            |            |
      | كتب  | 1       | مُكْتَبٌ     |            | مُكْتَبَانِ     |          |            |            | مُكْتَبًا     |            | مُكْتَبَيْنِ     |          |            |            | مُكْتَبٍ     |            | مُكْتَبَيْنِ     |          |            |            |
      | كتب  | 2       | مُكَتَّبٌ    |            | مُكَتَّبَانِ    |          |            |            | مُكَتَّبًا    |            | مُكَتَّبَيْنِ    |          |            |            | مُكَتَّبٍ    |            | مُكَتَّبَيْنِ    |          |            |            |
      | كتب  | 3       | مُكَاتَبٌ    |            | مُكَاتَبَانِ    |          |            |            | مُكَاتَبًا    |            | مُكَاتَبَيْنِ    |          |            |            | مُكَاتَبٍ    |            | مُكَاتَبَيْنِ    |          |            |            |
      | كتب  | 5       | مُكْتَتَبٌ   |            | مُكْتَتَبَانِ   |          |            |            | مُكْتَتَبًا   |            | مُكْتَتَبَيْنِ   |          |            |            | مُكْتَتَبٍ   |            | مُكْتَتَبَيْنِ   |          |            |            |
      | كتب  | 7       | مُتَكَاتَبٌ  |            | مُتَكَاتَبَانِ  |          |            |            | مُتَكَاتَبًا  |            | مُتَكَاتَبَيْنِ  |          |            |            | مُتَكَاتَبٍ  |            | مُتَكَاتَبَيْنِ  |          |            |            |
      | كتب  | 8       | مُتَكَتَّبٌ  |            | مُتَكَتَّبَانِ  |          |            |            | مُتَكَتَّبًا  |            | مُتَكَتَّبَيْنِ  |          |            |            | مُتَكَتَّبٍ  |            | مُتَكَتَّبَيْنِ  |          |            |            |
      | كتب  | 9       | مُسْتَكْتَبٌ |            | مُسْتَكْتَبَانِ |          |            |            | مُسْتَكْتَبًا |            | مُسْتَكْتَبَيْنِ |          |            |            | مُسْتَكْتَبٍ |            | مُسْتَكْتَبَيْنِ |          |            |            |
      | ورد  | 1       | مُورَدٌ      |            | مُورَدَانِ      |          |            |            | مُورَدًا      |            | مُورَدَيْنِ      |          |            |            | مُورَدٍ      |            | مُورَدَيْنِ      |          |            |            |
      | ورد  | 2       | مُوَرَّدٌ    |            | مُوَرَّدَانِ    |          |            |            | مُوَرَّدًا    |            | مُوَرَّدَيْنِ    |          |            |            | مُوَرَّدٍ    |            | مُوَرَّدَيْنِ    |          |            |            |
      | ورد  | 3       | مُوَارَدٌ    |            | مُوَارَدَانِ    |          |            |            | مُوَارَدًا    |            | مُوَارَدَيْنِ    |          |            |            | مُوَارَدٍ    |            | مُوَارَدَيْنِ    |          |            |            |
      | ورد  | 7       | مُتَوَارَدٌ  |            | مُتَوَارَدَانِ  |          |            |            | مُتَوَارَدًا  |            | مُتَوَارَدَيْنِ  |          |            |            | مُتَوَارَدٍ  |            | مُتَوَارَدَيْنِ  |          |            |            |
      | ورد  | 8       | مُتَوَرَّدٌ  |            | مُتَوَرَّدَانِ  |          |            |            | مُتَوَرَّدًا  |            | مُتَوَرَّدَيْنِ  |          |            |            | مُتَوَرَّدٍ  |            | مُتَوَرَّدَيْنِ  |          |            |            |
      | ورد  | 9       | مُسْتَوْرَدٌ |            | مُسْتَوْرَدَانِ |          |            |            | مُسْتَوْرَدًا |            | مُسْتَوْرَدَيْنِ |          |            |            | مُسْتَوْرَدٍ |            | مُسْتَوْرَدَيْنِ |          |            |            |
      | سعي  | 1       | مُسْعًى      |            | مُسْعَيَانِ     |          |            |            | مُسْعًى       |            | مُسْعَيَيْنِ     |          |            |            | مُسْعًى      |            | مُسْعَيَيْنِ     |          |            |            |
      | سعي  | 3       | مُسَاعًى     |            | مُسَاعَيَانِ    |          |            |            | مُسَاعًى      |            | مُسَاعَيَيْنِ    |          |            |            | مُسَاعًى     |            | مُسَاعَيَيْنِ    |          |            |            |
      | سعي  | 7       | مُتَسَاعًى   |            | مُتَسَاعَيَانِ  |          |            |            | مُتَسَاعًى    |            | مُتَسَاعَيَيْنِ  |          |            |            | مُتَسَاعًى   |            | مُتَسَاعَيَيْنِ  |          |            |            |
      | سعي  | 9       | مُسْتَسْعًى  |            | مُسْتَسْعَيَانِ |          |            |            | مُسْتَسْعًى   |            | مُسْتَسْعَيَيْنِ |          |            |            | مُسْتَسْعًى  |            | مُسْتَسْعَيَيْنِ |          |            |            |
      | ركض  | 1       | مُرْكَضٌ     |            | مُرْكَضَانِ     |          |            |            | مُرْكَضًا     |            | مُرْكَضَيْنِ     |          |            |            | مُرْكَضٍ     |            | مُرْكَضَيْنِ     |          |            |            |
      | ركض  | 3       | مُرَاكَضٌ    |            | مُرَاكَضَانِ    |          |            |            | مُرَاكَضًا    |            | مُرَاكَضَيْنِ    |          |            |            | مُرَاكَضٍ    |            | مُرَاكَضَيْنِ    |          |            |            |
      | ركض  | 5       | مُرْتَكَضٌ   |            | مُرْتَكَضَانِ   |          |            |            | مُرْتَكَضًا   |            | مُرْتَكَضَيْنِ   |          |            |            | مُرْتَكَضٍ   |            | مُرْتَكَضَيْنِ   |          |            |            |
      | ركض  | 7       | مُتَرَاكَضٌ  |            | مُتَرَاكَضَانِ  |          |            |            | مُتَرَاكَضًا  |            | مُتَرَاكَضَيْنِ  |          |            |            | مُتَرَاكَضٍ  |            | مُتَرَاكَضَيْنِ  |          |            |            |
      | يبس  | 1       | مُوبَسٌ      |            | مُوبَسَانِ      |          |            |            | مُوبَسًا      |            | مُوبَسَيْنِ      |          |            |            | مُوبَسٍ      |            | مُوبَسَيْنِ      |          |            |            |
      | يبس  | 2       | مُيَبَّسٌ    |            | مُيَبَّسَانِ    |          |            |            | مُيَبَّسًا    |            | مُيَبَّسَيْنِ    |          |            |            | مُيَبَّسٍ    |            | مُيَبَّسَيْنِ    |          |            |            |
      | يبس  | 3       | مُيَابَسٌ    |            | مُيَابَسَانِ    |          |            |            | مُيَابَسًا    |            | مُيَابَسَيْنِ    |          |            |            | مُيَابَسٍ    |            | مُيَابَسَيْنِ    |          |            |            |
      | يبس  | 5       | مُتَّبَسٌ    |            | مُتَّبَسَانِ    |          |            |            | مُتَّبَسًا    |            | مُتَّبَسَيْنِ    |          |            |            | مُتَّبَسٍ    |            | مُتَّبَسَيْنِ    |          |            |            |
      | حدي  | 1       | مُحْدًى      |            | مُحْدَيَانِ     |          |            |            | مُحْدًى       |            | مُحْدَيَيْنِ     |          |            |            | مُحْدًى      |            | مُحْدَيَيْنِ     |          |            |            |
      | حدي  | 2       | مُحَدًّى     |            | مُحَدَّيَانِ    |          |            |            | مُحَدًّى      |            | مُحَدَّيَيْنِ    |          |            |            | مُحَدًّى     |            | مُحَدَّيَيْنِ    |          |            |            |
      | حدي  | 8       | مُتَحَدًّى   |            | مُتَحَدَّيَانِ  |          |            |            | مُتَحَدًّى    |            | مُتَحَدَّيَيْنِ  |          |            |            | مُتَحَدًّى   |            | مُتَحَدَّيَيْنِ  |          |            |            |