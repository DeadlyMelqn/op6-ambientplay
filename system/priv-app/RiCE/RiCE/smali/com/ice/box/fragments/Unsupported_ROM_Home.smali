.class public Lcom/ice/box/fragments/Unsupported_ROM_Home;
.super Landroid/preference/PreferenceFragment;
.source "Unsupported_ROM_Home.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field filterPref:Landroid/preference/Preference;

.field private mThemeId:I

.field sharedPref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct/range {p0 .. p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const v0, 0x7f110126

    .line 18
    iput v0, p0, Lcom/ice/box/fragments/Unsupported_ROM_Home;->mThemeId:I

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 23
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f130017

    .line 24
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/Unsupported_ROM_Home;->addPreferencesFromResource(I)V

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Unsupported_ROM_Home;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/ice/box/fragments/Unsupported_ROM_Home;->sharedPref:Landroid/content/SharedPreferences;

    .line 26
    iget-object p1, p0, Lcom/ice/box/fragments/Unsupported_ROM_Home;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "THEMEID"

    iget v1, p0, Lcom/ice/box/fragments/Unsupported_ROM_Home;->mThemeId:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/fragments/Unsupported_ROM_Home;->mThemeId:I

    .line 27
    iget p1, p0, Lcom/ice/box/fragments/Unsupported_ROM_Home;->mThemeId:I

    const v0, 0x7f110125

    if-ne p1, v0, :cond_0

    const-string p1, "header_image"

    .line 28
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/Unsupported_ROM_Home;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/ice/box/fragments/Unsupported_ROM_Home;->filterPref:Landroid/preference/Preference;

    .line 29
    iget-object p1, p0, Lcom/ice/box/fragments/Unsupported_ROM_Home;->filterPref:Landroid/preference/Preference;

    const v0, 0x7f0c0039

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    :cond_0
    const-string p1, "rom_Version"

    .line 31
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/Unsupported_ROM_Home;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/ice/box/fragments/Unsupported_ROM_Home;->filterPref:Landroid/preference/Preference;

    .line 32
    iget-object p1, p0, Lcom/ice/box/fragments/Unsupported_ROM_Home;->filterPref:Landroid/preference/Preference;

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .line 37
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "rom_Version"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 38
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    const-string v1, "http://renovate-ice.com/"

    .line 39
    invoke-static/range {v1 .. v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 40
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/Unsupported_ROM_Home;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
