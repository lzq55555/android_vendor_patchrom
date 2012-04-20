.class public Lcom/android/calendarcommon/RecurrenceSet;
.super Ljava/lang/Object;
.source "RecurrenceSet.java"


# static fields
.field private static final FOLD_RE:Ljava/util/regex/Pattern;

.field private static final IGNORABLE_ICAL_WHITESPACE_RE:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 395
    const-string v0, "(?:\\r\\n?|\\n)[ \t]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/calendarcommon/RecurrenceSet;->IGNORABLE_ICAL_WHITESPACE_RE:Ljava/util/regex/Pattern;

    .line 398
    const-string v0, ".{75}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/calendarcommon/RecurrenceSet;->FOLD_RE:Ljava/util/regex/Pattern;

    return-void
.end method

.method private static addPropertiesForRuleStr(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "component"
    .parameter "propertyName"
    .parameter "ruleStr"

    .prologue
    .line 370
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 379
    :cond_0
    return-void

    .line 373
    :cond_1
    invoke-static {p2}, Lcom/android/calendarcommon/RecurrenceSet;->getRuleStrings(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 374
    .local v5, rrules:[Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 375
    .local v4, rrule:Ljava/lang/String;
    new-instance v3, Lcom/android/calendarcommon/ICalendar$Property;

    invoke-direct {v3, p1}, Lcom/android/calendarcommon/ICalendar$Property;-><init>(Ljava/lang/String;)V

    .line 376
    .local v3, prop:Lcom/android/calendarcommon/ICalendar$Property;
    invoke-virtual {v3, v4}, Lcom/android/calendarcommon/ICalendar$Property;->setValue(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p0, v3}, Lcom/android/calendarcommon/ICalendar$Component;->addProperty(Lcom/android/calendarcommon/ICalendar$Property;)V

    .line 374
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static addPropertyForDateStr(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "component"
    .parameter "propertyName"
    .parameter "dateStr"

    .prologue
    .line 430
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 446
    :goto_0
    return-void

    .line 434
    :cond_0
    new-instance v0, Lcom/android/calendarcommon/ICalendar$Property;

    invoke-direct {v0, p1}, Lcom/android/calendarcommon/ICalendar$Property;-><init>(Ljava/lang/String;)V

    .line 435
    .local v0, prop:Lcom/android/calendarcommon/ICalendar$Property;
    const/4 v1, 0x0

    .line 436
    .local v1, tz:Ljava/lang/String;
    const-string v3, ";"

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 437
    .local v2, tzidx:I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 438
    const/4 v3, 0x0

    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 439
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 441
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 442
    new-instance v3, Lcom/android/calendarcommon/ICalendar$Parameter;

    const-string v4, "TZID"

    invoke-direct {v3, v4, v1}, Lcom/android/calendarcommon/ICalendar$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/android/calendarcommon/ICalendar$Property;->addParameter(Lcom/android/calendarcommon/ICalendar$Parameter;)V

    .line 444
    :cond_2
    invoke-virtual {v0, p2}, Lcom/android/calendarcommon/ICalendar$Property;->setValue(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p0, v0}, Lcom/android/calendarcommon/ICalendar$Component;->addProperty(Lcom/android/calendarcommon/ICalendar$Property;)V

    goto :goto_0
.end method

.method private static computeDuration(Landroid/text/format/Time;Lcom/android/calendarcommon/ICalendar$Component;)Ljava/lang/String;
    .locals 13
    .parameter "start"
    .parameter "component"

    .prologue
    .line 451
    const-string v9, "DURATION"

    invoke-virtual {p1, v9}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v3

    .line 453
    .local v3, durationProperty:Lcom/android/calendarcommon/ICalendar$Property;
    if-eqz v3, :cond_0

    .line 455
    invoke-virtual {v3}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 478
    :goto_0
    return-object v9

    .line 459
    :cond_0
    const-string v9, "DTEND"

    invoke-virtual {p1, v9}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v0

    .line 461
    .local v0, dtendProperty:Lcom/android/calendarcommon/ICalendar$Property;
    if-nez v0, :cond_1

    .line 463
    const-string v9, "+P0S"

    goto :goto_0

    .line 465
    :cond_1
    const-string v9, "TZID"

    invoke-virtual {v0, v9}, Lcom/android/calendarcommon/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Parameter;

    move-result-object v8

    .line 467
    .local v8, endTzidParameter:Lcom/android/calendarcommon/ICalendar$Parameter;
    if-nez v8, :cond_2

    iget-object v7, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 470
    .local v7, endTzid:Ljava/lang/String;
    :goto_1
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6, v7}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 471
    .local v6, end:Landroid/text/format/Time;
    invoke-virtual {v0}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 472
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    sub-long v1, v9, v11

    .line 474
    .local v1, durationMillis:J
    const-wide/16 v9, 0x3e8

    div-long v4, v1, v9

    .line 475
    .local v4, durationSeconds:J
    iget-boolean v9, p0, Landroid/text/format/Time;->allDay:Z

    if-eqz v9, :cond_3

    const-wide/32 v9, 0x15180

    rem-long v9, v4, v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_3

    .line 476
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "P"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-wide/32 v10, 0x15180

    div-long v10, v4, v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "D"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 467
    .end local v1           #durationMillis:J
    .end local v4           #durationSeconds:J
    .end local v6           #end:Landroid/text/format/Time;
    .end local v7           #endTzid:Ljava/lang/String;
    :cond_2
    iget-object v7, v8, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    goto :goto_1

    .line 478
    .restart local v1       #durationMillis:J
    .restart local v4       #durationSeconds:J
    .restart local v6       #end:Landroid/text/format/Time;
    .restart local v7       #endTzid:Ljava/lang/String;
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "P"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "S"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0
.end method

.method private static extractDates(Lcom/android/calendarcommon/ICalendar$Property;)Ljava/lang/String;
    .locals 3
    .parameter "recurrence"

    .prologue
    .line 510
    if-nez p0, :cond_0

    .line 511
    const/4 v1, 0x0

    .line 518
    :goto_0
    return-object v1

    .line 513
    :cond_0
    const-string v1, "TZID"

    invoke-virtual {p0, v1}, Lcom/android/calendarcommon/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Parameter;

    move-result-object v0

    .line 515
    .local v0, tzidParam:Lcom/android/calendarcommon/ICalendar$Parameter;
    if-eqz v0, :cond_1

    .line 516
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 518
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static flattenProperties(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "component"
    .parameter "name"

    .prologue
    .line 484
    invoke-virtual {p0, p1}, Lcom/android/calendarcommon/ICalendar$Component;->getProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 485
    .local v2, properties:Ljava/util/List;,"Ljava/util/List<Lcom/android/calendarcommon/ICalendar$Property;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 486
    :cond_0
    const/4 v5, 0x0

    .line 506
    :goto_0
    return-object v5

    .line 489
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 490
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendarcommon/ICalendar$Property;

    invoke-virtual {v5}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 493
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 495
    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 496
    .local v0, first:Z
    invoke-virtual {p0, p1}, Lcom/android/calendarcommon/ICalendar$Component;->getProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendarcommon/ICalendar$Property;

    .line 497
    .local v3, property:Lcom/android/calendarcommon/ICalendar$Property;
    if-eqz v0, :cond_3

    .line 498
    const/4 v0, 0x0

    .line 504
    :goto_2
    invoke-virtual {v3}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 502
    :cond_3
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 506
    .end local v3           #property:Lcom/android/calendarcommon/ICalendar$Property;
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static fold(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "unfoldedIcalContent"

    .prologue
    .line 419
    sget-object v0, Lcom/android/calendarcommon/RecurrenceSet;->FOLD_RE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "$0\r\n "

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getRuleStrings(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter "ruleStr"

    .prologue
    .line 382
    if-nez p0, :cond_1

    .line 383
    const/4 v4, 0x0

    new-array v2, v4, [Ljava/lang/String;

    .line 391
    :cond_0
    return-object v2

    .line 385
    :cond_1
    invoke-static {p0}, Lcom/android/calendarcommon/RecurrenceSet;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 386
    .local v3, unfoldedRuleStr:Ljava/lang/String;
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 387
    .local v2, split:[Ljava/lang/String;
    array-length v0, v2

    .line 388
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, n:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 389
    aget-object v4, v2, v1

    invoke-static {v4}, Lcom/android/calendarcommon/RecurrenceSet;->fold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 388
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static populateComponent(Landroid/content/ContentValues;Lcom/android/calendarcommon/ICalendar$Component;)Z
    .locals 17
    .parameter "values"
    .parameter "component"

    .prologue
    .line 310
    const-wide/16 v3, -0x1

    .line 311
    .local v3, dtstart:J
    const-string v14, "dtstart"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 312
    const-string v14, "dtstart"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 314
    :cond_0
    const-string v14, "duration"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 315
    .local v7, duration:Ljava/lang/String;
    const-string v14, "eventTimezone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 316
    .local v13, tzid:Ljava/lang/String;
    const-string v14, "rrule"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 317
    .local v12, rruleStr:Ljava/lang/String;
    const-string v14, "rdate"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 318
    .local v11, rdateStr:Ljava/lang/String;
    const-string v14, "exrule"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 319
    .local v10, exruleStr:Ljava/lang/String;
    const-string v14, "exdate"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 320
    .local v9, exdateStr:Ljava/lang/String;
    const-string v14, "allDay"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 321
    .local v2, allDayInteger:Ljava/lang/Integer;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    const/4 v1, 0x1

    .line 323
    .local v1, allDay:Z
    :goto_0
    const-wide/16 v14, -0x1

    cmp-long v14, v3, v14

    if-eqz v14, :cond_1

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 328
    :cond_1
    const/4 v14, 0x0

    .line 364
    :goto_1
    return v14

    .line 321
    .end local v1           #allDay:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 331
    .restart local v1       #allDay:Z
    :cond_4
    new-instance v5, Lcom/android/calendarcommon/ICalendar$Property;

    const-string v14, "DTSTART"

    invoke-direct {v5, v14}, Lcom/android/calendarcommon/ICalendar$Property;-><init>(Ljava/lang/String;)V

    .line 332
    .local v5, dtstartProp:Lcom/android/calendarcommon/ICalendar$Property;
    const/4 v6, 0x0

    .line 333
    .local v6, dtstartTime:Landroid/text/format/Time;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 334
    if-nez v1, :cond_5

    .line 335
    new-instance v14, Lcom/android/calendarcommon/ICalendar$Parameter;

    const-string v15, "TZID"

    invoke-direct {v14, v15, v13}, Lcom/android/calendarcommon/ICalendar$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v14}, Lcom/android/calendarcommon/ICalendar$Property;->addParameter(Lcom/android/calendarcommon/ICalendar$Parameter;)V

    .line 337
    :cond_5
    new-instance v6, Landroid/text/format/Time;

    .end local v6           #dtstartTime:Landroid/text/format/Time;
    invoke-direct {v6, v13}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 343
    .restart local v6       #dtstartTime:Landroid/text/format/Time;
    :goto_2
    invoke-virtual {v6, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 346
    if-eqz v1, :cond_6

    .line 347
    new-instance v14, Lcom/android/calendarcommon/ICalendar$Parameter;

    const-string v15, "VALUE"

    const-string v16, "DATE"

    invoke-direct/range {v14 .. v16}, Lcom/android/calendarcommon/ICalendar$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v14}, Lcom/android/calendarcommon/ICalendar$Property;->addParameter(Lcom/android/calendarcommon/ICalendar$Parameter;)V

    .line 348
    const/4 v14, 0x1

    iput-boolean v14, v6, Landroid/text/format/Time;->allDay:Z

    .line 349
    const/4 v14, 0x0

    iput v14, v6, Landroid/text/format/Time;->hour:I

    .line 350
    const/4 v14, 0x0

    iput v14, v6, Landroid/text/format/Time;->minute:I

    .line 351
    const/4 v14, 0x0

    iput v14, v6, Landroid/text/format/Time;->second:I

    .line 354
    :cond_6
    invoke-virtual {v6}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Lcom/android/calendarcommon/ICalendar$Property;->setValue(Ljava/lang/String;)V

    .line 355
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/calendarcommon/ICalendar$Component;->addProperty(Lcom/android/calendarcommon/ICalendar$Property;)V

    .line 356
    new-instance v8, Lcom/android/calendarcommon/ICalendar$Property;

    const-string v14, "DURATION"

    invoke-direct {v8, v14}, Lcom/android/calendarcommon/ICalendar$Property;-><init>(Ljava/lang/String;)V

    .line 357
    .local v8, durationProp:Lcom/android/calendarcommon/ICalendar$Property;
    invoke-virtual {v8, v7}, Lcom/android/calendarcommon/ICalendar$Property;->setValue(Ljava/lang/String;)V

    .line 358
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/android/calendarcommon/ICalendar$Component;->addProperty(Lcom/android/calendarcommon/ICalendar$Property;)V

    .line 360
    const-string v14, "RRULE"

    move-object/from16 v0, p1

    invoke-static {v0, v14, v12}, Lcom/android/calendarcommon/RecurrenceSet;->addPropertiesForRuleStr(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string v14, "RDATE"

    move-object/from16 v0, p1

    invoke-static {v0, v14, v11}, Lcom/android/calendarcommon/RecurrenceSet;->addPropertyForDateStr(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v14, "EXRULE"

    move-object/from16 v0, p1

    invoke-static {v0, v14, v10}, Lcom/android/calendarcommon/RecurrenceSet;->addPropertiesForRuleStr(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string v14, "EXDATE"

    move-object/from16 v0, p1

    invoke-static {v0, v14, v9}, Lcom/android/calendarcommon/RecurrenceSet;->addPropertyForDateStr(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const/4 v14, 0x1

    goto :goto_1

    .line 340
    .end local v8           #durationProp:Lcom/android/calendarcommon/ICalendar$Property;
    :cond_7
    new-instance v6, Landroid/text/format/Time;

    .end local v6           #dtstartTime:Landroid/text/format/Time;
    const-string v14, "UTC"

    invoke-direct {v6, v14}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .restart local v6       #dtstartTime:Landroid/text/format/Time;
    goto :goto_2
.end method

.method public static populateContentValues(Lcom/android/calendarcommon/ICalendar$Component;Landroid/content/ContentValues;)Z
    .locals 19
    .parameter "component"
    .parameter "values"

    .prologue
    .line 181
    const-string v17, "DTSTART"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v5

    .line 183
    .local v5, dtstartProperty:Lcom/android/calendarcommon/ICalendar$Property;
    invoke-virtual {v5}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 184
    .local v4, dtstart:Ljava/lang/String;
    const-string v17, "TZID"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/android/calendarcommon/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Parameter;

    move-result-object v16

    .line 187
    .local v16, tzidParam:Lcom/android/calendarcommon/ICalendar$Parameter;
    if-nez v16, :cond_3

    const/4 v15, 0x0

    .line 188
    .local v15, tzid:Ljava/lang/String;
    :goto_0
    new-instance v14, Landroid/text/format/Time;

    if-nez v16, :cond_4

    const-string v17, "UTC"

    :goto_1
    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 189
    .local v14, start:Landroid/text/format/Time;
    invoke-virtual {v14, v4}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    move-result v9

    .line 190
    .local v9, inUtc:Z
    iget-boolean v3, v14, Landroid/text/format/Time;->allDay:Z

    .line 194
    .local v3, allDay:Z
    if-nez v9, :cond_0

    if-eqz v3, :cond_1

    .line 195
    :cond_0
    const-string v15, "UTC"

    .line 198
    :cond_1
    move-object/from16 v0, p0

    invoke-static {v14, v0}, Lcom/android/calendarcommon/RecurrenceSet;->computeDuration(Landroid/text/format/Time;Lcom/android/calendarcommon/ICalendar$Component;)Ljava/lang/String;

    move-result-object v6

    .line 199
    .local v6, duration:Ljava/lang/String;
    const-string v17, "RRULE"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/calendarcommon/RecurrenceSet;->flattenProperties(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 200
    .local v13, rrule:Ljava/lang/String;
    const-string v17, "RDATE"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/calendarcommon/RecurrenceSet;->extractDates(Lcom/android/calendarcommon/ICalendar$Property;)Ljava/lang/String;

    move-result-object v12

    .line 201
    .local v12, rdate:Ljava/lang/String;
    const-string v17, "EXRULE"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/calendarcommon/RecurrenceSet;->flattenProperties(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 202
    .local v8, exrule:Ljava/lang/String;
    const-string v17, "EXDATE"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/calendarcommon/RecurrenceSet;->extractDates(Lcom/android/calendarcommon/ICalendar$Property;)Ljava/lang/String;

    move-result-object v7

    .line 204
    .local v7, exdate:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 213
    :cond_2
    const/16 v17, 0x0

    .line 235
    :goto_2
    return v17

    .line 187
    .end local v3           #allDay:Z
    .end local v6           #duration:Ljava/lang/String;
    .end local v7           #exdate:Ljava/lang/String;
    .end local v8           #exrule:Ljava/lang/String;
    .end local v9           #inUtc:Z
    .end local v12           #rdate:Ljava/lang/String;
    .end local v13           #rrule:Ljava/lang/String;
    .end local v14           #start:Landroid/text/format/Time;
    .end local v15           #tzid:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, v16

    iget-object v15, v0, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    goto :goto_0

    .restart local v15       #tzid:Ljava/lang/String;
    :cond_4
    move-object/from16 v17, v15

    .line 188
    goto :goto_1

    .line 216
    .restart local v3       #allDay:Z
    .restart local v6       #duration:Ljava/lang/String;
    .restart local v7       #exdate:Ljava/lang/String;
    .restart local v8       #exrule:Ljava/lang/String;
    .restart local v9       #inUtc:Z
    .restart local v12       #rdate:Ljava/lang/String;
    .restart local v13       #rrule:Ljava/lang/String;
    .restart local v14       #start:Landroid/text/format/Time;
    :cond_5
    if-eqz v3, :cond_6

    .line 217
    const-string v17, "UTC"

    move-object/from16 v0, v17

    iput-object v0, v14, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 219
    :cond_6
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    .line 220
    .local v10, millis:J
    const-string v17, "dtstart"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 221
    const-wide/16 v17, -0x1

    cmp-long v17, v10, v17

    if-nez v17, :cond_7

    .line 225
    const/16 v17, 0x0

    goto :goto_2

    .line 228
    :cond_7
    const-string v17, "rrule"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v17, "rdate"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v17, "exrule"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v17, "exdate"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v17, "eventTimezone"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v17, "duration"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v18, "allDay"

    if-eqz v3, :cond_8

    const/16 v17, 0x1

    :goto_3
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 235
    const/16 v17, 0x1

    goto :goto_2

    .line 234
    :cond_8
    const/16 v17, 0x0

    goto :goto_3
.end method

.method public static unfold(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "foldedIcalContent"

    .prologue
    .line 423
    sget-object v0, Lcom/android/calendarcommon/RecurrenceSet;->IGNORABLE_ICAL_WHITESPACE_RE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
