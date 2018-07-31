.class public Lcom/ice/box/fragments/Home;
.super Landroid/preference/PreferenceFragment;
.source "Home.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field counter:I

.field licenseType:Ljava/lang/StringBuilder;

.field private mThemeId:I

.field sharedPref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct/range {p0 .. p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct/range {v0 .. v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ice/box/fragments/Home;->licenseType:Ljava/lang/StringBuilder;

    const v0, 0x7f110126

    .line 64
    iput v0, p0, Lcom/ice/box/fragments/Home;->mThemeId:I

    return-void
.end method

.method private setPreferencesValuesForChangelog()V
    .locals 4

    .line 376
    iget-object v0, p0, Lcom/ice/box/fragments/Home;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "localStableVersion"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/ice/box/MainActivity;->currentRomVersion:I

    .line 377
    iget-object v0, p0, Lcom/ice/box/fragments/Home;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "localStableVersionText"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ice/box/MainActivity;->currentRomVersionText:Ljava/lang/String;

    .line 378
    iget-object v0, p0, Lcom/ice/box/fragments/Home;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "onlineStableVersion"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/ice/box/MainActivity;->onlineRomVersion:I

    .line 379
    iget-object v0, p0, Lcom/ice/box/fragments/Home;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "onlineStableVersionText"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ice/box/MainActivity;->onlineRomVersionText:Ljava/lang/String;

    .line 380
    iget-object v0, p0, Lcom/ice/box/fragments/Home;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "localNightlyVersion"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/ice/box/MainActivity;->nightliesOfflineCurrentRevision:I

    .line 381
    iget-object v0, p0, Lcom/ice/box/fragments/Home;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "onlineNightlyVersion"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/ice/box/MainActivity;->nightliesOnlineCurrentRevision:I

    .line 382
    iget-object v0, p0, Lcom/ice/box/fragments/Home;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "nightliesChangelog"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ice/box/MainActivity;->nightliesChangelog:Ljava/lang/String;

    const-string v0, "rom_changelog"

    .line 384
    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/Home;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 385
    sget-boolean v1, Lcom/ice/box/MainActivity;->isARHD:Z

    if-eqz v1, :cond_0

    .line 387
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 390
    :cond_0
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 392
    :try_start_0
    sget-object v1, Lcom/ice/box/MainActivity;->nightliesChangelog:Ljava/lang/String;

    invoke-virtual/range {v1 .. v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 393
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 395
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 398
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

    .line 288
    iget-object v0, p0, Lcom/ice/box/fragments/Home;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "localStableVersion"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/ice/box/MainActivity;->currentRomVersion:I

    .line 289
    iget-object v0, p0, Lcom/ice/box/fragments/Home;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "localStableVersionText"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ice/box/MainActivity;->currentRomVersionText:Ljava/lang/String;

    .line 290
    iget-object v0, p0, Lcom/ice/box/fragments/Home;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "onlineStableVersion"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/ice/box/MainActivity;->onlineRomVersion:I

    .line 291
    iget-object v0, p0, Lcom/ice/box/fragments/Home;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "onlineStableVersionText"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ice/box/MainActivity;->onlineRomVersionText:Ljava/lang/String;

    .line 292
    iget-object v0, p0, Lcom/ice/box/fragments/Home;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "localNightlyVersion"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/ice/box/MainActivity;->nightliesOfflineCurrentRevision:I

    .line 293
    iget-object v0, p0, Lcom/ice/box/fragments/Home;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "onlineNightlyVersion"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/ice/box/MainActivity;->nightliesOnlineCurrentRevision:I

    .line 294
    iget-object v0, p0, Lcom/ice/box/fragments/Home;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "nightliesChangelog"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ice/box/MainActivity;->nightliesChangelog:Ljava/lang/String;

    const-string v0, "rom_Version"

    .line 298
    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/Home;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 299
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 302
    sget-boolean v1, Lcom/ice/box/MainActivity;->isICE:Z

    const/high16 v3, -0x10000

    const/4 v4, 0x0

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/ice/box/MainActivity;->isARHD:Z

    if-nez v1, :cond_0

    .line 303
    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct/range {v1 .. v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ro.build.display.id"

    invoke-static/range {v2 .. v2}, Lcom/ice/box/helpers/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f1000df

    .line 305
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Home;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f1000e0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v1 .. v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 307
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 308
    new-instance p0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p0, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface/range {v1 .. v1}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-interface {v1, p0, v4, v2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 309
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 310
    :cond_0
    sget-boolean v1, Lcom/ice/box/MainActivity;->isARHD:Z

    const v5, -0xff0100

    const v6, 0x7f1000a6

    const v7, 0x7f1000a0

    if-eqz v1, :cond_2

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct/range {v1 .. v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Home;->getResources()Landroid/content/res/Resources;

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

    .line 312
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Home;->getResources()Landroid/content/res/Resources;

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

    .line 314
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 315
    sget p0, Lcom/ice/box/MainActivity;->onlineRomVersion:I

    sget v2, Lcom/ice/box/MainActivity;->currentRomVersion:I

    if-le p0, v2, :cond_1

    .line 316
    new-instance p0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p0, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface/range {v1 .. v1}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-interface {v1, p0, v4, v2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 318
    :cond_1
    new-instance p0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p0, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface/range {v1 .. v1}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-interface {v1, p0, v4, v2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 321
    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 323
    :cond_2
    sget-boolean v1, Lcom/ice/box/MainActivity;->isNightly:Z

    const v8, 0x7f100115

    if-nez v1, :cond_4

    .line 324
    sget v1, Lcom/ice/box/MainActivity;->onlineRomVersion:I

    sget v9, Lcom/ice/box/MainActivity;->currentRomVersion:I

    if-le v1, v9, :cond_3

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct/range {v1 .. v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Home;->getResources()Landroid/content/res/Resources;

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

    .line 326
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Home;->getResources()Landroid/content/res/Resources;

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

    .line 327
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Home;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 328
    invoke-virtual {p0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v1 .. v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 329
    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSelectable(Z)V

    goto/16 :goto_1

    .line 332
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct/range {v1 .. v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Home;->getResources()Landroid/content/res/Resources;

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

    .line 333
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Home;->getResources()Landroid/content/res/Resources;

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

    .line 338
    :cond_4
    sget v1, Lcom/ice/box/MainActivity;->nightliesOnlineCurrentRevision:I

    sget v9, Lcom/ice/box/MainActivity;->nightliesOfflineCurrentRevision:I

    if-le v1, v9, :cond_5

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct/range {v1 .. v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Home;->getResources()Landroid/content/res/Resources;

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

    .line 340
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Home;->getResources()Landroid/content/res/Resources;

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

    .line 342
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Home;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v1 .. v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 343
    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSelectable(Z)V

    goto :goto_1

    .line 346
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct/range {v1 .. v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Home;->getResources()Landroid/content/res/Resources;

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

    .line 347
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Home;->getResources()Landroid/content/res/Resources;

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

    .line 352
    :goto_1
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 353
    sget-boolean p0, Lcom/ice/box/MainActivity;->isNightly:Z

    if-nez p0, :cond_7

    .line 354
    sget p0, Lcom/ice/box/MainActivity;->onlineRomVersion:I

    sget v2, Lcom/ice/box/MainActivity;->currentRomVersion:I

    if-le p0, v2, :cond_6

    .line 355
    new-instance p0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p0, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface/range {v1 .. v1}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-interface {v1, p0, v4, v2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 357
    :cond_6
    new-instance p0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p0, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface/range {v1 .. v1}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-interface {v1, p0, v4, v2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 361
    :cond_7
    sget p0, Lcom/ice/box/MainActivity;->nightliesOnlineCurrentRevision:I

    sget v2, Lcom/ice/box/MainActivity;->nightliesOfflineCurrentRevision:I

    if-le p0, v2, :cond_8

    .line 362
    new-instance p0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p0, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface/range {v1 .. v1}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-interface {v1, p0, v4, v2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 364
    :cond_8
    new-instance p0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p0, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface/range {v1 .. v1}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-interface {v1, p0, v4, v2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 368
    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method

.method private switchFragment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 404
    new-instance v0, Landroid/os/Handler;

    invoke-direct/range {v0 .. v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/ice/box/fragments/Home$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/ice/box/fragments/Home$4;-><init>(Lcom/ice/box/fragments/Home;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p0, 0x0

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 68
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Home;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/ice/box/fragments/Home;->sharedPref:Landroid/content/SharedPreferences;

    const p1, 0x7f130009

    .line 70
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/Home;->addPreferencesFromResource(I)V

    .line 73
    iget-object p1, p0, Lcom/ice/box/fragments/Home;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "THEMEID"

    iget v1, p0, Lcom/ice/box/fragments/Home;->mThemeId:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/fragments/Home;->mThemeId:I

    .line 74
    iget p1, p0, Lcom/ice/box/fragments/Home;->mThemeId:I

    const v0, 0x7f110125

    if-ne p1, v0, :cond_0

    const-string p1, "header_image"

    .line 75
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/Home;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    const v1, 0x7f0c0039

    .line 76
    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 78
    :cond_0
    sget-boolean p1, Lcom/ice/box/MainActivity;->isARHD:Z

    if-eqz p1, :cond_2

    const-string p1, "header_image"

    .line 79
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/Home;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 80
    iget v1, p0, Lcom/ice/box/fragments/Home;->mThemeId:I

    if-ne v1, v0, :cond_1

    const v0, 0x7f0c003a

    .line 81
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0c003b

    .line 83
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    :cond_2
    :goto_0
    const-string p1, "buy_premium"

    .line 87
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/Home;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 88
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 89
    sget-boolean v0, Lcom/ice/box/MainActivity;->isFreeVersion:Z

    if-eqz v0, :cond_3

    .line 90
    iget-object v0, p0, Lcom/ice/box/fragments/Home;->licenseType:Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100077

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 92
    :cond_3
    sget-boolean v0, Lcom/ice/box/MainActivity;->isPremium2:Z

    const v1, 0x7f100064

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 93
    iget-object v0, p0, Lcom/ice/box/fragments/Home;->licenseType:Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100068

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget v0, p0, Lcom/ice/box/fragments/Home;->counter:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/ice/box/fragments/Home;->counter:I

    .line 97
    :cond_4
    sget-boolean v0, Lcom/ice/box/MainActivity;->isPremium5:Z

    if-eqz v0, :cond_5

    .line 98
    iget-object v0, p0, Lcom/ice/box/fragments/Home;->licenseType:Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100069

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget v0, p0, Lcom/ice/box/fragments/Home;->counter:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/ice/box/fragments/Home;->counter:I

    .line 102
    :cond_5
    sget-boolean v0, Lcom/ice/box/MainActivity;->isPremium10:Z

    if-eqz v0, :cond_6

    .line 103
    iget-object v0, p0, Lcom/ice/box/fragments/Home;->licenseType:Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100067

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget v0, p0, Lcom/ice/box/fragments/Home;->counter:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/ice/box/fragments/Home;->counter:I

    .line 107
    :cond_6
    sget-boolean v0, Lcom/ice/box/MainActivity;->isMonthly:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/ice/box/MainActivity;->isYearly:Z

    if-eqz v0, :cond_8

    .line 108
    :cond_7
    iget-object v0, p0, Lcom/ice/box/fragments/Home;->licenseType:Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10010e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget v0, p0, Lcom/ice/box/fragments/Home;->counter:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/ice/box/fragments/Home;->counter:I

    .line 112
    :cond_8
    sget-boolean v0, Lcom/ice/box/MainActivity;->isLegacyLicense:Z

    if-eqz v0, :cond_9

    .line 113
    iget-object v0, p0, Lcom/ice/box/fragments/Home;->licenseType:Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1000aa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget v0, p0, Lcom/ice/box/fragments/Home;->counter:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/ice/box/fragments/Home;->counter:I

    .line 117
    :cond_9
    iget v0, p0, Lcom/ice/box/fragments/Home;->counter:I

    if-le v0, v2, :cond_a

    .line 118
    iget-object v0, p0, Lcom/ice/box/fragments/Home;->licenseType:Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10011b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 120
    :cond_a
    iget v0, p0, Lcom/ice/box/fragments/Home;->counter:I

    if-lez v0, :cond_b

    .line 121
    iget-object v0, p0, Lcom/ice/box/fragments/Home;->licenseType:Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10011a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_b
    :goto_1
    iget-object v0, p0, Lcom/ice/box/fragments/Home;->licenseType:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 126
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/fragments/Home;->setPreferencesValuesForRomVersion()V

    .line 127
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/fragments/Home;->setPreferencesValuesForChangelog()V

    const-string p1, "app_Version"

    .line 129
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/Home;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 132
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Home;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Home;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 133
    invoke-virtual/range {v1 .. v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 132
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 135
    invoke-virtual/range {v0 .. v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 138
    :goto_2
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string p1, "xda_thread"

    .line 140
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/Home;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 141
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "telegram_chat"

    .line 143
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/Home;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 144
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 146
    sget-boolean p1, Lcom/ice/box/MainActivity;->isARHD:Z

    if-nez p1, :cond_c

    const-string p1, "telegram_chat_ger"

    .line 147
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/Home;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 148
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_3

    .line 150
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Home;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "telegram_chat_ger"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/Home;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_3
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 439
    invoke-super/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 440
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Home;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 441
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    .line 158
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "buy_premium"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 159
    sput-boolean v1, Lcom/ice/box/MainActivity;->isFragmentOpen:Z

    const-string v0, "License"

    const v2, 0x7f100108

    .line 160
    invoke-virtual {p0, v2}, Lcom/ice/box/fragments/Home;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/ice/box/fragments/Home;->switchFragment(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "rom_Version"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v2, 0x7f1000e4

    if-eqz v0, :cond_4

    .line 164
    sget-boolean v0, Lcom/ice/box/MainActivity;->isNightly:Z

    if-eqz v0, :cond_1

    .line 165
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Home;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f100023

    .line 166
    invoke-virtual {p0, v3}, Lcom/ice/box/fragments/Home;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f10001f

    .line 167
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 168
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/ice/box/fragments/Home$1;

    invoke-direct {v4, p0}, Lcom/ice/box/fragments/Home$1;-><init>(Lcom/ice/box/fragments/Home;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 185
    invoke-virtual/range {v0 .. v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 187
    :cond_1
    sget-boolean v0, Lcom/ice/box/MainActivity;->isARHD:Z

    if-eqz v0, :cond_3

    .line 188
    sget-boolean v0, Lcom/ice/box/MainActivity;->isS9:Z

    if-eqz v0, :cond_2

    .line 189
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "http://www.soldier9312.de/stable_release.html"

    .line 190
    invoke-static/range {v4 .. v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 192
    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/Home;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 194
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "http://www.soldier9312.de/stable_release.html"

    .line 195
    invoke-static/range {v4 .. v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 197
    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/Home;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 200
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "http://renovate-ice.com/stable_releases.html"

    .line 201
    invoke-static/range {v4 .. v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 202
    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/Home;->startActivity(Landroid/content/Intent;)V

    .line 206
    :cond_4
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "app_Version"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 207
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "https://play.google.com/store/apps/details?id=com.ice.box"

    invoke-static/range {v4 .. v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/Home;->startActivity(Landroid/content/Intent;)V

    .line 210
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "rom_changelog"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 211
    sget-boolean v0, Lcom/ice/box/MainActivity;->isICE:Z

    if-eqz v0, :cond_6

    .line 212
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Home;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f1000f3

    .line 213
    invoke-virtual {p0, v3}, Lcom/ice/box/fragments/Home;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 214
    sget-object v3, Lcom/ice/box/MainActivity;->nightliesChangelog:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/ice/box/fragments/Home$2;

    invoke-direct {v3, p0}, Lcom/ice/box/fragments/Home$2;-><init>(Lcom/ice/box/fragments/Home;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 222
    invoke-virtual/range {v0 .. v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 223
    :cond_6
    sget-boolean v0, Lcom/ice/box/MainActivity;->isARHD:Z

    if-eqz v0, :cond_7

    .line 224
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Home;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f1000f4

    .line 225
    invoke-virtual {p0, v3}, Lcom/ice/box/fragments/Home;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 226
    sget-object v3, Lcom/ice/box/MainActivity;->nightliesChangelog:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/ice/box/fragments/Home$3;

    invoke-direct {v3, p0}, Lcom/ice/box/fragments/Home$3;-><init>(Lcom/ice/box/fragments/Home;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 234
    invoke-virtual/range {v0 .. v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 238
    :cond_7
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "xda_thread"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 239
    sget-boolean v0, Lcom/ice/box/MainActivity;->isARHD:Z

    if-eqz v0, :cond_9

    .line 240
    sget-boolean v0, Lcom/ice/box/MainActivity;->isS8:Z

    if-eqz v0, :cond_8

    .line 241
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "https://forum.xda-developers.com/galaxy-s8/samsung-galaxy-s8--s8-cross-device-development/g95xf-fd-n-oreo-beta-2-soldier9312-zqk4-t3703183"

    invoke-static/range {v3 .. v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 243
    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/Home;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 245
    :cond_8
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "https://forum.xda-developers.com/galaxy-s9/samsung-galaxy-s9--s9-cross-device-development/g96xf-fd-n-stock-rom-soldier9312-1-0-t3771346"

    invoke-static/range {v3 .. v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 247
    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/Home;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 252
    :cond_9
    sget-boolean v0, Lcom/ice/box/MainActivity;->isS8:Z

    if-eqz v0, :cond_a

    .line 253
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "https://forum.xda-developers.com/galaxy-s8/samsung-galaxy-s8--s8-cross-device-development/renovate-ice-g950-g955-android-7-0-aqdg-t3598040"

    invoke-static/range {v3 .. v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 255
    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/Home;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 256
    :cond_a
    sget-boolean v0, Lcom/ice/box/MainActivity;->isS9:Z

    if-eqz v0, :cond_b

    .line 258
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "https://forum.xda-developers.com/galaxy-s9/samsung-galaxy-s9--s9-cross-device-development/g96xf-n-renovate-ice-t3785986"

    invoke-static/range {v3 .. v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 260
    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/Home;->startActivity(Landroid/content/Intent;)V

    .line 264
    :cond_b
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "telegram_chat"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 265
    sget-boolean v0, Lcom/ice/box/MainActivity;->isICE:Z

    if-eqz v0, :cond_c

    .line 266
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "https://t.me/joinchat/CkTPaEGXRtdZnc8x0r0qsA"

    invoke-static/range {v3 .. v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 268
    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/Home;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 270
    :cond_c
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "https://t.me/joinchat/CkTPaEz9cmSSHtfLnlfADA"

    invoke-static/range {v3 .. v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 272
    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/Home;->startActivity(Landroid/content/Intent;)V

    .line 276
    :cond_d
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "telegram_chat_ger"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 277
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    const-string v2, "https://t.me/joinchat/CkTPaEKypcJQ1DEmd8c59Q"

    invoke-static/range {v2 .. v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 279
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/Home;->startActivity(Landroid/content/Intent;)V

    :cond_e
    return v1
.end method

.method public onResume()V
    .locals 1

    .line 433
    invoke-super/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 434
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Home;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    const-string p1, "onlineStableVersion"

    .line 419
    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 420
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/fragments/Home;->setPreferencesValuesForRomVersion()V

    :cond_0
    const-string p1, "nightliesChangelog"

    .line 422
    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 423
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/fragments/Home;->setPreferencesValuesForChangelog()V

    :cond_1
    const-string p1, "onlineNightlyVersion"

    .line 425
    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 426
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/fragments/Home;->setPreferencesValuesForChangelog()V

    .line 427
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/fragments/Home;->setPreferencesValuesForRomVersion()V

    :cond_2
    return-void
.end method
