.class public Lcom/ice/box/fragments/OP_Home;
.super Landroid/preference/PreferenceFragment;
.source "OP_Home.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private counter:I

.field private filterPref:Landroid/preference/Preference;

.field private final licenseType:Ljava/lang/StringBuilder;

.field private mThemeId:I

.field private sharedPref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct/range {p0 .. p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct/range {v0 .. v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ice/box/fragments/OP_Home;->licenseType:Ljava/lang/StringBuilder;

    const v0, 0x7f110126

    .line 62
    iput v0, p0, Lcom/ice/box/fragments/OP_Home;->mThemeId:I

    return-void
.end method

.method private setPreferencesValuesForChangelog()V
    .locals 4

    .line 327
    iget-object v0, p0, Lcom/ice/box/fragments/OP_Home;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "localStableVersion"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/ice/box/MainActivity;->currentRomVersion:I

    .line 328
    iget-object v0, p0, Lcom/ice/box/fragments/OP_Home;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "localStableVersionText"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ice/box/MainActivity;->currentRomVersionText:Ljava/lang/String;

    .line 329
    iget-object v0, p0, Lcom/ice/box/fragments/OP_Home;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "onlineStableVersion"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/ice/box/MainActivity;->onlineRomVersion:I

    .line 330
    iget-object v0, p0, Lcom/ice/box/fragments/OP_Home;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "onlineStableVersionText"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ice/box/MainActivity;->onlineRomVersionText:Ljava/lang/String;

    .line 331
    iget-object v0, p0, Lcom/ice/box/fragments/OP_Home;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "localNightlyVersion"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/ice/box/MainActivity;->nightliesOfflineCurrentRevision:I

    .line 332
    iget-object v0, p0, Lcom/ice/box/fragments/OP_Home;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "onlineNightlyVersion"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/ice/box/MainActivity;->nightliesOnlineCurrentRevision:I

    .line 333
    iget-object v0, p0, Lcom/ice/box/fragments/OP_Home;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "nightliesChangelog"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ice/box/MainActivity;->nightliesChangelog:Ljava/lang/String;

    .line 334
    iget-object v0, p0, Lcom/ice/box/fragments/OP_Home;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "isARHD"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/ice/box/MainActivity;->isARHD:Z

    const-string v0, "rom_changelog"

    .line 337
    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/OP_Home;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 338
    sget-boolean v1, Lcom/ice/box/MainActivity;->isARHD:Z

    if-eqz v1, :cond_0

    .line 340
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Home;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 343
    :cond_0
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 345
    :try_start_0
    sget-object v1, Lcom/ice/box/MainActivity;->nightliesChangelog:Ljava/lang/String;

    invoke-virtual/range {v1 .. v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 346
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Home;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 348
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Home;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 351
    :catch_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Failed to set changelog summary"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setPreferencesValuesForRomVersion()V
    .locals 10

    .line 244
    iget-object v0, p0, Lcom/ice/box/fragments/OP_Home;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "localStableVersion"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/ice/box/MainActivity;->currentRomVersion:I

    .line 245
    iget-object v0, p0, Lcom/ice/box/fragments/OP_Home;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "localStableVersionText"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ice/box/MainActivity;->currentRomVersionText:Ljava/lang/String;

    .line 246
    iget-object v0, p0, Lcom/ice/box/fragments/OP_Home;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "onlineStableVersion"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/ice/box/MainActivity;->onlineRomVersion:I

    .line 247
    iget-object v0, p0, Lcom/ice/box/fragments/OP_Home;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "onlineStableVersionText"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ice/box/MainActivity;->onlineRomVersionText:Ljava/lang/String;

    .line 248
    iget-object v0, p0, Lcom/ice/box/fragments/OP_Home;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "localNightlyVersion"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/ice/box/MainActivity;->nightliesOfflineCurrentRevision:I

    .line 249
    iget-object v0, p0, Lcom/ice/box/fragments/OP_Home;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "onlineNightlyVersion"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/ice/box/MainActivity;->nightliesOnlineCurrentRevision:I

    .line 250
    iget-object v0, p0, Lcom/ice/box/fragments/OP_Home;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "nightliesChangelog"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ice/box/MainActivity;->nightliesChangelog:Ljava/lang/String;

    const-string v0, "rom_Version"

    .line 252
    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/OP_Home;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 253
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 255
    sget-boolean v1, Lcom/ice/box/MainActivity;->isICE:Z

    const/high16 v3, -0x10000

    const/4 v4, 0x0

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/ice/box/MainActivity;->isARHD:Z

    if-nez v1, :cond_0

    .line 256
    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct/range {v1 .. v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ro.build.display.id"

    invoke-static/range {v2 .. v2}, Lcom/ice/box/helpers/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Home;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f1000df

    .line 258
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Home;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f1000e0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v1 .. v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 260
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 261
    new-instance p0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p0, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface/range {v1 .. v1}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-interface {v1, p0, v4, v2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 262
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 263
    :cond_0
    sget-boolean v1, Lcom/ice/box/MainActivity;->isARHD:Z

    const v5, -0xff0100

    const v6, 0x7f1000a6

    const v7, 0x7f1000a0

    if-eqz v1, :cond_2

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct/range {v1 .. v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Home;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ice/box/MainActivity;->currentRomVersionText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Home;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/ice/box/MainActivity;->onlineRomVersionText:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v1 .. v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 267
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 268
    sget p0, Lcom/ice/box/MainActivity;->onlineRomVersion:I

    sget v2, Lcom/ice/box/MainActivity;->currentRomVersion:I

    if-le p0, v2, :cond_1

    .line 269
    new-instance p0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p0, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface/range {v1 .. v1}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-interface {v1, p0, v4, v2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 271
    :cond_1
    new-instance p0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p0, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface/range {v1 .. v1}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-interface {v1, p0, v4, v2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 274
    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 276
    :cond_2
    sget-boolean v1, Lcom/ice/box/MainActivity;->isNightly:Z

    const v8, 0x7f100115

    if-nez v1, :cond_4

    .line 277
    sget v1, Lcom/ice/box/MainActivity;->onlineRomVersion:I

    sget v9, Lcom/ice/box/MainActivity;->currentRomVersion:I

    if-le v1, v9, :cond_3

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct/range {v1 .. v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Home;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/ice/box/MainActivity;->currentRomVersionText:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Home;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/ice/box/MainActivity;->onlineRomVersionText:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Home;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 281
    invoke-virtual {p0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v1 .. v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 282
    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSelectable(Z)V

    goto/16 :goto_1

    .line 285
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct/range {v1 .. v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Home;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ice/box/MainActivity;->currentRomVersionText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Home;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/ice/box/MainActivity;->onlineRomVersionText:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v1 .. v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 291
    :cond_4
    sget v1, Lcom/ice/box/MainActivity;->nightliesOnlineCurrentRevision:I

    sget v9, Lcom/ice/box/MainActivity;->nightliesOfflineCurrentRevision:I

    if-le v1, v9, :cond_5

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct/range {v1 .. v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Home;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": R"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/ice/box/MainActivity;->nightliesOfflineCurrentRevision:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Home;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": R"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/ice/box/MainActivity;->nightliesOnlineCurrentRevision:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Home;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v1 .. v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 296
    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSelectable(Z)V

    goto :goto_1

    .line 299
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct/range {v1 .. v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Home;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": R"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/ice/box/MainActivity;->nightliesOfflineCurrentRevision:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Home;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": R"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/ice/box/MainActivity;->nightliesOnlineCurrentRevision:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual/range {v1 .. v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 305
    :goto_1
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 306
    sget-boolean p0, Lcom/ice/box/MainActivity;->isNightly:Z

    if-nez p0, :cond_7

    .line 307
    sget p0, Lcom/ice/box/MainActivity;->onlineRomVersion:I

    sget v2, Lcom/ice/box/MainActivity;->currentRomVersion:I

    if-le p0, v2, :cond_6

    .line 308
    new-instance p0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p0, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface/range {v1 .. v1}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-interface {v1, p0, v4, v2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 310
    :cond_6
    new-instance p0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p0, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface/range {v1 .. v1}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-interface {v1, p0, v4, v2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 314
    :cond_7
    sget p0, Lcom/ice/box/MainActivity;->nightliesOnlineCurrentRevision:I

    sget v2, Lcom/ice/box/MainActivity;->nightliesOfflineCurrentRevision:I

    if-le p0, v2, :cond_8

    .line 315
    new-instance p0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p0, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface/range {v1 .. v1}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-interface {v1, p0, v4, v2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 317
    :cond_8
    new-instance p0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p0, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface/range {v1 .. v1}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-interface {v1, p0, v4, v2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 321
    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method

.method private switchFragment(Ljava/lang/String;)V
    .locals 2

    .line 228
    new-instance v0, Landroid/os/Handler;

    invoke-direct/range {v0 .. v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/ice/box/fragments/OP_Home$4;

    invoke-direct {v1, p0, p1}, Lcom/ice/box/fragments/OP_Home$4;-><init>(Lcom/ice/box/fragments/OP_Home;Ljava/lang/String;)V

    const-wide/16 p0, 0x0

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 66
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Home;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/ice/box/fragments/OP_Home;->sharedPref:Landroid/content/SharedPreferences;

    const p1, 0x7f13000f

    .line 68
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/OP_Home;->addPreferencesFromResource(I)V

    .line 70
    iget-object p1, p0, Lcom/ice/box/fragments/OP_Home;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "THEMEID"

    iget v1, p0, Lcom/ice/box/fragments/OP_Home;->mThemeId:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/fragments/OP_Home;->mThemeId:I

    .line 71
    iget p1, p0, Lcom/ice/box/fragments/OP_Home;->mThemeId:I

    const v0, 0x7f110125

    if-ne p1, v0, :cond_0

    const-string p1, "header_image"

    .line 72
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/OP_Home;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/ice/box/fragments/OP_Home;->filterPref:Landroid/preference/Preference;

    .line 73
    iget-object p1, p0, Lcom/ice/box/fragments/OP_Home;->filterPref:Landroid/preference/Preference;

    const v0, 0x7f0c0039

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    :cond_0
    const-string p1, "buy_premium"

    .line 76
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/OP_Home;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/ice/box/fragments/OP_Home;->filterPref:Landroid/preference/Preference;

    .line 77
    iget-object p1, p0, Lcom/ice/box/fragments/OP_Home;->filterPref:Landroid/preference/Preference;

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 78
    sget-boolean p1, Lcom/ice/box/MainActivity;->isFreeVersion:Z

    if-eqz p1, :cond_1

    .line 79
    iget-object p1, p0, Lcom/ice/box/fragments/OP_Home;->licenseType:Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Home;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 81
    :cond_1
    sget-boolean p1, Lcom/ice/box/MainActivity;->isPremium2:Z

    const v0, 0x7f100064

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 82
    iget-object p1, p0, Lcom/ice/box/fragments/OP_Home;->licenseType:Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Home;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100068

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Home;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget p1, p0, Lcom/ice/box/fragments/OP_Home;->counter:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/ice/box/fragments/OP_Home;->counter:I

    .line 86
    :cond_2
    sget-boolean p1, Lcom/ice/box/MainActivity;->isPremium5:Z

    if-eqz p1, :cond_3

    .line 87
    iget-object p1, p0, Lcom/ice/box/fragments/OP_Home;->licenseType:Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Home;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100069

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Home;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget p1, p0, Lcom/ice/box/fragments/OP_Home;->counter:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/ice/box/fragments/OP_Home;->counter:I

    .line 91
    :cond_3
    sget-boolean p1, Lcom/ice/box/MainActivity;->isPremium10:Z

    if-eqz p1, :cond_4

    .line 92
    iget-object p1, p0, Lcom/ice/box/fragments/OP_Home;->licenseType:Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Home;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100067

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Home;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget p1, p0, Lcom/ice/box/fragments/OP_Home;->counter:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/ice/box/fragments/OP_Home;->counter:I

    .line 96
    :cond_4
    sget-boolean p1, Lcom/ice/box/MainActivity;->isMonthly:Z

    if-nez p1, :cond_5

    sget-boolean p1, Lcom/ice/box/MainActivity;->isYearly:Z

    if-eqz p1, :cond_6

    .line 97
    :cond_5
    iget-object p1, p0, Lcom/ice/box/fragments/OP_Home;->licenseType:Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Home;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10010e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Home;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget p1, p0, Lcom/ice/box/fragments/OP_Home;->counter:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/ice/box/fragments/OP_Home;->counter:I

    .line 101
    :cond_6
    sget-boolean p1, Lcom/ice/box/MainActivity;->isLegacyLicense:Z

    if-eqz p1, :cond_7

    .line 102
    iget-object p1, p0, Lcom/ice/box/fragments/OP_Home;->licenseType:Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Home;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1000aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Home;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget p1, p0, Lcom/ice/box/fragments/OP_Home;->counter:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/ice/box/fragments/OP_Home;->counter:I

    .line 106
    :cond_7
    iget p1, p0, Lcom/ice/box/fragments/OP_Home;->counter:I

    if-le p1, v1, :cond_8

    .line 107
    iget-object p1, p0, Lcom/ice/box/fragments/OP_Home;->licenseType:Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Home;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10011b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    .line 108
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 109
    :cond_8
    iget p1, p0, Lcom/ice/box/fragments/OP_Home;->counter:I

    if-lez p1, :cond_9

    .line 110
    iget-object p1, p0, Lcom/ice/box/fragments/OP_Home;->licenseType:Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Home;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10011a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    :cond_9
    :goto_0
    iget-object p1, p0, Lcom/ice/box/fragments/OP_Home;->filterPref:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/ice/box/fragments/OP_Home;->licenseType:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 115
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Home;->setPreferencesValuesForRomVersion()V

    .line 116
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Home;->setPreferencesValuesForChangelog()V

    const-string p1, "app_Version"

    .line 118
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/OP_Home;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/ice/box/fragments/OP_Home;->filterPref:Landroid/preference/Preference;

    const/4 p1, 0x0

    .line 121
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Home;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Home;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 122
    invoke-virtual/range {v1 .. v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 124
    invoke-virtual/range {v0 .. v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Home;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 127
    :goto_1
    iget-object v1, p0, Lcom/ice/box/fragments/OP_Home;->filterPref:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/ice/box/fragments/OP_Home;->filterPref:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setSingleLineTitle(Z)V

    const-string p1, "xda_thread"

    .line 130
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/OP_Home;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/ice/box/fragments/OP_Home;->filterPref:Landroid/preference/Preference;

    .line 131
    iget-object p1, p0, Lcom/ice/box/fragments/OP_Home;->filterPref:Landroid/preference/Preference;

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "telegram_chat"

    .line 133
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/OP_Home;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/ice/box/fragments/OP_Home;->filterPref:Landroid/preference/Preference;

    .line 134
    iget-object p1, p0, Lcom/ice/box/fragments/OP_Home;->filterPref:Landroid/preference/Preference;

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 365
    invoke-super/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 366
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Home;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 367
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    .line 142
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "buy_premium"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 143
    sput-boolean v0, Lcom/ice/box/MainActivity;->isFragmentOpen:Z

    const v0, 0x7f100108

    .line 144
    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/OP_Home;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ice/box/fragments/OP_Home;->switchFragment(Ljava/lang/String;)V

    .line 146
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rom_Version"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f1000e4

    if-eqz v0, :cond_2

    .line 147
    sget-boolean v0, Lcom/ice/box/MainActivity;->isNightly:Z

    if-eqz v0, :cond_1

    .line 148
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Home;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f100023

    .line 149
    invoke-virtual {p0, v2}, Lcom/ice/box/fragments/OP_Home;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f10001f

    .line 150
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Home;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/ice/box/fragments/OP_Home$1;

    invoke-direct {v3, p0}, Lcom/ice/box/fragments/OP_Home$1;-><init>(Lcom/ice/box/fragments/OP_Home;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 162
    invoke-virtual/range {v0 .. v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 164
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://renovate-ice.com/stable_releases.html"

    .line 165
    invoke-static/range {v3 .. v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 166
    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/OP_Home;->startActivity(Landroid/content/Intent;)V

    .line 170
    :cond_2
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "app_Version"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 171
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "https://play.google.com/store/apps/details?id=com.ice.box"

    invoke-static/range {v3 .. v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/OP_Home;->startActivity(Landroid/content/Intent;)V

    .line 174
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "rom_changelog"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 175
    sget-boolean v0, Lcom/ice/box/MainActivity;->isICE:Z

    if-eqz v0, :cond_4

    .line 176
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Home;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1000f3

    .line 177
    invoke-virtual {p0, v2}, Lcom/ice/box/fragments/OP_Home;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 178
    sget-object v2, Lcom/ice/box/MainActivity;->nightliesChangelog:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Home;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ice/box/fragments/OP_Home$2;

    invoke-direct {v2, p0}, Lcom/ice/box/fragments/OP_Home$2;-><init>(Lcom/ice/box/fragments/OP_Home;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 186
    invoke-virtual/range {v0 .. v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 187
    :cond_4
    sget-boolean v0, Lcom/ice/box/MainActivity;->isARHD:Z

    if-eqz v0, :cond_5

    .line 188
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Home;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1000f4

    .line 189
    invoke-virtual {p0, v2}, Lcom/ice/box/fragments/OP_Home;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 190
    sget-object v2, Lcom/ice/box/MainActivity;->nightliesChangelog:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Home;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ice/box/fragments/OP_Home$3;

    invoke-direct {v2, p0}, Lcom/ice/box/fragments/OP_Home$3;-><init>(Lcom/ice/box/fragments/OP_Home;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 198
    invoke-virtual/range {v0 .. v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 202
    :cond_5
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xda_thread"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 203
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://forum.xda-developers.com/oneplus-6/development/renovate-ice-stables-nightlies-svn-t3801364"

    invoke-static/range {v2 .. v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 204
    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/OP_Home;->startActivity(Landroid/content/Intent;)V

    .line 206
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "telegram_chat"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 207
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    const-string v1, "https://t.me/joinchat/EsGzARBoMTcrsD2wHcqW9A"

    invoke-static/range {v1 .. v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 208
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/OP_Home;->startActivity(Landroid/content/Intent;)V

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 1

    .line 358
    invoke-super/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Home;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    const-string p1, "onlineStableVersion"

    .line 215
    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 216
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Home;->setPreferencesValuesForRomVersion()V

    :cond_0
    const-string p1, "nightliesChangelog"

    .line 218
    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 219
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Home;->setPreferencesValuesForChangelog()V

    :cond_1
    const-string p1, "onlineNightlyVersion"

    .line 221
    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 222
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Home;->setPreferencesValuesForChangelog()V

    .line 223
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Home;->setPreferencesValuesForRomVersion()V

    :cond_2
    return-void
.end method

.method public refreshPreferences()V
    .locals 3

    .line 374
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Home;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static/range {v0 .. v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    .line 375
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Home;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 376
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Home;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/ice/box/fragments/OP_Home;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
