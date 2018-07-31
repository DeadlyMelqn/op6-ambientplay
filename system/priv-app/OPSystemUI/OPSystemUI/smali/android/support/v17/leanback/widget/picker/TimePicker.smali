.class public Landroid/support/v17/leanback/widget/picker/TimePicker;
.super Landroid/support/v17/leanback/widget/picker/Picker;
.source "TimePicker.java"


# instance fields
.field mAmPmColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

.field mColAmPmIndex:I

.field mColHourIndex:I

.field mColMinuteIndex:I

.field private final mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;

.field private mCurrentAmPmIndex:I

.field private mCurrentHour:I

.field private mCurrentMinute:I

.field mHourColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

.field private mIs24hFormat:Z

.field mMinuteColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

.field private mTimePickerFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/picker/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/picker/Picker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 104
    invoke-static {v3, v4}, Landroid/support/v17/leanback/widget/picker/PickerUtility;->getTimeConstantInstance(Ljava/util/Locale;Landroid/content/res/Resources;)Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;

    .line 108
    sget-object v3, Landroid/support/v17/leanback/R$styleable;->lbTimePicker:[I

    .line 107
    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 109
    .local v0, "attributesArray":Landroid/content/res/TypedArray;
    sget v3, Landroid/support/v17/leanback/R$styleable;->lbTimePicker_is24HourFormat:I

    .line 110
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    .line 109
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mIs24hFormat:Z

    .line 111
    sget v3, Landroid/support/v17/leanback/R$styleable;->lbTimePicker_useCurrentTime:I

    .line 112
    const/4 v4, 0x1

    .line 111
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 116
    .local v2, "useCurrentTime":Z
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/picker/TimePicker;->updateColumns()V

    .line 117
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/picker/TimePicker;->updateColumnsRange()V

    .line 119
    if-eqz v2, :cond_0

    .line 121
    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;

    iget-object v3, v3, Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;->locale:Ljava/util/Locale;

    .line 120
    const/4 v4, 0x0

    invoke-static {v4, v3}, Landroid/support/v17/leanback/widget/picker/PickerUtility;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    .line 122
    .local v1, "currentDate":Ljava/util/Calendar;
    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/picker/TimePicker;->setHour(I)V

    .line 123
    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/picker/TimePicker;->setMinute(I)V

    .line 124
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/picker/TimePicker;->setAmPmValue()V

    .line 126
    .end local v1    # "currentDate":Ljava/util/Calendar;
    :cond_0
    return-void
.end method

.method private extractTimeFields()Ljava/lang/String;
    .locals 6

    .prologue
    .line 244
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/TimePicker;->getBestHourMinutePattern()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "hmaPattern":Ljava/lang/String;
    iget-object v4, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;

    iget-object v4, v4, Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;->locale:Ljava/util/Locale;

    invoke-static {v4}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const/4 v2, 0x1

    .line 248
    .local v2, "isRTL":Z
    :goto_0
    const/16 v4, 0x61

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_0

    .line 249
    const-string/jumbo v4, "a"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v5, "m"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-le v4, v5, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 251
    .local v1, "isAmPmAtEnd":Z
    :goto_1
    if-eqz v2, :cond_3

    const-string/jumbo v3, "mh"

    .line 253
    .local v3, "timePickerFormat":Ljava/lang/String;
    :goto_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/TimePicker;->is24Hour()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 254
    return-object v3

    .line 246
    .end local v1    # "isAmPmAtEnd":Z
    .end local v2    # "isRTL":Z
    .end local v3    # "timePickerFormat":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "isRTL":Z
    goto :goto_0

    .line 249
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "isAmPmAtEnd":Z
    goto :goto_1

    .line 251
    :cond_3
    const-string/jumbo v3, "hm"

    .restart local v3    # "timePickerFormat":Ljava/lang/String;
    goto :goto_2

    .line 256
    :cond_4
    if-eqz v1, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    return-object v4

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3
.end method

.method private static isAnyOf(C[C)Z
    .locals 2
    .param p0, "c"    # C
    .param p1, "any"    # [C

    .prologue
    .line 229
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 230
    aget-char v1, p1, v0

    if-ne p0, v1, :cond_0

    .line 231
    const/4 v1, 0x1

    return v1

    .line 229
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private setAmPmValue()V
    .locals 3

    .prologue
    .line 325
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/TimePicker;->is24Hour()Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    iget v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mColAmPmIndex:I

    iget v1, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mCurrentAmPmIndex:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v17/leanback/widget/picker/TimePicker;->setColumnValue(IIZ)V

    .line 328
    :cond_0
    return-void
.end method

.method private updateColumns()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 261
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/TimePicker;->getBestHourMinutePattern()Ljava/lang/String;

    move-result-object v4

    .line 262
    .local v4, "timePickerFormat":Ljava/lang/String;
    iget-object v5, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mTimePickerFormat:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 263
    return-void

    .line 265
    :cond_0
    iput-object v4, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mTimePickerFormat:Ljava/lang/String;

    .line 267
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/picker/TimePicker;->extractTimeFields()Ljava/lang/String;

    move-result-object v3

    .line 268
    .local v3, "timeFieldsPattern":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/TimePicker;->extractSeparators()Ljava/util/List;

    move-result-object v2

    .line 269
    .local v2, "separators":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    if-eq v5, v6, :cond_1

    .line 270
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Separators size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " must equal"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 271
    const-string/jumbo v7, " the size of timeFieldsPattern: "

    .line 270
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 271
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    .line 270
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 271
    const-string/jumbo v7, " + 1"

    .line 270
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 273
    :cond_1
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/picker/TimePicker;->setSeparators(Ljava/util/List;)V

    .line 274
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 276
    iput-object v7, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mAmPmColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    iput-object v7, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mMinuteColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    iput-object v7, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mHourColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    .line 277
    iput v8, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mColAmPmIndex:I

    iput v8, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mColMinuteIndex:I

    iput v8, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mColHourIndex:I

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    const/4 v5, 0x3

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 280
    .local v0, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v17/leanback/widget/picker/PickerColumn;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 281
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 300
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Invalid time picker format."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 283
    :sswitch_0
    new-instance v5, Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-direct {v5}, Landroid/support/v17/leanback/widget/picker/PickerColumn;-><init>()V

    iput-object v5, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mHourColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    iget-object v5, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mHourColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    iget-object v6, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;

    iget-object v6, v6, Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;->hours24:[Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->setStaticLabels([Ljava/lang/CharSequence;)V

    .line 285
    iput v1, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mColHourIndex:I

    .line 280
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 288
    :sswitch_1
    new-instance v5, Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-direct {v5}, Landroid/support/v17/leanback/widget/picker/PickerColumn;-><init>()V

    iput-object v5, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mMinuteColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    iget-object v5, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mMinuteColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    iget-object v6, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;

    iget-object v6, v6, Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;->minutes:[Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->setStaticLabels([Ljava/lang/CharSequence;)V

    .line 290
    iput v1, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mColMinuteIndex:I

    goto :goto_1

    .line 293
    :sswitch_2
    new-instance v5, Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-direct {v5}, Landroid/support/v17/leanback/widget/picker/PickerColumn;-><init>()V

    iput-object v5, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mAmPmColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    iget-object v5, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mAmPmColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    iget-object v6, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;

    iget-object v6, v6, Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;->ampm:[Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->setStaticLabels([Ljava/lang/CharSequence;)V

    .line 295
    iput v1, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mColAmPmIndex:I

    .line 296
    iget-object v5, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mAmPmColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/support/v17/leanback/widget/picker/TimePicker;->updateMin(Landroid/support/v17/leanback/widget/picker/PickerColumn;I)Z

    .line 297
    iget-object v5, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mAmPmColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/support/v17/leanback/widget/picker/TimePicker;->updateMax(Landroid/support/v17/leanback/widget/picker/PickerColumn;I)Z

    goto :goto_1

    .line 303
    :cond_2
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/picker/TimePicker;->setColumns(Ljava/util/List;)V

    .line 304
    return-void

    .line 281
    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_2
        0x48 -> :sswitch_0
        0x4d -> :sswitch_1
    .end sparse-switch
.end method

.method private updateColumnsRange()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 308
    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mHourColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mIs24hFormat:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Landroid/support/v17/leanback/widget/picker/TimePicker;->updateMin(Landroid/support/v17/leanback/widget/picker/PickerColumn;I)Z

    .line 309
    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mHourColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mIs24hFormat:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x17

    :goto_1
    invoke-static {v3, v0}, Landroid/support/v17/leanback/widget/picker/TimePicker;->updateMax(Landroid/support/v17/leanback/widget/picker/PickerColumn;I)Z

    .line 311
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mMinuteColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-static {v0, v1}, Landroid/support/v17/leanback/widget/picker/TimePicker;->updateMin(Landroid/support/v17/leanback/widget/picker/PickerColumn;I)Z

    .line 312
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mMinuteColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    const/16 v3, 0x3b

    invoke-static {v0, v3}, Landroid/support/v17/leanback/widget/picker/TimePicker;->updateMax(Landroid/support/v17/leanback/widget/picker/PickerColumn;I)Z

    .line 314
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mAmPmColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mAmPmColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-static {v0, v1}, Landroid/support/v17/leanback/widget/picker/TimePicker;->updateMin(Landroid/support/v17/leanback/widget/picker/PickerColumn;I)Z

    .line 316
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mAmPmColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-static {v0, v2}, Landroid/support/v17/leanback/widget/picker/TimePicker;->updateMax(Landroid/support/v17/leanback/widget/picker/PickerColumn;I)Z

    .line 318
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 308
    goto :goto_0

    .line 309
    :cond_2
    const/16 v0, 0xc

    goto :goto_1
.end method

.method private static updateMax(Landroid/support/v17/leanback/widget/picker/PickerColumn;I)Z
    .locals 1
    .param p0, "column"    # Landroid/support/v17/leanback/widget/picker/PickerColumn;
    .param p1, "value"    # I

    .prologue
    .line 137
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->getMaxValue()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 138
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->setMaxValue(I)V

    .line 139
    const/4 v0, 0x1

    return v0

    .line 141
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static updateMin(Landroid/support/v17/leanback/widget/picker/PickerColumn;I)Z
    .locals 1
    .param p0, "column"    # Landroid/support/v17/leanback/widget/picker/PickerColumn;
    .param p1, "value"    # I

    .prologue
    .line 129
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->getMinValue()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 130
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->setMinValue(I)V

    .line 131
    const/4 v0, 0x1

    return v0

    .line 133
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method extractSeparators()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 188
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/TimePicker;->getBestHourMinutePattern()Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "hmaPattern":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v6, "separators":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 194
    .local v3, "lastChar":C
    const/4 v8, 0x7

    new-array v7, v8, [C

    .local v7, "timeFormats":[C
    fill-array-data v7, :array_0

    .line 195
    const/4 v4, 0x0

    .line 196
    .local v4, "processingQuote":Z
    const/4 v2, 0x0

    .end local v3    # "lastChar":C
    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v2, v8, :cond_6

    .line 197
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 198
    .local v0, "c":C
    const/16 v8, 0x20

    if-ne v0, v8, :cond_0

    .line 196
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    :cond_0
    const/16 v8, 0x27

    if-ne v0, v8, :cond_2

    .line 202
    if-nez v4, :cond_1

    .line 203
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 204
    const/4 v4, 0x1

    goto :goto_1

    .line 206
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 210
    :cond_2
    if-eqz v4, :cond_4

    .line 211
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    :cond_3
    :goto_2
    move v3, v0

    .local v3, "lastChar":C
    goto :goto_1

    .line 213
    .end local v3    # "lastChar":C
    :cond_4
    invoke-static {v0, v7}, Landroid/support/v17/leanback/widget/picker/TimePicker;->isAnyOf(C[C)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 214
    if-eq v0, v3, :cond_3

    .line 215
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_2

    .line 219
    :cond_5
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 224
    .end local v0    # "c":C
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    return-object v6

    .line 194
    :array_0
    .array-data 2
        0x48s
        0x68s
        0x4bs
        0x6bs
        0x6ds
        0x4ds
        0x61s
    .end array-data
.end method

.method getBestHourMinutePattern()Ljava/lang/String;
    .locals 6

    .prologue
    .line 149
    sget-boolean v3, Landroid/support/v17/leanback/widget/picker/PickerUtility;->SUPPORTS_BEST_DATE_TIME_PATTERN:Z

    if-eqz v3, :cond_2

    .line 150
    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;

    iget-object v4, v3, Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;->locale:Ljava/util/Locale;

    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mIs24hFormat:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "Hma"

    :goto_0
    invoke-static {v4, v3}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, "hourPattern":Ljava/lang/String;
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v2, "h:mma"

    .end local v2    # "hourPattern":Ljava/lang/String;
    :cond_0
    return-object v2

    .line 151
    :cond_1
    const-string/jumbo v3, "hma"

    goto :goto_0

    .line 156
    :cond_2
    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;

    iget-object v3, v3, Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;->locale:Ljava/util/Locale;

    const/4 v4, 0x3

    invoke-static {v4, v3}, Ljava/text/SimpleDateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    .line 157
    .local v0, "dateFormat":Ljava/text/DateFormat;
    instance-of v3, v0, Ljava/text/SimpleDateFormat;

    if-eqz v3, :cond_4

    .line 158
    check-cast v0, Ljava/text/SimpleDateFormat;

    .end local v0    # "dateFormat":Ljava/text/DateFormat;
    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "defaultPattern":Ljava/lang/String;
    const-string/jumbo v3, "s"

    const-string/jumbo v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 160
    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mIs24hFormat:Z

    if-eqz v3, :cond_3

    .line 161
    const/16 v3, 0x68

    const/16 v4, 0x48

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "a"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 163
    :cond_3
    move-object v2, v1

    .restart local v2    # "hourPattern":Ljava/lang/String;
    goto :goto_1

    .line 165
    .end local v1    # "defaultPattern":Ljava/lang/String;
    .end local v2    # "hourPattern":Ljava/lang/String;
    .restart local v0    # "dateFormat":Ljava/text/DateFormat;
    :cond_4
    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mIs24hFormat:Z

    if-eqz v3, :cond_5

    const-string/jumbo v2, "H:mma"

    .restart local v2    # "hourPattern":Ljava/lang/String;
    goto :goto_1

    .end local v2    # "hourPattern":Ljava/lang/String;
    :cond_5
    const-string/jumbo v2, "h:mma"

    .restart local v2    # "hourPattern":Ljava/lang/String;
    goto :goto_1
.end method

.method public is24Hour()Z
    .locals 1

    .prologue
    .line 428
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mIs24hFormat:Z

    return v0
.end method

.method public onColumnValueChanged(II)V
    .locals 2
    .param p1, "columnIndex"    # I
    .param p2, "newValue"    # I

    .prologue
    .line 443
    iget v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mColHourIndex:I

    if-ne p1, v0, :cond_0

    .line 444
    iput p2, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mCurrentHour:I

    .line 452
    :goto_0
    return-void

    .line 445
    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mColMinuteIndex:I

    if-ne p1, v0, :cond_1

    .line 446
    iput p2, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mCurrentMinute:I

    goto :goto_0

    .line 447
    :cond_1
    iget v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mColAmPmIndex:I

    if-ne p1, v0, :cond_2

    .line 448
    iput p2, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mCurrentAmPmIndex:I

    goto :goto_0

    .line 450
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid column index."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHour(I)V
    .locals 3
    .param p1, "hour"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x17L
        .end annotation
    .end param

    .prologue
    const/16 v1, 0xc

    const/4 v2, 0x0

    .line 337
    if-ltz p1, :cond_0

    const/16 v0, 0x17

    if-le p1, v0, :cond_1

    .line 338
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hour: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not in [0-23] range in"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_1
    iput p1, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mCurrentHour:I

    .line 341
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/TimePicker;->is24Hour()Z

    move-result v0

    if-nez v0, :cond_3

    .line 342
    iget v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mCurrentHour:I

    if-lt v0, v1, :cond_4

    .line 343
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mCurrentAmPmIndex:I

    .line 344
    iget v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mCurrentHour:I

    if-le v0, v1, :cond_2

    .line 345
    iget v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mCurrentHour:I

    add-int/lit8 v0, v0, -0xc

    iput v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mCurrentHour:I

    .line 353
    :cond_2
    :goto_0
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/picker/TimePicker;->setAmPmValue()V

    .line 355
    :cond_3
    iget v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mColHourIndex:I

    iget v1, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mCurrentHour:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v17/leanback/widget/picker/TimePicker;->setColumnValue(IIZ)V

    .line 356
    return-void

    .line 348
    :cond_4
    iput v2, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mCurrentAmPmIndex:I

    .line 349
    iget v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mCurrentHour:I

    if-nez v0, :cond_2

    .line 350
    iput v1, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mCurrentHour:I

    goto :goto_0
.end method

.method public setMinute(I)V
    .locals 3
    .param p1, "minute"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x3bL
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 381
    if-ltz p1, :cond_0

    const/16 v0, 0x3b

    if-le p1, v0, :cond_1

    .line 382
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "minute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not in [0-59] range."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_1
    iput p1, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mCurrentMinute:I

    .line 385
    iget v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mColMinuteIndex:I

    iget v1, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mCurrentMinute:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v17/leanback/widget/picker/TimePicker;->setColumnValue(IIZ)V

    .line 386
    return-void
.end method
