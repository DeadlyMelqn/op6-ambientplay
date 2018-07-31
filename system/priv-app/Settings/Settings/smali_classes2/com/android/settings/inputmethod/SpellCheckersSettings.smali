.class public Lcom/android/settings/inputmethod/SpellCheckersSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SpellCheckersSettings.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final DBG:Z = false

.field private static final ITEM_ID_USE_SYSTEM_LANGUAGE:I = 0x0

.field private static final KEY_DEFAULT_SPELL_CHECKER:Ljava/lang/String; = "default_spellchecker"

.field private static final KEY_SPELL_CHECKER_LANGUAGE:Ljava/lang/String; = "spellchecker_language"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

.field private mDialog:Landroid/app/AlertDialog;

.field private mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

.field private mSpellCheckerLanaguagePref:Landroid/support/v7/preference/Preference;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTsm:Landroid/view/textservice/TextServicesManager;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/inputmethod/SpellCheckersSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/inputmethod/SpellCheckersSettings;

    .prologue
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(I)I
    .locals 1
    .param p0, "item"    # I

    .prologue
    invoke-static {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->convertDialogItemIdToSubtypeIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/settings/inputmethod/SpellCheckersSettings;Landroid/view/textservice/SpellCheckerInfo;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/inputmethod/SpellCheckersSettings;
    .param p1, "sci"    # Landroid/view/textservice/SpellCheckerInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->changeCurrentSpellChecker(Landroid/view/textservice/SpellCheckerInfo;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/inputmethod/SpellCheckersSettings;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/inputmethod/SpellCheckersSettings;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->updatePreferenceScreen()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->TAG:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    .line 42
    return-void
.end method

.method private changeCurrentSpellChecker(Landroid/view/textservice/SpellCheckerInfo;)V
    .locals 3
    .param p1, "sci"    # Landroid/view/textservice/SpellCheckerInfo;

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "selected_spell_checker"

    .line 257
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 256
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "selected_spell_checker_subtype"

    .line 260
    const/4 v2, 0x0

    .line 259
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 264
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->updatePreferenceScreen()V

    .line 265
    return-void
.end method

.method private static convertDialogItemIdToSubtypeIndex(I)I
    .locals 1
    .param p0, "item"    # I

    .prologue
    .line 177
    add-int/lit8 v0, p0, -0x1

    return v0
.end method

.method private static convertSubtypeIndexToDialogItemId(I)I
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 176
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method private getSpellCheckerSubtypeLabel(Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/SpellCheckerSubtype;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "sci"    # Landroid/view/textservice/SpellCheckerInfo;
    .param p2, "subtype"    # Landroid/view/textservice/SpellCheckerSubtype;

    .prologue
    .line 143
    if-nez p1, :cond_0

    .line 144
    const v0, 0x7f0f1148

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 146
    :cond_0
    if-nez p2, :cond_1

    .line 147
    const v0, 0x7f0f01a5

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 150
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 149
    invoke-virtual {p2, v0, v1, v2}, Landroid/view/textservice/SpellCheckerSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private populatePreferenceScreen()V
    .locals 4

    .prologue
    .line 78
    new-instance v1, Lcom/android/settings/inputmethod/SpellCheckerPreference;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    .line 79
    iget-object v3, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

    .line 78
    invoke-direct {v1, v2, v3}, Lcom/android/settings/inputmethod/SpellCheckerPreference;-><init>(Landroid/content/Context;[Landroid/view/textservice/SpellCheckerInfo;)V

    .line 80
    .local v1, "pref":Lcom/android/settings/inputmethod/SpellCheckerPreference;
    const v2, 0x7f0f1146

    invoke-virtual {v1, v2}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->setTitle(I)V

    .line 81
    iget-object v2, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 82
    .local v0, "count":I
    :goto_0
    if-lez v0, :cond_1

    .line 83
    const-string/jumbo v2, "%s"

    invoke-virtual {v1, v2}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 87
    :goto_1
    const-string/jumbo v2, "default_spellchecker"

    invoke-virtual {v1, v2}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->setKey(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v1, p0}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 90
    return-void

    .line 81
    .end local v0    # "count":I
    :cond_0
    iget-object v2, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

    array-length v0, v2

    .restart local v0    # "count":I
    goto :goto_0

    .line 85
    :cond_1
    const v2, 0x7f0f1148

    invoke-virtual {v1, v2}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->setSummary(I)V

    goto :goto_1
.end method

.method private showChooseLanguageDialog()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 180
    iget-object v9, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 181
    iget-object v9, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->dismiss()V

    .line 183
    :cond_0
    iget-object v9, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v9}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v2

    .line 184
    .local v2, "currentSci":Landroid/view/textservice/SpellCheckerInfo;
    if-nez v2, :cond_1

    .line 187
    return-void

    .line 189
    :cond_1
    iget-object v9, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v9, v11}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v3

    .line 191
    .local v3, "currentScs":Landroid/view/textservice/SpellCheckerSubtype;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 192
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v9, 0x7f0f0b8f

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 193
    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v8

    .line 194
    .local v8, "subtypeCount":I
    add-int/lit8 v9, v8, 0x1

    new-array v6, v9, [Ljava/lang/CharSequence;

    .line 195
    .local v6, "items":[Ljava/lang/CharSequence;
    invoke-direct {p0, v2, v10}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getSpellCheckerSubtypeLabel(Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/SpellCheckerSubtype;)Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v6, v11

    .line 196
    const/4 v1, 0x0

    .line 197
    .local v1, "checkedItemId":I
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_0
    if-ge v4, v8, :cond_3

    .line 198
    invoke-virtual {v2, v4}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v7

    .line 199
    .local v7, "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    invoke-static {v4}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->convertSubtypeIndexToDialogItemId(I)I

    move-result v5

    .line 200
    .local v5, "itemId":I
    invoke-direct {p0, v2, v7}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getSpellCheckerSubtypeLabel(Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/SpellCheckerSubtype;)Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v6, v5

    .line 201
    invoke-virtual {v7, v3}, Landroid/view/textservice/SpellCheckerSubtype;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 202
    move v1, v5

    .line 197
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 205
    .end local v5    # "itemId":I
    .end local v7    # "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    :cond_3
    new-instance v9, Lcom/android/settings/inputmethod/SpellCheckersSettings$1;

    invoke-direct {v9, p0, v2}, Lcom/android/settings/inputmethod/SpellCheckersSettings$1;-><init>(Lcom/android/settings/inputmethod/SpellCheckersSettings;Landroid/view/textservice/SpellCheckerInfo;)V

    invoke-virtual {v0, v6, v1, v9}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 227
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    .line 228
    iget-object v9, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 229
    return-void
.end method

.method private showSecurityWarnDialog(Landroid/view/textservice/SpellCheckerInfo;)V
    .locals 5
    .param p1, "sci"    # Landroid/view/textservice/SpellCheckerInfo;

    .prologue
    const/4 v4, 0x1

    .line 232
    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 235
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 236
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 237
    new-array v1, v4, [Ljava/lang/Object;

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/textservice/SpellCheckerInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 237
    const v2, 0x7f0f0b99

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 239
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 240
    new-instance v1, Lcom/android/settings/inputmethod/SpellCheckersSettings$2;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/inputmethod/SpellCheckersSettings$2;-><init>(Lcom/android/settings/inputmethod/SpellCheckersSettings;Landroid/view/textservice/SpellCheckerInfo;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 246
    new-instance v1, Lcom/android/settings/inputmethod/SpellCheckersSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings$3;-><init>(Lcom/android/settings/inputmethod/SpellCheckersSettings;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 251
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    .line 252
    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 253
    return-void
.end method

.method private updatePreferenceScreen()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 115
    iget-object v8, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v8}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

    .line 116
    iget-object v8, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v8}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v3

    .line 117
    .local v3, "isSpellCheckerEnabled":Z
    iget-object v8, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v8, v3}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 120
    iget-object v8, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

    if-eqz v8, :cond_1

    .line 121
    iget-object v8, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v8, v7}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v1

    .line 126
    :goto_0
    iget-object v8, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSpellCheckerLanaguagePref:Landroid/support/v7/preference/Preference;

    iget-object v9, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

    invoke-direct {p0, v9, v1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getSpellCheckerSubtypeLabel(Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/SpellCheckerSubtype;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    .line 129
    .local v6, "screen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {v6}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    .line 130
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 131
    invoke-virtual {v6, v2}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v5

    .line 132
    .local v5, "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {v5, v3}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 133
    instance-of v8, v5, Lcom/android/settings/inputmethod/SpellCheckerPreference;

    if-eqz v8, :cond_0

    move-object v4, v5

    .line 134
    check-cast v4, Lcom/android/settings/inputmethod/SpellCheckerPreference;

    .line 135
    .local v4, "pref":Lcom/android/settings/inputmethod/SpellCheckerPreference;
    iget-object v8, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v4, v8}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->setSelected(Landroid/view/textservice/SpellCheckerInfo;)V

    .line 130
    .end local v4    # "pref":Lcom/android/settings/inputmethod/SpellCheckerPreference;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 124
    .end local v0    # "count":I
    .end local v2    # "index":I
    .end local v5    # "preference":Landroid/support/v7/preference/Preference;
    .end local v6    # "screen":Landroid/support/v7/preference/PreferenceScreen;
    :cond_1
    const/4 v1, 0x0

    .local v1, "currentScs":Landroid/view/textservice/SpellCheckerSubtype;
    goto :goto_0

    .line 138
    .end local v1    # "currentScs":Landroid/view/textservice/SpellCheckerSubtype;
    .restart local v0    # "count":I
    .restart local v2    # "index":I
    .restart local v6    # "screen":Landroid/support/v7/preference/PreferenceScreen;
    :cond_2
    iget-object v8, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSpellCheckerLanaguagePref:Landroid/support/v7/preference/Preference;

    if-eqz v3, :cond_3

    iget-object v9, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

    if-eqz v9, :cond_3

    const/4 v7, 0x1

    :cond_3
    invoke-virtual {v8, v7}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 139
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 60
    const/16 v0, 0x3b

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v0, 0x7f0800a5

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->addPreferencesFromResource(I)V

    .line 68
    const-string/jumbo v0, "spellchecker_language"

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSpellCheckerLanaguagePref:Landroid/support/v7/preference/Preference;

    .line 69
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSpellCheckerLanaguagePref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 71
    const-string/jumbo v0, "textservices"

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/TextServicesManager;

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    .line 72
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

    .line 73
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0}, Landroid/view/textservice/TextServicesManager;->getEnabledSpellCheckers()[Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

    .line 74
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->populatePreferenceScreen()V

    .line 75
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 104
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 105
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    move-object v1, p2

    .line 164
    check-cast v1, Landroid/view/textservice/SpellCheckerInfo;

    .line 166
    .local v1, "sci":Landroid/view/textservice/SpellCheckerInfo;
    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 167
    .local v0, "isSystemApp":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 168
    invoke-direct {p0, v1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->changeCurrentSpellChecker(Landroid/view/textservice/SpellCheckerInfo;)V

    .line 169
    const/4 v2, 0x1

    return v2

    .line 166
    .end local v0    # "isSystemApp":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isSystemApp":Z
    goto :goto_0

    .line 171
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->showSecurityWarnDialog(Landroid/view/textservice/SpellCheckerInfo;)V

    .line 172
    return v3
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "pref"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSpellCheckerLanaguagePref:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 156
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->showChooseLanguageDialog()V

    .line 157
    const/4 v0, 0x1

    return v0

    .line 159
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 96
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 97
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 98
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->updatePreferenceScreen()V

    .line 99
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "spell_checker_enabled"

    .line 110
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 109
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 111
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->updatePreferenceScreen()V

    .line 112
    return-void

    .line 110
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
