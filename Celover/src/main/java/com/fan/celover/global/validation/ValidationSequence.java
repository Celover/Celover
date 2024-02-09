package com.fan.celover.global.validation;

import com.fan.celover.global.validation.ValidationGroups.NotEmptyGroupFirst;
import com.fan.celover.global.validation.ValidationGroups.NotEmptyGroupSecond;
import com.fan.celover.global.validation.ValidationGroups.NotEmptyGroupThird;
import com.fan.celover.global.validation.ValidationGroups.PatternCheckGroupFirst;
import com.fan.celover.global.validation.ValidationGroups.PatternCheckGroupSecond;
import com.fan.celover.global.validation.ValidationGroups.PatternCheckGroupThird;

import jakarta.validation.GroupSequence;
import jakarta.validation.groups.Default;

@GroupSequence({Default.class, NotEmptyGroupFirst.class, PatternCheckGroupFirst.class, NotEmptyGroupSecond.class, PatternCheckGroupSecond.class, NotEmptyGroupThird.class, PatternCheckGroupThird.class })
public interface ValidationSequence {

}
