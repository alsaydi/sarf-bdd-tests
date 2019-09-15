Feature: unaugmented quadrilateral passive verb conjugation

  Scenario Outline: passive unaugmented quadrilateral verb past conjugation
    Given an unaugmented verb
    When the verb is conjugated
    Then the first person singular passive conjugation of the verb "<verb>"is "<single_first>"
    And the first person plural passive conjugation of the verb "<verb>"is "<plural_first>"
    And the masculine singular second person passive conjugation of the verb "<verb>"is "<m_single_second>"
    And the feminine singular second person passive conjugation of the verb "<verb>"is "<f_single_second>"
    And the masculine dual second person passive conjugation of the verb "<verb>"is "<m_dual_second>"
    And the masculine plural second person passive conjugation of the verb "<verb>"is "<m_plural_second>"
    And the feminine plural second person passive conjugation of the verb "<verb>"is "<f_plural_second>"
    And the masculine singular third person passive conjugation of the verb "<verb>"is "<m_single_third>"
    And the feminine singular third person passive conjugation of the verb "<verb>"is "<f_single_third>"
    And the masculine dual third person passive conjugation of the verb "<verb>"is "<m_dual_third>"
    And the feminine dual third person passive conjugation of the verb "<verb>"is "<f_dual_third>"
    And the masculine plural third person passive conjugation of the verb "<verb>"is "<m_plural_third>"
    And the feminine plural third person passive conjugation of the verb "<verb>"is "<f_plural_third>"
    Examples:
      | verb | single_first | plural_first | m_single_second | f_single_second | m_dual_second | m_plural_second | f_plural_second | m_single_third | f_single_third | m_dual_third | f_dual_third | m_plural_third | f_plural_third |
      | دحرج | دُحْرِجْتُ   | دُحْرِجْنَا  | دُحْرِجْتَ      | دُحْرِجْتِ      | دُحْرِجْتُمَا | دُحْرِجْتُمْ    | دُحْرِجْتُنَّ   | دُحْرِجَ       | دُحْرِجَتْ     | دُحْرِجَا    | دُحْرِجَتَا  | دُحْرِجُوا     | دُحْرِجْنَ     |
      | بءدل |              |              |                 |                 |               |                 |                 | بُؤْدِلَ       | بُؤْدِلَتْ     |              |              |                |                |
      | بلور | بُلْوِرْتُ   | بُلْوِرْنَا  | بُلْوِرْتَ      | بُلْوِرْتِ      | بُلْوِرْتُمَا | بُلْوِرْتُمْ    | بُلْوِرْتُنَّ   | بُلْوِرَ       | بُلْوِرَتْ     | بُلْوِرَا    | بُلْوِرَتَا  | بُلْوِرُوا     | بُلْوِرْنَ     |
      | تلفن |              |              |                 |                 |               |                 |                 | تُلْفِنَ       | تُلْفِنَتْ     |              |              |                |                |
      | تنتن |              |              |                 |                 |               |                 |                 | تُنْتِنَ       | تُنْتِنَتْ     |              |              |                |                |
      | جءجء | جُؤْجِئْتُ   | جُؤْجِئْنَا  | جُؤْجِئْتَ      | جُؤْجِئْتِ      | جُؤْجِئْتُمَا | جُؤْجِئْتُمْ    | جُؤْجِئْتُنَّ   | جُؤْجِئَ       | جُؤْجِئَتْ     | جُؤْجِئَا    | جُؤْجِئَتَا  | جُؤْجِئُوا     | جُؤْجِئْنَ     |
      | حوقل | حُوْقِلْتُ   | حُوْقِلْنَا  | حُوْقِلْتَ      | حُوْقِلْتِ      | حُوْقِلْتُمَا | حُوْقِلْتُمْ    | حُوْقِلْتُنَّ   | حُوْقِلَ       | حُوْقِلَتْ     | حُوْقِلا     | حُوْقِلَتَا  | حُوْقِلُوا     | حُوْقِلْنَ     |
      | حيحي |              |              |                 |                 |               |                 |                 | حُيْحِيَ       | حُيْحِيَتْ     |              |              |                |                |
      | رهيء | رُهْيِئْتُ   | رُهْيِئْنَا  | رُهْيِئْتَ      | رُهْيِئْتِ      | رُهْيِئْتُمَا | رُهْيِئْتُمْ    | رُهْيِئْتُنَّ   | رُهْيِئَ       | رُهْيِئَتْ     | رُهْيِئَا    | رُهْيِئَتَا  | رُهْيِئُوا     | رُهْيِئْنَ     |
      | زلزل | زُلْزِلْتُ   | زُلْزِلْنَا  | زُلْزِلْتَ      | زُلْزِلْتِ      | زُلْزِلْتُمَا | زُلْزِلْتُمْ    | زُلْزِلْتُنَّ   | زُلْزِلَ       | زُلْزِلَتْ     | زُلْزِلا     | زُلْزِلَتَا  | زُلْزِلُوا     | زُلْزِلْنَ     |
      | سبرت |              |              |                 |                 |               |                 |                 | سُبْرِتَ       | سُبْرِتَتْ     |              |              |                |                |
      | سيطر |              |              |                 |                 |               |                 |                 | سُيْطِرَ       | سُيْطِرَتْ     |              |              |                |                |
      | شريف | شُرْيِفْتُ   | شُرْيِفْنَا  | شُرْيِفْتَ      | شُرْيِفْتِ      | شُرْيِفْتُمَا | شُرْيِفْتُمْ    | شُرْيِفْتُنَّ   | شُرْيِفَ       | شُرْيِفَتْ     | شُرْيِفَا    | شُرْيِفَتَا  | شُرْيِفُوا     | شُرْيِفْنَ     |
      | ضوضي |              |              |                 |                 |               |                 |                 | ضُوْضِيَ       | ضُوْضِيَتْ     |              |              |                |                |
      | طمءن | طُمْئِنْتُ   | طُمْئِنَّا   | طُمْئِنْتَ      | طُمْئِنْتِ      | طُمْئِنْتُمَا | طُمْئِنْتُمْ    | طُمْئِنْتُنَّ   | طُمْئِنَ       | طُمْئِنَتْ     | طُمْئِنَا    | طُمْئِنَتَا  | طُمْئِنُوا     | طُمْئِنَّ      |
      | غرقء | غُرْقِئْتُ   | غُرْقِئْنَا  | غُرْقِئْتَ      | غُرْقِئْتِ      | غُرْقِئْتُمَا | غُرْقِئْتُمْ    | غُرْقِئْتُنَّ   | غُرْقِئَ       | غُرْقِئَتْ     | غُرْقِئَا    | غُرْقِئَتَا  | غُرْقِئُوا     | غُرْقِئْنَ     |
      | قلسي | قُلْسِيتُ    | قُلْسِينَا   | قُلْسِيتَ       | قُلْسِيتِ       | قُلْسِيتُمَا  | قُلْسِيتُمْ     | قُلْسِيتُنَّ    | قُلْسِيَ       | قُلْسِيَتْ     | قُلْسِيَا    | قُلْسِيَتَا  | قُلْسُوا       | قُلْسِينَ      |
      | وءوء |              |              |                 |                 |               |                 |                 | وُؤْوِئَ       | وُؤْوِئَتْ     |              |              |                |                |
      | وسوس | وُسْوِسْتُ   | وُسْوِسْنَا  | وُسْوِسْتَ      | وُسْوِسْتِ      | وُسْوِسْتُمَا | وُسْوِسْتُمْ    | وُسْوِسْتُنَّ   | وُسْوِسَ       | وُسْوِسَتْ     | وُسْوِسَا    | وُسْوِسَتَا  | وُسْوِسُوا     | وُسْوِسْنَ     |
      | يءيء |              |              |                 |                 |               |                 |                 | يُؤْيِئَ       | يُؤْيِئَتْ     |              |              |                |                |
      | يرنء | يُرْنِئْتُ   | يُرْنِئْنَا  | يُرْنِئْتَ      | يُرْنِئْتِ      | يُرْنِئْتُمَا | يُرْنِئْتُمْ    | يُرْنِئْتُنَّ   | يُرْنِئَ       | يُرْنِئَتْ     | يُرْنِئَا    | يُرْنِئَتَا  | يُرْنِئُوا     | يُرْنِئْنَ     |
      | يهيه |              |              |                 |                 |               |                 |                 | يُهْيِهَ       | يُهْيِهَتْ     |              |              |                |                |
