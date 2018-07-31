.class public Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;
.super Ljava/lang/Object;
.source "InputMethodAndSubtypeEnablerManager.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mAutoSelectionPrefsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v7/preference/TwoStatePreference;",
            ">;"
        }
    .end annotation
.end field

.field private final mCollator:Ljava/text/Collator;

.field private final mFragment:Landroid/support/v14/preference/PreferenceFragment;

.field private mHaveHardKeyboard:Z

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/preference/Preference;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInputMethodInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v14/preference/PreferenceFragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/support/v14/preference/PreferenceFragment;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mAutoSelectionPrefsMap:Ljava/util/HashMap;

    .line 50
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mCollator:Ljava/text/Collator;

    .line 53
    iput-object p1, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    .line 54
    invoke-virtual {p1}, Landroid/support/v14/preference/PreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 56
    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mInputMethodInfoList:Ljava/util/List;

    .line 57
    return-void
.end method

.method private addInputMethodSubtypePreferences(Landroid/support/v14/preference/PreferenceFragment;Landroid/view/inputmethod/InputMethodInfo;Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 17
    .param p1, "fragment"    # Landroid/support/v14/preference/PreferenceFragment;
    .param p2, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p3, "root"    # Landroid/support/v7/preference/PreferenceScreen;

    .prologue
    .line 118
    invoke-virtual/range {p1 .. p1}, Landroid/support/v14/preference/PreferenceFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/support/v7/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 120
    .local v11, "prefContext":Landroid/content/Context;
    invoke-virtual/range {p2 .. p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v13

    .line 121
    .local v13, "subtypeCount":I
    const/16 v16, 0x1

    move/from16 v0, v16

    if-gt v13, v0, :cond_0

    .line 122
    return-void

    .line 124
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, "imiId":Ljava/lang/String;
    new-instance v6, Landroid/support/v7/preference/PreferenceCategory;

    invoke-direct {v6, v11}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 127
    .local v6, "keyboardSettingsCategory":Landroid/support/v7/preference/PreferenceCategory;
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 128
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 129
    .local v8, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 131
    .local v7, "label":Ljava/lang/CharSequence;
    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 132
    invoke-virtual {v6, v4}, Landroid/support/v7/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 135
    new-instance v2, Lcom/android/settingslib/inputmethod/SwitchWithNoTextPreference;

    invoke-direct {v2, v11}, Lcom/android/settingslib/inputmethod/SwitchWithNoTextPreference;-><init>(Landroid/content/Context;)V

    .line 136
    .local v2, "autoSelectionPref":Landroid/support/v7/preference/TwoStatePreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mAutoSelectionPrefsMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-virtual {v6, v2}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 138
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 141
    new-instance v1, Landroid/support/v7/preference/PreferenceCategory;

    invoke-direct {v1, v11}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 142
    .local v1, "activeInputMethodsCategory":Landroid/support/v7/preference/PreferenceCategory;
    sget v16, Lcom/android/settingslib/R$string;->active_input_method_subtypes:I

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(I)V

    .line 143
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 145
    const/4 v3, 0x0

    .line 146
    .local v3, "autoSubtypeLabel":Ljava/lang/CharSequence;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v15, "subtypePreferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/preference/Preference;>;"
    const/4 v5, 0x0

    .end local v3    # "autoSubtypeLabel":Ljava/lang/CharSequence;
    .local v5, "index":I
    :goto_0
    if-ge v5, v13, :cond_3

    .line 148
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v12

    .line 149
    .local v12, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 150
    if-nez v3, :cond_1

    .line 151
    move-object/from16 v0, p2

    invoke-static {v12, v11, v0}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->getSubtypeLocaleNameAsSentence(Landroid/view/inputmethod/InputMethodSubtype;Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;)Ljava/lang/String;

    move-result-object v3

    .line 147
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 155
    :cond_2
    new-instance v14, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;

    move-object/from16 v0, p2

    invoke-direct {v14, v11, v12, v0}, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;-><init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodSubtype;Landroid/view/inputmethod/InputMethodInfo;)V

    .line 157
    .local v14, "subtypePref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 160
    .end local v12    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v14    # "subtypePref":Landroid/support/v7/preference/Preference;
    :cond_3
    new-instance v16, Lcom/android/settingslib/inputmethod/-$Lambda$sFo3Fzwd_QMdsjpJjam0Y5ahRWo;

    invoke-direct/range {v16 .. v17}, Lcom/android/settingslib/inputmethod/-$Lambda$sFo3Fzwd_QMdsjpJjam0Y5ahRWo;-><init>(Ljava/lang/Object;)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 166
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "pref$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v7/preference/Preference;

    .line 167
    .local v9, "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v1, v9}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 168
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 169
    invoke-static {v9}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->removeUnnecessaryNonPersistentPreference(Landroid/support/v7/preference/Preference;)V

    goto :goto_2

    .line 171
    .end local v9    # "pref":Landroid/support/v7/preference/Preference;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 174
    sget v16, Lcom/android/settingslib/R$string;->use_system_language_to_select_input_method_subtypes:I

    .line 173
    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/TwoStatePreference;->setTitle(I)V

    .line 178
    :goto_3
    return-void

    .line 176
    :cond_5
    invoke-virtual {v2, v3}, Landroid/support/v7/preference/TwoStatePreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method private isNoSubtypesExplicitlySelected(Ljava/lang/String;)Z
    .locals 4
    .param p1, "imiId"    # Ljava/lang/String;

    .prologue
    .line 181
    iget-object v3, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 182
    .local v2, "subtypePrefs":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/preference/Preference;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "pref$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/Preference;

    .line 183
    .local v0, "pref":Landroid/support/v7/preference/Preference;
    instance-of v3, v0, Landroid/support/v7/preference/TwoStatePreference;

    if-eqz v3, :cond_0

    check-cast v0, Landroid/support/v7/preference/TwoStatePreference;

    .end local v0    # "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v0}, Landroid/support/v7/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 184
    const/4 v3, 0x0

    return v3

    .line 187
    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method private setAutoSelectionSubtypesEnabled(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "imiId"    # Ljava/lang/String;
    .param p2, "autoSelectionEnabled"    # Z

    .prologue
    .line 192
    iget-object v4, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mAutoSelectionPrefsMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/TwoStatePreference;

    .line 193
    .local v0, "autoSelectionPref":Landroid/support/v7/preference/TwoStatePreference;
    if-nez v0, :cond_0

    .line 194
    return-void

    .line 196
    :cond_0
    invoke-virtual {v0, p2}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    .line 197
    iget-object v4, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 198
    .local v3, "subtypePrefs":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/preference/Preference;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "pref$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/Preference;

    .line 199
    .local v1, "pref":Landroid/support/v7/preference/Preference;
    instance-of v4, v1, Landroid/support/v7/preference/TwoStatePreference;

    if-eqz v4, :cond_1

    .line 203
    xor-int/lit8 v4, p2, 0x1

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 204
    if-eqz p2, :cond_1

    .line 205
    check-cast v1, Landroid/support/v7/preference/TwoStatePreference;

    .end local v1    # "pref":Landroid/support/v7/preference/Preference;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 209
    :cond_2
    if-eqz p2, :cond_3

    .line 211
    iget-object v4, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    iget-object v5, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    invoke-virtual {v5}, Landroid/support/v14/preference/PreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 212
    iget-object v6, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mInputMethodInfoList:Ljava/util/List;

    iget-boolean v7, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mHaveHardKeyboard:Z

    .line 210
    invoke-static {v4, v5, v6, v7}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Landroid/support/v14/preference/PreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 213
    invoke-direct {p0, p1}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->updateImplicitlyEnabledSubtypes(Ljava/lang/String;)V

    .line 215
    :cond_3
    return-void
.end method

.method private updateAutoSelectionPreferences()V
    .locals 3

    .prologue
    .line 258
    iget-object v2, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "imiId$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 259
    .local v0, "imiId":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->isNoSubtypesExplicitlySelected(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->setAutoSelectionSubtypesEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    .line 261
    .end local v0    # "imiId":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->updateImplicitlyEnabledSubtypes(Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method private updateImplicitlyEnabledSubtypes(Ljava/lang/String;)V
    .locals 5
    .param p1, "targetImiId"    # Ljava/lang/String;

    .prologue
    .line 219
    iget-object v4, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mInputMethodInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "imi$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 220
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 221
    .local v3, "imiId":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mAutoSelectionPrefsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/TwoStatePreference;

    .line 224
    .local v0, "autoSelectionPref":Landroid/support/v7/preference/TwoStatePreference;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    .line 227
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    if-nez p1, :cond_0

    .line 228
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->updateImplicitlyEnabledSubtypesOf(Landroid/view/inputmethod/InputMethodInfo;)V

    goto :goto_0

    .line 231
    .end local v0    # "autoSelectionPref":Landroid/support/v7/preference/TwoStatePreference;
    .end local v1    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v3    # "imiId":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private updateImplicitlyEnabledSubtypesOf(Landroid/view/inputmethod/InputMethodInfo;)V
    .locals 12
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;

    .prologue
    const/4 v11, 0x1

    .line 234
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "imiId":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 237
    .local v8, "subtypePrefs":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/preference/Preference;>;"
    iget-object v9, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v9, p1, v11}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v2

    .line 238
    .local v2, "implicitlyEnabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-eqz v8, :cond_0

    if-nez v2, :cond_1

    .line 239
    :cond_0
    return-void

    .line 241
    :cond_1
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "pref$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/Preference;

    .line 242
    .local v3, "pref":Landroid/support/v7/preference/Preference;
    instance-of v9, v3, Landroid/support/v7/preference/TwoStatePreference;

    if-eqz v9, :cond_2

    move-object v7, v3

    .line 245
    check-cast v7, Landroid/support/v7/preference/TwoStatePreference;

    .line 246
    .local v7, "subtypePref":Landroid/support/v7/preference/TwoStatePreference;
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    .line 247
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "subtype$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodSubtype;

    .line 248
    .local v5, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, "implicitlyEnabledSubtypePrefKey":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/support/v7/preference/TwoStatePreference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 250
    invoke-virtual {v7, v11}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 255
    .end local v1    # "implicitlyEnabledSubtypePrefKey":Ljava/lang/String;
    .end local v3    # "pref":Landroid/support/v7/preference/Preference;
    .end local v5    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v6    # "subtype$iterator":Ljava/util/Iterator;
    .end local v7    # "subtypePref":Landroid/support/v7/preference/TwoStatePreference;
    :cond_4
    return-void
.end method


# virtual methods
.method public init(Landroid/support/v14/preference/PreferenceFragment;Ljava/lang/String;Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 5
    .param p1, "fragment"    # Landroid/support/v14/preference/PreferenceFragment;
    .param p2, "targetImi"    # Ljava/lang/String;
    .param p3, "root"    # Landroid/support/v7/preference/PreferenceScreen;

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/support/v14/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 61
    .local v0, "config":Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mHaveHardKeyboard:Z

    .line 63
    iget-object v3, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mInputMethodInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "imi$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 65
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    :cond_1
    invoke-direct {p0, p1, v1, p3}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->addInputMethodSubtypePreferences(Landroid/support/v14/preference/PreferenceFragment;Landroid/view/inputmethod/InputMethodInfo;Landroid/support/v7/preference/PreferenceScreen;)V

    goto :goto_1

    .line 61
    .end local v1    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v2    # "imi$iterator":Ljava/util/Iterator;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 69
    .restart local v2    # "imi$iterator":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method synthetic lambda$-com_android_settingslib_inputmethod_InputMethodAndSubtypeEnablerManager_7261(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;)I
    .locals 1
    .param p1, "lhs"    # Landroid/support/v7/preference/Preference;
    .param p2, "rhs"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 161
    instance-of v0, p1, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;

    if-eqz v0, :cond_0

    .line 162
    check-cast p1, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;

    .end local p1    # "lhs":Landroid/support/v7/preference/Preference;
    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mCollator:Ljava/text/Collator;

    invoke-virtual {p1, p2, v0}, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->compareTo(Landroid/support/v7/preference/Preference;Ljava/text/Collator;)I

    move-result v0

    return v0

    .line 164
    .restart local p1    # "lhs":Landroid/support/v7/preference/Preference;
    :cond_0
    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->compareTo(Landroid/support/v7/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "pref"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 88
    instance-of v5, p2, Ljava/lang/Boolean;

    if-nez v5, :cond_0

    .line 89
    return v7

    .line 91
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 92
    .local v3, "isChecking":Z
    iget-object v5, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mAutoSelectionPrefsMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "imiId$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 94
    .local v1, "imiId":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mAutoSelectionPrefsMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p1, :cond_1

    move-object v0, p1

    .line 95
    check-cast v0, Landroid/support/v7/preference/TwoStatePreference;

    .line 96
    .local v0, "autoSelectionPref":Landroid/support/v7/preference/TwoStatePreference;
    invoke-virtual {v0, v3}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    .line 98
    invoke-virtual {v0}, Landroid/support/v7/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    invoke-direct {p0, v1, v5}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->setAutoSelectionSubtypesEnabled(Ljava/lang/String;Z)V

    .line 99
    return v6

    .line 103
    .end local v0    # "autoSelectionPref":Landroid/support/v7/preference/TwoStatePreference;
    .end local v1    # "imiId":Ljava/lang/String;
    :cond_2
    instance-of v5, p1, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;

    if-eqz v5, :cond_4

    move-object v4, p1

    .line 104
    check-cast v4, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;

    .line 105
    .local v4, "subtypePref":Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;
    invoke-virtual {v4, v3}, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->setChecked(Z)V

    .line 106
    invoke-virtual {v4}, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_3

    .line 109
    invoke-direct {p0}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->updateAutoSelectionPreferences()V

    .line 111
    :cond_3
    return v6

    .line 113
    .end local v4    # "subtypePref":Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;
    :cond_4
    return v7
.end method

.method public refresh(Landroid/content/Context;Landroid/support/v14/preference/PreferenceFragment;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Landroid/support/v14/preference/PreferenceFragment;

    .prologue
    .line 74
    invoke-static {p1}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mInputMethodInfoList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mInputMethodAndSubtypePrefsMap:Ljava/util/HashMap;

    .line 76
    invoke-static {p2, v0, v1, v2}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->loadInputMethodSubtypeList(Landroid/support/v14/preference/PreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Ljava/util/Map;)V

    .line 78
    invoke-direct {p0}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->updateAutoSelectionPreferences()V

    .line 79
    return-void
.end method

.method public save(Landroid/content/Context;Landroid/support/v14/preference/PreferenceFragment;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Landroid/support/v14/preference/PreferenceFragment;

    .prologue
    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mInputMethodInfoList:Ljava/util/List;

    iget-boolean v2, p0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->mHaveHardKeyboard:Z

    .line 82
    invoke-static {p2, v0, v1, v2}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Landroid/support/v14/preference/PreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 84
    return-void
.end method
