.class public Lcom/ice/box/fragments/App;
.super Landroid/preference/PreferenceFragment;
.source "App.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private batteryPercentageFlashApply:Landroid/widget/Button;

.field private final batteryPercentageFlashApplyListener:Landroid/view/View$OnClickListener;

.field private batteryPercentageFlashDialog:Landroid/app/AlertDialog;

.field private batteryPercentageFlashMinus:Landroid/widget/Button;

.field private final batteryPercentageFlashMinusListener:Landroid/view/View$OnClickListener;

.field private batteryPercentageFlashPlus:Landroid/widget/Button;

.field private final batteryPercentageFlashPlusListener:Landroid/view/View$OnClickListener;

.field private batteryPercentageFlashProgress:I

.field private batteryPercentageFlashSeek:Landroid/widget/SeekBar;

.field private final batteryPercentageFlashSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final batteryPercentageFlashSeekMax:I

.field private batteryPercentageFlashValue:Landroid/widget/TextView;

.field filterPref:Landroid/preference/Preference;

.field seekDialog:Lcom/ice/box/helpers/SeekDialog;

.field tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct/range {p0 .. p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const/16 v0, 0xf

    .line 46
    iput v0, p0, Lcom/ice/box/fragments/App;->batteryPercentageFlashSeekMax:I

    .line 58
    new-instance v0, Lcom/ice/box/fragments/App$1;

    invoke-direct {v0, p0}, Lcom/ice/box/fragments/App$1;-><init>(Lcom/ice/box/fragments/App;)V

    iput-object v0, p0, Lcom/ice/box/fragments/App;->batteryPercentageFlashPlusListener:Landroid/view/View$OnClickListener;

    .line 71
    new-instance v0, Lcom/ice/box/fragments/App$2;

    invoke-direct {v0, p0}, Lcom/ice/box/fragments/App$2;-><init>(Lcom/ice/box/fragments/App;)V

    iput-object v0, p0, Lcom/ice/box/fragments/App;->batteryPercentageFlashMinusListener:Landroid/view/View$OnClickListener;

    .line 83
    new-instance v0, Lcom/ice/box/fragments/App$3;

    invoke-direct {v0, p0}, Lcom/ice/box/fragments/App$3;-><init>(Lcom/ice/box/fragments/App;)V

    iput-object v0, p0, Lcom/ice/box/fragments/App;->batteryPercentageFlashApplyListener:Landroid/view/View$OnClickListener;

    .line 102
    new-instance v0, Lcom/ice/box/fragments/App$4;

    invoke-direct {v0, p0}, Lcom/ice/box/fragments/App$4;-><init>(Lcom/ice/box/fragments/App;)V

    iput-object v0, p0, Lcom/ice/box/fragments/App;->batteryPercentageFlashSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/ice/box/fragments/App;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/ice/box/fragments/App;->batteryPercentageFlashProgress:I

    return p0
.end method

.method static synthetic access$002(Lcom/ice/box/fragments/App;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/ice/box/fragments/App;->batteryPercentageFlashProgress:I

    return p1
.end method

.method static synthetic access$008(Lcom/ice/box/fragments/App;)I
    .locals 2

    .line 43
    iget v0, p0, Lcom/ice/box/fragments/App;->batteryPercentageFlashProgress:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ice/box/fragments/App;->batteryPercentageFlashProgress:I

    return v0
.end method

.method static synthetic access$010(Lcom/ice/box/fragments/App;)I
    .locals 2

    .line 43
    iget v0, p0, Lcom/ice/box/fragments/App;->batteryPercentageFlashProgress:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/ice/box/fragments/App;->batteryPercentageFlashProgress:I

    return v0
.end method

.method static synthetic access$100(Lcom/ice/box/fragments/App;)Landroid/widget/TextView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/ice/box/fragments/App;->batteryPercentageFlashValue:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ice/box/fragments/App;)Landroid/widget/SeekBar;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/ice/box/fragments/App;->batteryPercentageFlashSeek:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ice/box/fragments/App;)Landroid/app/AlertDialog;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/ice/box/fragments/App;->batteryPercentageFlashDialog:Landroid/app/AlertDialog;

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 127
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/high16 p1, 0x7f130000

    .line 128
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/App;->addPreferencesFromResource(I)V

    .line 129
    new-instance p1, Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/App;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/ice/box/helpers/TweaksHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ice/box/fragments/App;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    .line 130
    new-instance p1, Lcom/ice/box/helpers/SeekDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/App;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/ice/box/helpers/SeekDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ice/box/fragments/App;->seekDialog:Lcom/ice/box/helpers/SeekDialog;

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/App;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "isNightly"

    const/4 v1, 0x0

    .line 132
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "isS8"

    .line 133
    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "isS9"

    .line 134
    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "localNightlyVersion"

    const/4 v5, 0x1

    .line 135
    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v6, "localStableVersion"

    .line 136
    invoke-interface {p1, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    const-string v6, "tweaks_battery_flash_level"

    .line 146
    invoke-virtual {p0, v6}, Lcom/ice/box/fragments/App;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/ice/box/fragments/App;->filterPref:Landroid/preference/Preference;

    .line 147
    iget-object v6, p0, Lcom/ice/box/fragments/App;->filterPref:Landroid/preference/Preference;

    invoke-virtual {v6, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v6, "tweaks_fingerprint_unlock"

    .line 150
    invoke-virtual {p0, v6}, Lcom/ice/box/fragments/App;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/ice/box/fragments/App;->filterPref:Landroid/preference/Preference;

    const-string v6, "tweaks_fingerprint_unlock"

    .line 151
    invoke-virtual {p0, v6}, Lcom/ice/box/fragments/App;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    const-string v7, "renovate.fingerprint.unlock"

    .line 152
    invoke-static/range {v7 .. v7}, Lcom/ice/box/helpers/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 153
    invoke-static/range {v7 .. v7}, Lcom/ice/box/helpers/TweaksHelper;->isEmptyString(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 154
    invoke-virtual {v6, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    :cond_0
    const/4 v8, -0x1

    .line 156
    invoke-virtual/range {v7 .. v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v9, "1"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v8, v5

    goto :goto_0

    :pswitch_1
    const-string v9, "0"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v8, v1

    :cond_1
    :goto_0
    packed-switch v8, :pswitch_data_1

    goto :goto_1

    .line 161
    :pswitch_2
    invoke-virtual {v6, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 158
    :pswitch_3
    invoke-virtual {v6, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 165
    :goto_1
    iget-object v6, p0, Lcom/ice/box/fragments/App;->filterPref:Landroid/preference/Preference;

    new-instance v7, Lcom/ice/box/fragments/App$5;

    invoke-direct {v7, p0}, Lcom/ice/box/fragments/App$5;-><init>(Lcom/ice/box/fragments/App;)V

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v6, "tweaks_lockscreen_rotation"

    .line 183
    invoke-virtual {p0, v6}, Lcom/ice/box/fragments/App;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/ice/box/fragments/App;->filterPref:Landroid/preference/Preference;

    .line 184
    iget-object v6, p0, Lcom/ice/box/fragments/App;->filterPref:Landroid/preference/Preference;

    invoke-virtual {v6, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v6, "tweaks_lockscreen_rotation"

    .line 185
    invoke-virtual {p0, v6}, Lcom/ice/box/fragments/App;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/App;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual/range {v7 .. v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "tweaks_lockscreen_rotation"

    invoke-static {v7, v8, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_2

    move v7, v5

    goto :goto_2

    :cond_2
    move v7, v1

    .line 187
    :goto_2
    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string v6, "tweaks_lockscreen_guide_text"

    .line 189
    invoke-virtual {p0, v6}, Lcom/ice/box/fragments/App;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/ice/box/fragments/App;->filterPref:Landroid/preference/Preference;

    .line 190
    iget-object v6, p0, Lcom/ice/box/fragments/App;->filterPref:Landroid/preference/Preference;

    invoke-virtual {v6, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v6, "tweaks_lockscreen_guide_text"

    .line 191
    invoke-virtual {p0, v6}, Lcom/ice/box/fragments/App;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/App;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual/range {v7 .. v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "tweaks_lockscreen_guide_text"

    invoke-static {v7, v8, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_3

    move v7, v5

    goto :goto_3

    :cond_3
    move v7, v1

    .line 194
    :goto_3
    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string v6, "tweaks_quick_unlock"

    .line 196
    invoke-virtual {p0, v6}, Lcom/ice/box/fragments/App;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/ice/box/fragments/App;->filterPref:Landroid/preference/Preference;

    .line 197
    iget-object v6, p0, Lcom/ice/box/fragments/App;->filterPref:Landroid/preference/Preference;

    invoke-virtual {v6, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v6, "tweaks_quick_unlock"

    .line 198
    invoke-virtual {p0, v6}, Lcom/ice/box/fragments/App;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/App;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual/range {v7 .. v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "tweaks_quick_unlock"

    invoke-static {v7, v8, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_4

    move v7, v5

    goto :goto_4

    :cond_4
    move v7, v1

    .line 200
    :goto_4
    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string v6, "tweaks_scramble_pin"

    .line 202
    invoke-virtual {p0, v6}, Lcom/ice/box/fragments/App;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/ice/box/fragments/App;->filterPref:Landroid/preference/Preference;

    .line 203
    iget-object v6, p0, Lcom/ice/box/fragments/App;->filterPref:Landroid/preference/Preference;

    invoke-virtual {v6, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v6, "tweaks_scramble_pin"

    .line 204
    invoke-virtual {p0, v6}, Lcom/ice/box/fragments/App;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/App;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual/range {v7 .. v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "tweaks_scramble_pin"

    invoke-static {v7, v8, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_5

    move v7, v5

    goto :goto_5

    :cond_5
    move v7, v1

    .line 206
    :goto_5
    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string v6, "tweaks_secure_window"

    .line 208
    invoke-virtual {p0, v6}, Lcom/ice/box/fragments/App;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/ice/box/fragments/App;->filterPref:Landroid/preference/Preference;

    .line 209
    iget-object v6, p0, Lcom/ice/box/fragments/App;->filterPref:Landroid/preference/Preference;

    invoke-virtual {v6, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v6, "tweaks_secure_window"

    .line 210
    invoke-virtual {p0, v6}, Lcom/ice/box/fragments/App;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/App;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual/range {v7 .. v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "tweaks_secure_window"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_6

    move v7, v5

    goto :goto_6

    :cond_6
    move v7, v1

    .line 212
    :goto_6
    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string v6, "tweaks_netflix"

    .line 214
    invoke-virtual {p0, v6}, Lcom/ice/box/fragments/App;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/ice/box/fragments/App;->filterPref:Landroid/preference/Preference;

    .line 215
    iget-object v6, p0, Lcom/ice/box/fragments/App;->filterPref:Landroid/preference/Preference;

    invoke-virtual {v6, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v6, "tweaks_netflix"

    .line 216
    invoke-virtual {p0, v6}, Lcom/ice/box/fragments/App;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    const-string v7, "/system//lib/liboemcrypto.so"

    .line 217
    invoke-static {v7, v5}, Lcom/ice/box/helpers/Tools;->existFile(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 218
    invoke-virtual {v6, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_7

    .line 220
    :cond_7
    invoke-virtual {v6, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_7
    const-string v6, "tweaks_hide_iris"

    .line 223
    invoke-virtual {p0, v6}, Lcom/ice/box/fragments/App;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/ice/box/fragments/App;->filterPref:Landroid/preference/Preference;

    .line 224
    iget-object v6, p0, Lcom/ice/box/fragments/App;->filterPref:Landroid/preference/Preference;

    invoke-virtual {v6, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v6, "tweaks_hide_iris"

    .line 225
    invoke-virtual {p0, v6}, Lcom/ice/box/fragments/App;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/App;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual/range {v7 .. v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "tweaks_hide_iris"

    invoke-static {v7, v8, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_8

    move v7, v5

    goto :goto_8

    :cond_8
    move v7, v1

    .line 227
    :goto_8
    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string v6, "tweaks_hide_lockscreen_clock"

    .line 229
    invoke-virtual {p0, v6}, Lcom/ice/box/fragments/App;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/ice/box/fragments/App;->filterPref:Landroid/preference/Preference;

    .line 230
    iget-object v6, p0, Lcom/ice/box/fragments/App;->filterPref:Landroid/preference/Preference;

    invoke-virtual {v6, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v6, "tweaks_hide_lockscreen_clock"

    .line 231
    invoke-virtual {p0, v6}, Lcom/ice/box/fragments/App;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    .line 232
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/App;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual/range {v7 .. v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "tweaks_hide_lockscreen_clock"

    invoke-static {v7, v8, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_9

    move v1, v5

    .line 233
    :cond_9
    invoke-virtual {v6, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 235
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v1, v5, :cond_f

    if-eqz v2, :cond_c

    if-eqz v0, :cond_b

    const/16 p1, 0x80

    if-ge v4, p1, :cond_a

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/App;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_hide_lockscreen_clock"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/App;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_a
    const/16 p1, 0x81

    if-ge v4, p1, :cond_e

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/App;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_lockscreen_guide_text"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/App;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_9

    :cond_b
    const/16 v0, 0x6e

    if-ge p1, v0, :cond_e

    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/App;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_hide_lockscreen_clock"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/App;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 247
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/App;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_lockscreen_guide_text"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/App;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_9

    :cond_c
    if-eqz v3, :cond_e

    if-eqz v0, :cond_d

    const/16 p1, 0x45

    if-ge v4, p1, :cond_e

    .line 253
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/App;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_hide_lockscreen_clock"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/App;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 254
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/App;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_lockscreen_guide_text"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/App;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_9

    :cond_d
    const/16 v0, 0x78

    if-ge p1, v0, :cond_e

    .line 258
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/App;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_hide_lockscreen_clock"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/App;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/App;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_lockscreen_guide_text"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/App;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 263
    :cond_e
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/App;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_quick_unlock"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/App;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_a

    .line 265
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/App;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_hide_lockscreen_clock"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/App;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 266
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/App;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_lockscreen_guide_text"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/App;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6

    .line 274
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tweaks_lockscreen_rotation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f10006e

    if-eqz v0, :cond_0

    .line 275
    move-object v0, p1

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual/range {v0 .. v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 278
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/App;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_lockscreen_rotation"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 279
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Successful!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/ice/box/fragments/App;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {v0 .. v0}, Lcom/ice/box/helpers/TweaksHelper;->createSystemUINotification()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 282
    :catch_0
    iget-object v0, p0, Lcom/ice/box/fragments/App;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/App;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    .line 286
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "tweaks_lockscreen_guide_text"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    move-object v0, p1

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual/range {v0 .. v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 290
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/App;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_lockscreen_guide_text"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 291
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Successful!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 293
    :catch_1
    iget-object v0, p0, Lcom/ice/box/fragments/App;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/App;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    .line 296
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "tweaks_quick_unlock"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 297
    move-object v0, p1

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual/range {v0 .. v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 300
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/App;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_quick_unlock"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 301
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Successful!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 303
    :catch_2
    iget-object v0, p0, Lcom/ice/box/fragments/App;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/App;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    .line 306
    :cond_2
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "tweaks_battery_flash_level"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 308
    :try_start_3
    iget-object v0, p0, Lcom/ice/box/fragments/App;->seekDialog:Lcom/ice/box/helpers/SeekDialog;

    sget-object v3, Lcom/ice/box/helpers/SeekDialog$SeekEnum;->eBatterySize:Lcom/ice/box/helpers/SeekDialog$SeekEnum;

    invoke-virtual {v0, v3}, Lcom/ice/box/helpers/SeekDialog;->getSeekDialog(Lcom/ice/box/helpers/SeekDialog$SeekEnum;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ice/box/fragments/App;->batteryPercentageFlashDialog:Landroid/app/AlertDialog;

    .line 309
    iget-object v0, p0, Lcom/ice/box/fragments/App;->batteryPercentageFlashDialog:Landroid/app/AlertDialog;

    invoke-virtual/range {v0 .. v0}, Landroid/app/AlertDialog;->show()V

    .line 313
    iget-object v0, p0, Lcom/ice/box/fragments/App;->batteryPercentageFlashDialog:Landroid/app/AlertDialog;

    const v3, 0x7f0900d8

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/ice/box/fragments/App;->batteryPercentageFlashSeek:Landroid/widget/SeekBar;

    .line 314
    iget-object v0, p0, Lcom/ice/box/fragments/App;->batteryPercentageFlashDialog:Landroid/app/AlertDialog;

    const v3, 0x7f0900d7

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ice/box/fragments/App;->batteryPercentageFlashValue:Landroid/widget/TextView;

    .line 315
    iget-object v0, p0, Lcom/ice/box/fragments/App;->batteryPercentageFlashDialog:Landroid/app/AlertDialog;

    const v3, 0x7f090083

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ice/box/fragments/App;->batteryPercentageFlashMinus:Landroid/widget/Button;

    .line 316
    iget-object v0, p0, Lcom/ice/box/fragments/App;->batteryPercentageFlashDialog:Landroid/app/AlertDialog;

    const v3, 0x7f09001f

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ice/box/fragments/App;->batteryPercentageFlashPlus:Landroid/widget/Button;

    .line 317
    iget-object v0, p0, Lcom/ice/box/fragments/App;->batteryPercentageFlashDialog:Landroid/app/AlertDialog;

    const v3, 0x7f090027

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ice/box/fragments/App;->batteryPercentageFlashApply:Landroid/widget/Button;

    .line 319
    iget-object v0, p0, Lcom/ice/box/fragments/App;->batteryPercentageFlashSeek:Landroid/widget/SeekBar;

    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 321
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/App;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "tweaks_battery_flash_level"

    const/4 v4, 0x5

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ice/box/fragments/App;->batteryPercentageFlashProgress:I

    .line 324
    iget-object v0, p0, Lcom/ice/box/fragments/App;->batteryPercentageFlashSeek:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/ice/box/fragments/App;->batteryPercentageFlashProgress:I

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 326
    iget-object v0, p0, Lcom/ice/box/fragments/App;->batteryPercentageFlashValue:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct/range {v3 .. v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/App;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100035

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/ice/box/fragments/App;->batteryPercentageFlashProgress:I

    .line 327
    invoke-static/range {v4 .. v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v3 .. v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 326
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v0, p0, Lcom/ice/box/fragments/App;->batteryPercentageFlashSeek:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/ice/box/fragments/App;->batteryPercentageFlashSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 331
    iget-object v0, p0, Lcom/ice/box/fragments/App;->batteryPercentageFlashPlus:Landroid/widget/Button;

    iget-object v3, p0, Lcom/ice/box/fragments/App;->batteryPercentageFlashPlusListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    iget-object v0, p0, Lcom/ice/box/fragments/App;->batteryPercentageFlashMinus:Landroid/widget/Button;

    iget-object v3, p0, Lcom/ice/box/fragments/App;->batteryPercentageFlashMinusListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    iget-object v0, p0, Lcom/ice/box/fragments/App;->batteryPercentageFlashApply:Landroid/widget/Button;

    iget-object v3, p0, Lcom/ice/box/fragments/App;->batteryPercentageFlashApplyListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    return v2

    .line 336
    :catch_3
    iget-object v0, p0, Lcom/ice/box/fragments/App;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/App;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    .line 339
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "tweaks_scramble_pin"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 340
    move-object v0, p1

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual/range {v0 .. v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 343
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/App;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {v3 .. v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tweaks_scramble_pin"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 344
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Successful!"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    .line 346
    :catch_4
    iget-object v0, p0, Lcom/ice/box/fragments/App;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/App;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    .line 349
    :cond_4
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "tweaks_secure_window"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 350
    move-object v0, p1

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual/range {v0 .. v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 353
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/App;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {v3 .. v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tweaks_secure_window"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 354
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Successful!"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_4

    .line 356
    :catch_5
    iget-object v0, p0, Lcom/ice/box/fragments/App;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/App;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    .line 359
    :cond_5
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "tweaks_netflix"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    .line 360
    invoke-static/range {v2 .. v2}, Lcom/ice/box/helpers/RootUtils;->mountSystemRW(Z)V

    const-string v0, "/system//lib/liboemcrypto.so"

    .line 361
    invoke-static {v0, v2}, Lcom/ice/box/helpers/Tools;->existFile(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct/range {v0 .. v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ice/box/helpers/Constants;->BUSYBOX_PATH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mv /system//lib/liboemcrypto.so /system//lib/liboemcrypto.bak"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v0 .. v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static/range {v0 .. v0}, Lcom/ice/box/helpers/RootUtils;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 363
    iget-object v0, p0, Lcom/ice/box/fragments/App;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/App;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f10018c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    goto :goto_5

    .line 365
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct/range {v0 .. v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ice/box/helpers/Constants;->BUSYBOX_PATH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mv /system//lib/liboemcrypto.bak /system//lib/liboemcrypto.so"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v0 .. v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static/range {v0 .. v0}, Lcom/ice/box/helpers/RootUtils;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 366
    iget-object v0, p0, Lcom/ice/box/fragments/App;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/App;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f10018b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    .line 369
    :goto_5
    invoke-static/range {v3 .. v3}, Lcom/ice/box/helpers/RootUtils;->mountSystemRW(Z)V

    .line 370
    iget-object v0, p0, Lcom/ice/box/fragments/App;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {v0 .. v0}, Lcom/ice/box/helpers/TweaksHelper;->createRebootNotification()V

    .line 372
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "tweaks_hide_iris"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 373
    move-object v0, p1

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual/range {v0 .. v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 376
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/App;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "tweaks_hide_iris"

    invoke-static {v2, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 377
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Successful!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    .line 379
    :catch_6
    iget-object v0, p0, Lcom/ice/box/fragments/App;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/App;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    .line 382
    :cond_8
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "tweaks_hide_lockscreen_clock"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 383
    check-cast p1, Landroid/preference/SwitchPreference;

    invoke-virtual/range {p1 .. p1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result p1

    .line 386
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/App;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "tweaks_hide_lockscreen_clock"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 387
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Successful!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    .line 389
    :catch_7
    iget-object p1, p0, Lcom/ice/box/fragments/App;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/App;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    :cond_9
    :goto_7
    return v3
.end method
