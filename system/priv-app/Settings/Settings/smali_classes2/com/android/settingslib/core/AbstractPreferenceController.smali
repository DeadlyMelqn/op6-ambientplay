.class public abstract Lcom/android/settingslib/core/AbstractPreferenceController;
.super Ljava/lang/Object;
.source "AbstractPreferenceController.java"


# instance fields
.field protected final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 18
    return-void
.end method

.method private findAndRemovePreference(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;)Z
    .locals 5
    .param p1, "prefGroup"    # Landroid/support/v7/preference/PreferenceGroup;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    .line 83
    .local v3, "preferenceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 84
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 85
    .local v2, "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "curKey":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 88
    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    move-result v4

    return v4

    .line 91
    :cond_0
    instance-of v4, v2, Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v4, :cond_1

    .line 92
    check-cast v2, Landroid/support/v7/preference/PreferenceGroup;

    .end local v2    # "preference":Landroid/support/v7/preference/Preference;
    invoke-direct {p0, v2, p2}, Lcom/android/settingslib/core/AbstractPreferenceController;->findAndRemovePreference(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 93
    const/4 v4, 0x1

    return v4

    .line 83
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .end local v0    # "curKey":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    return v4
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    instance-of v1, p0, Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    if-eqz v1, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 28
    .local v0, "preference":Landroid/support/v7/preference/Preference;
    check-cast p0, Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    .line 27
    .end local p0    # "this":Lcom/android/settingslib/core/AbstractPreferenceController;
    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 33
    .end local v0    # "preference":Landroid/support/v7/preference/Preference;
    :cond_0
    :goto_0
    return-void

    .line 31
    .restart local p0    # "this":Lcom/android/settingslib/core/AbstractPreferenceController;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/settingslib/core/AbstractPreferenceController;->removePreference(Landroid/support/v7/preference/PreferenceScreen;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract getPreferenceKey()Ljava/lang/String;
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isAvailable()Z
.end method

.method protected final removePreference(Landroid/support/v7/preference/PreferenceScreen;Ljava/lang/String;)V
    .locals 0
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/core/AbstractPreferenceController;->findAndRemovePreference(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 78
    return-void
.end method

.method public updateNonIndexableKeys(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_0
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 0
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 40
    return-void
.end method
