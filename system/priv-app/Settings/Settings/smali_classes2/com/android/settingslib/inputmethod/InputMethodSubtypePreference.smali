.class public Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;
.super Lcom/android/settingslib/inputmethod/SwitchWithNoTextPreference;
.source "InputMethodSubtypePreference.java"


# instance fields
.field private final mIsSystemLanguage:Z

.field private final mIsSystemLocale:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodSubtype;Landroid/view/inputmethod/InputMethodInfo;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;
    .param p3, "imi"    # Landroid/view/inputmethod/InputMethodInfo;

    .prologue
    const/4 v5, 0x0

    .line 42
    invoke-direct {p0, p1}, Lcom/android/settingslib/inputmethod/SwitchWithNoTextPreference;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-virtual {p0, v5}, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->setPersistent(Z)V

    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->setKey(Ljava/lang/String;)V

    .line 46
    invoke-static {p2, p1, p3}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->getSubtypeLocaleNameAsSentence(Landroid/view/inputmethod/InputMethodSubtype;Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "subtypeLabel":Ljava/lang/CharSequence;
    invoke-virtual {p0, v0}, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 48
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "subtypeLocaleString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    iput-boolean v5, p0, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->mIsSystemLocale:Z

    .line 51
    iput-boolean v5, p0, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->mIsSystemLanguage:Z

    .line 59
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v2, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 54
    .local v2, "systemLocale":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->mIsSystemLocale:Z

    .line 55
    iget-boolean v3, p0, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->mIsSystemLocale:Z

    if-nez v3, :cond_1

    .line 56
    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 57
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 55
    :goto_1
    iput-boolean v3, p0, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->mIsSystemLanguage:Z

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public compareTo(Landroid/support/v7/preference/Preference;Ljava/text/Collator;)I
    .locals 6
    .param p1, "rhs"    # Landroid/support/v7/preference/Preference;
    .param p2, "collator"    # Ljava/text/Collator;

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 62
    if-ne p0, p1, :cond_0

    .line 63
    const/4 v3, 0x0

    return v3

    .line 65
    :cond_0
    instance-of v5, p1, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;

    if-eqz v5, :cond_8

    move-object v0, p1

    .line 66
    check-cast v0, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;

    .line 67
    .local v0, "rhsPref":Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;
    iget-boolean v5, p0, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->mIsSystemLocale:Z

    if-eqz v5, :cond_1

    iget-boolean v5, v0, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->mIsSystemLocale:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    .line 68
    return v3

    .line 70
    :cond_1
    iget-boolean v5, p0, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->mIsSystemLocale:Z

    if-nez v5, :cond_2

    iget-boolean v5, v0, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->mIsSystemLocale:Z

    if-eqz v5, :cond_2

    .line 71
    return v4

    .line 73
    :cond_2
    iget-boolean v5, p0, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->mIsSystemLanguage:Z

    if-eqz v5, :cond_3

    iget-boolean v5, v0, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->mIsSystemLanguage:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    .line 74
    return v3

    .line 76
    :cond_3
    iget-boolean v5, p0, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->mIsSystemLanguage:Z

    if-nez v5, :cond_4

    iget-boolean v5, v0, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->mIsSystemLanguage:Z

    if-eqz v5, :cond_4

    .line 77
    return v4

    .line 79
    :cond_4
    invoke-virtual {p0}, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 80
    .local v1, "t0":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 81
    .local v2, "t1":Ljava/lang/CharSequence;
    if-nez v1, :cond_5

    if-nez v2, :cond_5

    .line 82
    invoke-virtual {p0}, Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;->hashCode()I

    move-result v3

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->hashCode()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Integer;->compare(II)I

    move-result v3

    return v3

    .line 84
    :cond_5
    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    .line 85
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    return v3

    .line 87
    :cond_6
    if-nez v1, :cond_7

    :goto_0
    return v3

    :cond_7
    move v3, v4

    goto :goto_0

    .line 89
    .end local v0    # "rhsPref":Lcom/android/settingslib/inputmethod/InputMethodSubtypePreference;
    .end local v1    # "t0":Ljava/lang/CharSequence;
    .end local v2    # "t1":Ljava/lang/CharSequence;
    :cond_8
    invoke-super {p0, p1}, Lcom/android/settingslib/inputmethod/SwitchWithNoTextPreference;->compareTo(Landroid/support/v7/preference/Preference;)I

    move-result v3

    return v3
.end method
