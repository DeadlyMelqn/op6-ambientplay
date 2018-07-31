.class public Lcom/ice/box/fragments/Unsupported_Device_Home;
.super Landroid/preference/PreferenceFragment;
.source "Unsupported_Device_Home.java"

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

    .line 11
    invoke-direct/range {p0 .. p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const v0, 0x7f110126

    .line 14
    iput v0, p0, Lcom/ice/box/fragments/Unsupported_Device_Home;->mThemeId:I

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 19
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f130016

    .line 20
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/Unsupported_Device_Home;->addPreferencesFromResource(I)V

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Unsupported_Device_Home;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/ice/box/fragments/Unsupported_Device_Home;->sharedPref:Landroid/content/SharedPreferences;

    .line 22
    iget-object p1, p0, Lcom/ice/box/fragments/Unsupported_Device_Home;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "THEMEID"

    iget v1, p0, Lcom/ice/box/fragments/Unsupported_Device_Home;->mThemeId:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/fragments/Unsupported_Device_Home;->mThemeId:I

    .line 23
    iget p1, p0, Lcom/ice/box/fragments/Unsupported_Device_Home;->mThemeId:I

    const v0, 0x7f110125

    if-ne p1, v0, :cond_0

    const-string p1, "header_image"

    .line 24
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/Unsupported_Device_Home;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/ice/box/fragments/Unsupported_Device_Home;->filterPref:Landroid/preference/Preference;

    .line 25
    iget-object p0, p0, Lcom/ice/box/fragments/Unsupported_Device_Home;->filterPref:Landroid/preference/Preference;

    const p1, 0x7f0c0039

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setLayoutResource(I)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
