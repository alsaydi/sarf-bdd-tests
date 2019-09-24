Feature: unaugmented quadrilateral verb conjugation in imperative state
# الأمر من الرباعي المجرد
  Scenario Outline: active unaugmented quadrilateral verb present conjugation in imperative state
    Given an unaugmented verb
    When the quadrilateral verb is conjugated in "Imperative" state
    Then first person singular present conjugation the verb "<verb>" is "<single_first>"
    And first person plural present conjugation the verb "<verb>" is "<plural_first>"
    And masculine singular second person present conjugation the verb "<verb>" is "<m_single_second>"
    And feminine singular second person present conjugation the verb "<verb>" is "<f_single_second>"
    And masculine dual second person present conjugation the verb "<verb>" is "<m_dual_second>"
    And masculine plural second person present conjugation the verb "<verb>" is "<m_plural_second>"
    And feminine plural second person present conjugation the verb "<verb>" is "<f_plural_second>"
    And masculine singular third person present conjugation the verb "<verb>" is "<m_single_third>"
    And feminine singular third person present conjugation the verb "<verb>" is "<f_single_third>"
    And masculine dual third person present conjugation the verb "<verb>" is "<m_dual_third>"
    And feminine dual third person present conjugation the verb "<verb>" is "<f_dual_third>"
    And masculine plural third person present conjugation the verb "<verb>" is "<m_plural_third>"
    And feminine plural third person present conjugation the verb "<verb>" is "<f_plural_third>"
    Examples:
      | verb | single_first | plural_first | m_single_second | f_single_second | m_dual_second | m_plural_second | f_plural_second | m_single_third | f_single_third | m_dual_third | f_dual_third | m_plural_third | f_plural_third |
      | دحرج |              |              | دَحْرِجْ        | دَحْرِجِي       | دَحْرِجَا     | دَحْرِجُوا      | دَحْرِجْنَ      |                |                |              |              |                |                |
      | بءدل |              |              | بَأْدِلْ        | بَأْدِلِي       | بَأْدِلا      | بَأْدِلُوا      | بَأْدِلْنَ      |                |                |              |              |                |                |
      | بلور |              |              | بَلْوِرْ        | بَلْوِرِي       | بَلْوِرَا     | بَلْوِرُوا      | بَلْوِرْنَ      |                |                |              |              |                |                |
      | تلفن |              |              | تَلْفِنْ        | تَلْفِنِي       | تَلْفِنَا     | تَلْفِنُوا      | تَلْفِنَّ       |                |                |              |              |                |                |
      | تنتن |              |              | تَنْتِنْ        | تَنْتِنِي       | تَنْتِنَا     | تَنْتِنُوا      | تَنْتِنَّ       |                |                |              |              |                |                |
      | جءجء |              |              | جَأْجِئْ        | جَأْجِئِي       | جَأْجِئَا     | جَأْجِئُوا      | جَأْجِئْنَ      |                |                |              |              |                |                |
      | حوقل |              |              | حَوْقِلْ        | حَوْقِلِي       | حَوْقِلا      | حَوْقِلُوا      | حَوْقِلْنَ      |                |                |              |              |                |                |
      | حيحي |              |              | حَيْحِ          | حَيْحِي         | حَيْحِيَا     | حَيْحُوا        | حَيْحِينَ       |                |                |              |              |                |                |
      | رهيء |              |              | رَهْيِئْ        | رَهْيِئِي       | رَهْيِئَا     | رَهْيِئُوا      | رَهْيِئْنَ      |                |                |              |              |                |                |
      | زلزل |              |              | زَلْزِلْ        | زَلْزِلِي       | زَلْزِلا      | زَلْزِلُوا      | زَلْزِلْنَ      |                |                |              |              |                |                |
      | سبرت |              |              | سَبْرِتْ        | سَبْرِتِي       | سَبْرِتَا     | سَبْرِتُوا      | سَبْرِتْنَ      |                |                |              |              |                |                |
      | سيطر |              |              | سَيْطِرْ        | سَيْطِرِي       | سَيْطِرَا     | سَيْطِرُوا      | سَيْطِرْنَ      |                |                |              |              |                |                |
      | شريف |              |              | شَرْيِفْ        | شَرْيِفِي       | شَرْيِفَا     | شَرْيِفُوا      | شَرْيِفْنَ      |                |                |              |              |                |                |
      | ضوضي |              |              | ضَوْضِ          | ضَوْضِي         | ضَوْضِيَا     | ضَوْضُوا        | ضَوْضِينَ       |                |                |              |              |                |                |
      | طمءن |              |              | طَمْئِنْ        | طَمْئِنِي       | طَمْئِنَا     | طَمْئِنُوا      | طَمْئِنَّ       |                |                |              |              |                |                |
      | غرقء |              |              | غَرْقِئْ        | غَرْقِئِي       | غَرْقِئَا     | غَرْقِئُوا      | غَرْقِئْنَ      |                |                |              |              |                |                |
      | قلسي |              |              | قَلْسِ          | قَلْسِي         | قَلْسِيَا     | قَلْسُوا        | قَلْسِينَ       |                |                |              |              |                |                |
      | وءوء |              |              | وَأْوِئْ        | وَأْوِئِي       | وَأْوِئَا     | وَأْوِئُوا      | وَأْوِئْنَ      |                |                |              |              |                |                |
      | وسوس |              |              | وَسْوِسْ        | وَسْوِسِي       | وَسْوِسَا     | وَسْوِسُوا      | وَسْوِسْنَ      |                |                |              |              |                |                |
      | يءيء |              |              | يَأْيِئْ        | يَأْيِئِي       | يَأْيِئَا     | يَأْيِئُوا      | يَأْيِئْنَ      |                |                |              |              |                |                |
      | يرنء |              |              | يَرْنِئْ        | يَرْنِئِي       | يَرْنِئَا     | يَرْنِئُوا      | يَرْنِئْنَ      |                |                |              |              |                |                |
      | يهيه |              |              | يَهْيِهْ        | يَهْيِهِي       | يَهْيِهَا     | يَهْيِهُوا      | يَهْيِهْنَ      |                |                |              |              |                |                |
