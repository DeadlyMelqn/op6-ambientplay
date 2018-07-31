.class public Lcom/ice/box/fragments/OP_UI;
.super Landroid/preference/PreferenceFragment;
.source "OP_UI.java"


# instance fields
.field checkPref:Landroid/preference/SwitchPreference;

.field checked:Z

.field immersiveListValue:Ljava/lang/String;

.field private isFreeVersion:Z

.field mClockPos:Landroid/preference/ListPreference;

.field private mImmersiveList:Landroid/preference/ListPreference;

.field private mImmersivePerAppList:Landroid/preference/MultiSelectListPreference;

.field mQsButtons:Landroid/preference/ListPreference;

.field mQsColumn:Landroid/preference/ListPreference;

.field mQsRow:Landroid/preference/ListPreference;

.field pref:Landroid/preference/Preference;

.field private tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct/range {p0 .. p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ice/box/fragments/OP_UI;)Lcom/ice/box/helpers/TweaksHelper;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/ice/box/fragments/OP_UI;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ice/box/fragments/OP_UI;)Landroid/preference/ListPreference;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/ice/box/fragments/OP_UI;->mImmersiveList:Landroid/preference/ListPreference;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ice/box/fragments/OP_UI;)Landroid/preference/MultiSelectListPreference;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/ice/box/fragments/OP_UI;->mImmersivePerAppList:Landroid/preference/MultiSelectListPreference;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ice/box/fragments/OP_UI;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/ice/box/fragments/OP_UI;->isFreeVersion:Z

    return p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 52
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f130012

    .line 53
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/OP_UI;->addPreferencesFromResource(I)V

    .line 54
    new-instance p1, Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_UI;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/ice/box/helpers/TweaksHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ice/box/fragments/OP_UI;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_UI;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "isFreeVersion"

    const/4 v1, 0x1

    .line 56
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ice/box/fragments/OP_UI;->isFreeVersion:Z

    const-string v0, "tweaks_quick_qs_buttons"

    .line 58
    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/OP_UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/ice/box/fragments/OP_UI;->mQsButtons:Landroid/preference/ListPreference;

    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_UI;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "tweaks_quick_qs_buttons"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    const/4 v3, -0x1

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->mQsButtons:Landroid/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_2

    .line 64
    :cond_0
    invoke-virtual/range {v0 .. v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0x30

    const/4 v9, 0x5

    if-eq v7, v8, :cond_1

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v7, "8"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v9

    goto :goto_1

    :pswitch_1
    const-string v7, "7"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :pswitch_2
    const-string v7, "6"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_1

    :pswitch_3
    const-string v7, "5"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v5

    goto :goto_1

    :pswitch_4
    const-string v7, "4"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_1
    const-string v7, "0"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v6

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v3

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_2

    .line 81
    :pswitch_5
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->mQsButtons:Landroid/preference/ListPreference;

    invoke-virtual {v0, v9}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_2

    .line 78
    :pswitch_6
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->mQsButtons:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_2

    .line 75
    :pswitch_7
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->mQsButtons:Landroid/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_2

    .line 72
    :pswitch_8
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->mQsButtons:Landroid/preference/ListPreference;

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_2

    .line 69
    :pswitch_9
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->mQsButtons:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_2

    .line 66
    :pswitch_a
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->mQsButtons:Landroid/preference/ListPreference;

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 85
    :goto_2
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->mQsButtons:Landroid/preference/ListPreference;

    new-instance v7, Lcom/ice/box/fragments/OP_UI$1;

    invoke-direct {v7, p0}, Lcom/ice/box/fragments/OP_UI$1;-><init>(Lcom/ice/box/fragments/OP_UI;)V

    invoke-virtual {v0, v7}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "tweaks_qs_rows"

    .line 110
    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/OP_UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/ice/box/fragments/OP_UI;->mQsRow:Landroid/preference/ListPreference;

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_UI;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v7, "tweaks_qs_rows"

    invoke-static {v0, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 113
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->mQsRow:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_5

    .line 115
    :cond_3
    invoke-virtual/range {v0 .. v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    packed-switch v7, :pswitch_data_2

    goto :goto_3

    :pswitch_b
    const-string v7, "6"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_4

    :pswitch_c
    const-string v7, "5"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v4

    goto :goto_4

    :pswitch_d
    const-string v7, "4"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v5

    goto :goto_4

    :pswitch_e
    const-string v7, "3"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_4

    :pswitch_f
    const-string v7, "2"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v6

    goto :goto_4

    :cond_4
    :goto_3
    move v0, v3

    :goto_4
    packed-switch v0, :pswitch_data_3

    goto :goto_5

    .line 129
    :pswitch_10
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->mQsRow:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_5

    .line 126
    :pswitch_11
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->mQsRow:Landroid/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_5

    .line 123
    :pswitch_12
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->mQsRow:Landroid/preference/ListPreference;

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_5

    .line 120
    :pswitch_13
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->mQsRow:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_5

    .line 117
    :pswitch_14
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->mQsRow:Landroid/preference/ListPreference;

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 133
    :goto_5
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->mQsRow:Landroid/preference/ListPreference;

    new-instance v2, Lcom/ice/box/fragments/OP_UI$2;

    invoke-direct {v2, p0}, Lcom/ice/box/fragments/OP_UI$2;-><init>(Lcom/ice/box/fragments/OP_UI;)V

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "tweaks_qs_columns"

    .line 156
    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/OP_UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/ice/box/fragments/OP_UI;->mQsColumn:Landroid/preference/ListPreference;

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_UI;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "tweaks_qs_columns"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 159
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->mQsColumn:Landroid/preference/ListPreference;

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_8

    .line 161
    :cond_5
    invoke-virtual/range {v0 .. v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_4

    goto :goto_6

    :pswitch_15
    const-string v2, "5"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v4

    goto :goto_7

    :pswitch_16
    const-string v2, "4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v5

    goto :goto_7

    :pswitch_17
    const-string v2, "3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_7

    :pswitch_18
    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v6

    goto :goto_7

    :cond_6
    :goto_6
    move v0, v3

    :goto_7
    packed-switch v0, :pswitch_data_5

    goto :goto_8

    .line 172
    :pswitch_19
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->mQsColumn:Landroid/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_8

    .line 169
    :pswitch_1a
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->mQsColumn:Landroid/preference/ListPreference;

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_8

    .line 166
    :pswitch_1b
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->mQsColumn:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_8

    .line 163
    :pswitch_1c
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->mQsColumn:Landroid/preference/ListPreference;

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 176
    :goto_8
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->mQsColumn:Landroid/preference/ListPreference;

    new-instance v2, Lcom/ice/box/fragments/OP_UI$3;

    invoke-direct {v2, p0}, Lcom/ice/box/fragments/OP_UI$3;-><init>(Lcom/ice/box/fragments/OP_UI;)V

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "tweaks_clock_position"

    .line 198
    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/OP_UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/ice/box/fragments/OP_UI;->mClockPos:Landroid/preference/ListPreference;

    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_UI;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "tweaks_clock_position"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-static/range {v0 .. v0}, Lcom/ice/box/helpers/TweaksHelper;->isEmptyString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 202
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->mClockPos:Landroid/preference/ListPreference;

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_b

    .line 204
    :cond_7
    invoke-virtual/range {v0 .. v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_6

    goto :goto_9

    :pswitch_1d
    const-string v2, "3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v4

    goto :goto_a

    :pswitch_1e
    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v5

    goto :goto_a

    :pswitch_1f
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_a

    :pswitch_20
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v6

    goto :goto_a

    :cond_8
    :goto_9
    move v0, v3

    :goto_a
    packed-switch v0, :pswitch_data_7

    goto :goto_b

    .line 215
    :pswitch_21
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->mClockPos:Landroid/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_b

    .line 212
    :pswitch_22
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->mClockPos:Landroid/preference/ListPreference;

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_b

    .line 209
    :pswitch_23
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->mClockPos:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_b

    .line 206
    :pswitch_24
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->mClockPos:Landroid/preference/ListPreference;

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 219
    :goto_b
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->mClockPos:Landroid/preference/ListPreference;

    new-instance v2, Lcom/ice/box/fragments/OP_UI$4;

    invoke-direct {v2, p0}, Lcom/ice/box/fragments/OP_UI$4;-><init>(Lcom/ice/box/fragments/OP_UI;)V

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "tweaks_clock_onclick"

    .line 242
    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/OP_UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/ice/box/fragments/OP_UI;->pref:Landroid/preference/Preference;

    const-string v0, "tweaks_clock_onclick"

    .line 243
    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/OP_UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/ice/box/fragments/OP_UI;->checkPref:Landroid/preference/SwitchPreference;

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_UI;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "tweaks_clock_onclick"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_9

    move v0, v1

    goto :goto_c

    :cond_9
    move v0, v6

    :goto_c
    iput-boolean v0, p0, Lcom/ice/box/fragments/OP_UI;->checked:Z

    .line 245
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->checkPref:Landroid/preference/SwitchPreference;

    iget-boolean v2, p0, Lcom/ice/box/fragments/OP_UI;->checked:Z

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 246
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->pref:Landroid/preference/Preference;

    new-instance v2, Lcom/ice/box/fragments/OP_UI$5;

    invoke-direct {v2, p0}, Lcom/ice/box/fragments/OP_UI$5;-><init>(Lcom/ice/box/fragments/OP_UI;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "tweaks_qs_pulldown"

    .line 263
    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/OP_UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/ice/box/fragments/OP_UI;->pref:Landroid/preference/Preference;

    const-string v0, "tweaks_qs_pulldown"

    .line 264
    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/OP_UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/ice/box/fragments/OP_UI;->checkPref:Landroid/preference/SwitchPreference;

    .line 265
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_UI;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "tweaks_qs_pulldown"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_a

    move v0, v1

    goto :goto_d

    :cond_a
    move v0, v6

    :goto_d
    iput-boolean v0, p0, Lcom/ice/box/fragments/OP_UI;->checked:Z

    .line 266
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->checkPref:Landroid/preference/SwitchPreference;

    iget-boolean v2, p0, Lcom/ice/box/fragments/OP_UI;->checked:Z

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 267
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->pref:Landroid/preference/Preference;

    new-instance v2, Lcom/ice/box/fragments/OP_UI$6;

    invoke-direct {v2, p0}, Lcom/ice/box/fragments/OP_UI$6;-><init>(Lcom/ice/box/fragments/OP_UI;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "tweaks_double_tap_sleep"

    .line 285
    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/OP_UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/ice/box/fragments/OP_UI;->pref:Landroid/preference/Preference;

    const-string v0, "tweaks_double_tap_sleep"

    .line 286
    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/OP_UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/ice/box/fragments/OP_UI;->checkPref:Landroid/preference/SwitchPreference;

    .line 287
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_UI;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "tweaks_double_tap_sleep"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_b

    move v0, v1

    goto :goto_e

    :cond_b
    move v0, v6

    :goto_e
    iput-boolean v0, p0, Lcom/ice/box/fragments/OP_UI;->checked:Z

    .line 288
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->checkPref:Landroid/preference/SwitchPreference;

    iget-boolean v2, p0, Lcom/ice/box/fragments/OP_UI;->checked:Z

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 289
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->pref:Landroid/preference/Preference;

    new-instance v2, Lcom/ice/box/fragments/OP_UI$7;

    invoke-direct {v2, p0}, Lcom/ice/box/fragments/OP_UI$7;-><init>(Lcom/ice/box/fragments/OP_UI;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "onePlus6"

    const/16 v2, 0xa

    const/16 v4, 0x15

    .line 305
    invoke-static {v0, v2, v4, v6}, Lcom/ice/box/MainActivity;->isEnvironmentHigherThanOrEqual(Ljava/lang/String;III)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "tweaks_clock_seconds"

    .line 306
    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/OP_UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/ice/box/fragments/OP_UI;->pref:Landroid/preference/Preference;

    .line 307
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_UI;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/ice/box/fragments/OP_UI;->pref:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 308
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_UI;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "tweaks_clock_seconds_divider"

    invoke-virtual {p0, v2}, Lcom/ice/box/fragments/OP_UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_10

    :cond_c
    const-string v0, "tweaks_clock_seconds"

    .line 310
    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/OP_UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/ice/box/fragments/OP_UI;->pref:Landroid/preference/Preference;

    const-string v0, "tweaks_clock_seconds"

    .line 311
    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/OP_UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/ice/box/fragments/OP_UI;->checkPref:Landroid/preference/SwitchPreference;

    .line 312
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_UI;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "tweaks_clock_seconds"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_d

    move v0, v1

    goto :goto_f

    :cond_d
    move v0, v6

    :goto_f
    iput-boolean v0, p0, Lcom/ice/box/fragments/OP_UI;->checked:Z

    .line 313
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->checkPref:Landroid/preference/SwitchPreference;

    iget-boolean v2, p0, Lcom/ice/box/fragments/OP_UI;->checked:Z

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 314
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->pref:Landroid/preference/Preference;

    new-instance v2, Lcom/ice/box/fragments/OP_UI$8;

    invoke-direct {v2, p0}, Lcom/ice/box/fragments/OP_UI$8;-><init>(Lcom/ice/box/fragments/OP_UI;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :goto_10
    const-string v0, "onePlus6"

    const/16 v2, 0x1c

    const/16 v4, 0x1f

    .line 331
    invoke-static {v0, v2, v4, v6}, Lcom/ice/box/MainActivity;->isEnvironmentHigherThanOrEqual(Ljava/lang/String;III)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "tweaks_qs_vibration"

    .line 332
    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/OP_UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/ice/box/fragments/OP_UI;->pref:Landroid/preference/Preference;

    .line 333
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_UI;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/ice/box/fragments/OP_UI;->pref:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 334
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_UI;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "tweaks_qs_vibration_divider"

    invoke-virtual {p0, v2}, Lcom/ice/box/fragments/OP_UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_12

    :cond_e
    const-string v0, "tweaks_qs_vibration"

    .line 336
    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/OP_UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/ice/box/fragments/OP_UI;->pref:Landroid/preference/Preference;

    const-string v0, "tweaks_qs_vibration"

    .line 337
    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/OP_UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/ice/box/fragments/OP_UI;->checkPref:Landroid/preference/SwitchPreference;

    .line 338
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_UI;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "tweaks_qs_vibration"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_f

    move v0, v1

    goto :goto_11

    :cond_f
    move v0, v6

    :goto_11
    iput-boolean v0, p0, Lcom/ice/box/fragments/OP_UI;->checked:Z

    .line 339
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->checkPref:Landroid/preference/SwitchPreference;

    iget-boolean v2, p0, Lcom/ice/box/fragments/OP_UI;->checked:Z

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 340
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->pref:Landroid/preference/Preference;

    new-instance v2, Lcom/ice/box/fragments/OP_UI$9;

    invoke-direct {v2, p0}, Lcom/ice/box/fragments/OP_UI$9;-><init>(Lcom/ice/box/fragments/OP_UI;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :goto_12
    const-string v0, "onePlus6"

    const/16 v2, 0x23

    const/16 v4, 0x20

    .line 357
    invoke-static {v0, v2, v4, v6}, Lcom/ice/box/MainActivity;->isEnvironmentHigherThanOrEqual(Ljava/lang/String;III)Z

    move-result v0

    if-nez v0, :cond_10

    .line 358
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_UI;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "tweaks_pulldown_blur"

    invoke-virtual {p0, v2}, Lcom/ice/box/fragments/OP_UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_UI;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "tweaks_pulldown_blur_divider"

    invoke-virtual {p0, v2}, Lcom/ice/box/fragments/OP_UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_14

    :cond_10
    const-string v0, "tweaks_pulldown_blur"

    .line 362
    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/OP_UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/ice/box/fragments/OP_UI;->pref:Landroid/preference/Preference;

    const-string v0, "tweaks_pulldown_blur"

    .line 363
    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/OP_UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/ice/box/fragments/OP_UI;->checkPref:Landroid/preference/SwitchPreference;

    .line 364
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_UI;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "tweaks_pulldown_blur"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_11

    move v0, v1

    goto :goto_13

    :cond_11
    move v0, v6

    :goto_13
    iput-boolean v0, p0, Lcom/ice/box/fragments/OP_UI;->checked:Z

    .line 365
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->checkPref:Landroid/preference/SwitchPreference;

    iget-boolean v2, p0, Lcom/ice/box/fragments/OP_UI;->checked:Z

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 366
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->pref:Landroid/preference/Preference;

    new-instance v2, Lcom/ice/box/fragments/OP_UI$10;

    invoke-direct {v2, p0}, Lcom/ice/box/fragments/OP_UI$10;-><init>(Lcom/ice/box/fragments/OP_UI;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :goto_14
    const-string v0, "onePlus6"

    const/16 v2, 0x26

    const/16 v4, 0x21

    .line 384
    invoke-static {v0, v2, v4, v6}, Lcom/ice/box/MainActivity;->isEnvironmentHigherThanOrEqual(Ljava/lang/String;III)Z

    move-result v0

    if-nez v0, :cond_12

    .line 385
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_UI;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "tweaks_all_rotations"

    invoke-virtual {p0, v2}, Lcom/ice/box/fragments/OP_UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 386
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_UI;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "tweaks_all_rotations_divider"

    invoke-virtual {p0, v2}, Lcom/ice/box/fragments/OP_UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_16

    :cond_12
    const-string v0, "tweaks_all_rotations"

    .line 389
    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/OP_UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/ice/box/fragments/OP_UI;->pref:Landroid/preference/Preference;

    const-string v0, "tweaks_all_rotations"

    .line 390
    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/OP_UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/ice/box/fragments/OP_UI;->checkPref:Landroid/preference/SwitchPreference;

    .line 391
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_UI;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "tweaks_all_rotations"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_13

    move v0, v1

    goto :goto_15

    :cond_13
    move v0, v6

    .line 393
    :goto_15
    iget-object v2, p0, Lcom/ice/box/fragments/OP_UI;->checkPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 394
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->pref:Landroid/preference/Preference;

    new-instance v2, Lcom/ice/box/fragments/OP_UI$11;

    invoke-direct {v2, p0}, Lcom/ice/box/fragments/OP_UI$11;-><init>(Lcom/ice/box/fragments/OP_UI;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 414
    :goto_16
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_UI;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "policy_control"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ice/box/fragments/OP_UI;->immersiveListValue:Ljava/lang/String;

    const-string v0, "tweaks_immersive_list"

    .line 416
    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/OP_UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/ice/box/fragments/OP_UI;->mImmersiveList:Landroid/preference/ListPreference;

    const-string v0, "immersive_perapp"

    .line 417
    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/OP_UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/MultiSelectListPreference;

    iput-object v0, p0, Lcom/ice/box/fragments/OP_UI;->mImmersivePerAppList:Landroid/preference/MultiSelectListPreference;

    .line 418
    iget-boolean v0, p0, Lcom/ice/box/fragments/OP_UI;->isFreeVersion:Z

    const v2, 0x17ca44ef

    const v4, -0x72d87165

    if-eqz v0, :cond_18

    .line 419
    new-array v0, v5, [Ljava/lang/CharSequence;

    const v7, 0x7f100098

    invoke-virtual {p0, v7}, Lcom/ice/box/fragments/OP_UI;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    const v7, 0x7f100099

    invoke-virtual {p0, v7}, Lcom/ice/box/fragments/OP_UI;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v1

    .line 421
    new-array v5, v5, [Ljava/lang/CharSequence;

    const-string v7, "immersive.full="

    aput-object v7, v5, v6

    const-string v7, "immersive.full=*"

    aput-object v7, v5, v1

    .line 422
    iget-object v7, p0, Lcom/ice/box/fragments/OP_UI;->mImmersiveList:Landroid/preference/ListPreference;

    invoke-virtual {v7, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 423
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->mImmersiveList:Landroid/preference/ListPreference;

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 424
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->immersiveListValue:Ljava/lang/String;

    invoke-static/range {v0 .. v0}, Lcom/ice/box/helpers/TweaksHelper;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 425
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->mImmersiveList:Landroid/preference/ListPreference;

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_1d

    .line 427
    :cond_14
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->immersiveListValue:Ljava/lang/String;

    invoke-virtual/range {v0 .. v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    if-eq v5, v4, :cond_16

    if-eq v5, v2, :cond_15

    goto :goto_17

    :cond_15
    const-string v5, "immersive.full=*"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v1

    goto :goto_18

    :cond_16
    const-string v5, "immersive.full="

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v6

    goto :goto_18

    :cond_17
    :goto_17
    move v0, v3

    :goto_18
    packed-switch v0, :pswitch_data_8

    .line 444
    :try_start_0
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->mImmersiveList:Landroid/preference/ListPreference;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_19

    .line 437
    :pswitch_25
    :try_start_1
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->mImmersiveList:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1d

    .line 439
    :catch_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct/range {v5 .. v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OutOfBoundsException: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/ice/box/fragments/OP_UI;->mImmersiveList:Landroid/preference/ListPreference;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v5 .. v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 430
    :pswitch_26
    :try_start_2
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->mImmersiveList:Landroid/preference/ListPreference;

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setValueIndex(I)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1d

    .line 432
    :catch_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct/range {v5 .. v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OutOfBoundsException: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/ice/box/fragments/OP_UI;->mImmersiveList:Landroid/preference/ListPreference;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v5 .. v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 444
    :goto_19
    :try_start_3
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1d

    .line 446
    :catch_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct/range {v5 .. v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OutOfBoundsException: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/ice/box/fragments/OP_UI;->mImmersiveList:Landroid/preference/ListPreference;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v5 .. v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 452
    :cond_18
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->immersiveListValue:Ljava/lang/String;

    invoke-static/range {v0 .. v0}, Lcom/ice/box/helpers/TweaksHelper;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 453
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->mImmersiveList:Landroid/preference/ListPreference;

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_1d

    .line 455
    :cond_19
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->immersiveListValue:Ljava/lang/String;

    invoke-virtual/range {v0 .. v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    if-eq v7, v4, :cond_1b

    if-eq v7, v2, :cond_1a

    goto :goto_1a

    :cond_1a
    const-string v7, "immersive.full=*"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    move v0, v1

    goto :goto_1b

    :cond_1b
    const-string v7, "immersive.full="

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    move v0, v6

    goto :goto_1b

    :cond_1c
    :goto_1a
    move v0, v3

    :goto_1b
    packed-switch v0, :pswitch_data_9

    .line 473
    :try_start_4
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->mImmersiveList:Landroid/preference/ListPreference;
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_1c

    .line 466
    :pswitch_27
    :try_start_5
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->mImmersiveList:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1d

    .line 468
    :catch_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct/range {v5 .. v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OutOfBoundsException: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/ice/box/fragments/OP_UI;->mImmersiveList:Landroid/preference/ListPreference;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v5 .. v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 458
    :pswitch_28
    :try_start_6
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->mImmersiveList:Landroid/preference/ListPreference;

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setValueIndex(I)V
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1d

    .line 461
    :catch_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct/range {v5 .. v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OutOfBoundsException: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/ice/box/fragments/OP_UI;->mImmersiveList:Landroid/preference/ListPreference;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v5 .. v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 473
    :goto_1c
    :try_start_7
    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V
    :try_end_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_1d

    .line 475
    :catch_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct/range {v5 .. v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OutOfBoundsException: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/ice/box/fragments/OP_UI;->mImmersiveList:Landroid/preference/ListPreference;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v5 .. v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :goto_1d
    iget-object v0, p0, Lcom/ice/box/fragments/OP_UI;->mImmersiveList:Landroid/preference/ListPreference;

    new-instance v5, Lcom/ice/box/fragments/OP_UI$12;

    invoke-direct {v5, p0, p1}, Lcom/ice/box/fragments/OP_UI$12;-><init>(Lcom/ice/box/fragments/OP_UI;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "immersive_perapp"

    .line 566
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/OP_UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/MultiSelectListPreference;

    iput-object p1, p0, Lcom/ice/box/fragments/OP_UI;->mImmersivePerAppList:Landroid/preference/MultiSelectListPreference;

    .line 567
    iget-boolean p1, p0, Lcom/ice/box/fragments/OP_UI;->isFreeVersion:Z

    if-eqz p1, :cond_1d

    .line 568
    iget-object p1, p0, Lcom/ice/box/fragments/OP_UI;->mImmersivePerAppList:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {p1, v6}, Landroid/preference/MultiSelectListPreference;->setEnabled(Z)V

    .line 569
    iget-object p1, p0, Lcom/ice/box/fragments/OP_UI;->mImmersivePerAppList:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {p1, v6}, Landroid/preference/MultiSelectListPreference;->setSelectable(Z)V

    .line 570
    iget-object p1, p0, Lcom/ice/box/fragments/OP_UI;->mImmersivePerAppList:Landroid/preference/MultiSelectListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_UI;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100079

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/MultiSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_20

    .line 572
    :cond_1d
    iget-object p1, p0, Lcom/ice/box/fragments/OP_UI;->immersiveListValue:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/helpers/TweaksHelper;->isEmptyString(Ljava/lang/String;)Z

    move-result p1

    const v0, 0x7f10009c

    if-eqz p1, :cond_1e

    .line 573
    iget-object p1, p0, Lcom/ice/box/fragments/OP_UI;->mImmersivePerAppList:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {p1, v6}, Landroid/preference/MultiSelectListPreference;->setEnabled(Z)V

    .line 574
    iget-object p1, p0, Lcom/ice/box/fragments/OP_UI;->mImmersivePerAppList:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {p1, v6}, Landroid/preference/MultiSelectListPreference;->setSelectable(Z)V

    .line 575
    iget-object p1, p0, Lcom/ice/box/fragments/OP_UI;->mImmersivePerAppList:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {p1, v0}, Landroid/preference/MultiSelectListPreference;->setSummary(I)V

    goto :goto_1f

    .line 577
    :cond_1e
    iget-object p1, p0, Lcom/ice/box/fragments/OP_UI;->immersiveListValue:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    if-eq v5, v4, :cond_20

    if-eq v5, v2, :cond_1f

    goto :goto_1e

    :cond_1f
    const-string v2, "immersive.full=*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    move v3, v1

    goto :goto_1e

    :cond_20
    const-string v2, "immersive.full="

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    move v3, v6

    :cond_21
    :goto_1e
    packed-switch v3, :pswitch_data_a

    .line 589
    iget-object p1, p0, Lcom/ice/box/fragments/OP_UI;->mImmersivePerAppList:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {p1, v1}, Landroid/preference/MultiSelectListPreference;->setEnabled(Z)V

    .line 590
    iget-object p1, p0, Lcom/ice/box/fragments/OP_UI;->mImmersivePerAppList:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {p1, v1}, Landroid/preference/MultiSelectListPreference;->setSelectable(Z)V

    goto :goto_1f

    .line 584
    :pswitch_29
    iget-object p1, p0, Lcom/ice/box/fragments/OP_UI;->mImmersivePerAppList:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {p1, v6}, Landroid/preference/MultiSelectListPreference;->setEnabled(Z)V

    .line 585
    iget-object p1, p0, Lcom/ice/box/fragments/OP_UI;->mImmersivePerAppList:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {p1, v6}, Landroid/preference/MultiSelectListPreference;->setSelectable(Z)V

    .line 586
    iget-object p1, p0, Lcom/ice/box/fragments/OP_UI;->mImmersivePerAppList:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {p1, v0}, Landroid/preference/MultiSelectListPreference;->setSummary(I)V

    goto :goto_1f

    .line 579
    :pswitch_2a
    iget-object p1, p0, Lcom/ice/box/fragments/OP_UI;->mImmersivePerAppList:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {p1, v6}, Landroid/preference/MultiSelectListPreference;->setEnabled(Z)V

    .line 580
    iget-object p1, p0, Lcom/ice/box/fragments/OP_UI;->mImmersivePerAppList:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {p1, v6}, Landroid/preference/MultiSelectListPreference;->setSelectable(Z)V

    .line 581
    iget-object p1, p0, Lcom/ice/box/fragments/OP_UI;->mImmersivePerAppList:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {p1, v0}, Landroid/preference/MultiSelectListPreference;->setSummary(I)V

    .line 595
    :goto_1f
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/ice/box/fragments/OP_UI$13;

    invoke-direct {v0, p0}, Lcom/ice/box/fragments/OP_UI$13;-><init>(Lcom/ice/box/fragments/OP_UI;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 647
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Thread;->start()V

    .line 651
    :goto_20
    iget-object p1, p0, Lcom/ice/box/fragments/OP_UI;->mImmersivePerAppList:Landroid/preference/MultiSelectListPreference;

    new-instance v0, Lcom/ice/box/fragments/OP_UI$14;

    invoke-direct {v0, p0}, Lcom/ice/box/fragments/OP_UI$14;-><init>(Lcom/ice/box/fragments/OP_UI;)V

    invoke-virtual {p1, v0}, Landroid/preference/MultiSelectListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x34
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x32
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x32
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x30
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_26
        :pswitch_25
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_28
        :pswitch_27
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_29
    .end packed-switch
.end method
