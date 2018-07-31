.class public abstract Lcom/android/settings/widget/RadioButtonPickerFragment;
.super Lcom/android/settings/InstrumentedPreferenceFragment;
.source "RadioButtonPickerFragment.java"

# interfaces
.implements Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;
    }
.end annotation


# static fields
.field static final EXTRA_FOR_WORK:Ljava/lang/String; = "for_work"
    .annotation build Landroid/support/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation
.end field


# instance fields
.field private final mCandidates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mUserId:I

.field protected mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/InstrumentedPreferenceFragment;-><init>()V

    .line 47
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mCandidates:Ljava/util/Map;

    .line 41
    return-void
.end method


# virtual methods
.method public bindPreference(Lcom/android/settings/widget/RadioButtonPreference;Ljava/lang/String;Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;Ljava/lang/String;)Lcom/android/settings/widget/RadioButtonPreference;
    .locals 1
    .param p1, "pref"    # Lcom/android/settings/widget/RadioButtonPreference;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "info"    # Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;
    .param p4, "defaultKey"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation

    .prologue
    .line 155
    invoke-virtual {p3}, Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/RadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 156
    invoke-virtual {p3}, Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;->loadIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/RadioButtonPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 157
    invoke-virtual {p1, p2}, Lcom/android/settings/widget/RadioButtonPreference;->setKey(Ljava/lang/String;)V

    .line 158
    invoke-static {p4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    .line 161
    :cond_0
    iget-boolean v0, p3, Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;->enabled:Z

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/RadioButtonPreference;->setEnabled(Z)V

    .line 162
    invoke-virtual {p1, p0}, Lcom/android/settings/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V

    .line 163
    return-object p1
.end method

.method public bindPreferenceExtra(Lcom/android/settings/widget/RadioButtonPreference;Ljava/lang/String;Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "pref"    # Lcom/android/settings/widget/RadioButtonPreference;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "info"    # Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;
    .param p4, "defaultKey"    # Ljava/lang/String;
    .param p5, "systemDefaultKey"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/VisibleForTesting;
        otherwise = 0x4
    .end annotation

    .prologue
    .line 120
    return-void
.end method

.method protected getCandidate(Ljava/lang/String;)Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mCandidates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;

    return-object v0
.end method

.method protected abstract getCandidates()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getDefaultKey()Ljava/lang/String;
.end method

.method protected getSystemDefaultKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    return-object v0
.end method

.method public mayCheckOnlyRadioButton()V
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    .line 188
    .local v1, "screen":Landroid/support/v7/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 189
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 190
    .local v0, "onlyPref":Landroid/support/v7/preference/Preference;
    instance-of v2, v0, Lcom/android/settings/widget/RadioButtonPreference;

    if-eqz v2, :cond_0

    .line 191
    check-cast v0, Lcom/android/settings/widget/RadioButtonPreference;

    .end local v0    # "onlyPref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v0, v3}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    .line 194
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedPreferenceFragment;->onAttach(Landroid/content/Context;)V

    .line 55
    const-string/jumbo v3, "user"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    iput-object v3, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mUserManager:Landroid/os/UserManager;

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 58
    .local v0, "arguments":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 59
    .local v1, "mForWork":Z
    if-eqz v0, :cond_0

    .line 60
    const-string/jumbo v3, "for_work"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 62
    .end local v1    # "mForWork":Z
    :cond_0
    iget-object v3, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mUserManager:Landroid/os/UserManager;

    invoke-static {v3}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v2

    .line 63
    .local v2, "managedProfile":Landroid/os/UserHandle;
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 64
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 63
    :goto_0
    iput v3, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mUserId:I

    .line 66
    return-void

    .line 65
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    goto :goto_0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "rootKey"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-super {p0, p1, p2}, Lcom/android/settings/InstrumentedPreferenceFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 71
    const v0, 0x7f08007c

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->addPreferencesFromResource(I)V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->updateCandidates()V

    .line 73
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/InstrumentedPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 79
    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->setHasOptionsMenu(Z)V

    .line 80
    return-object v0
.end method

.method public onRadioButtonClicked(Lcom/android/settings/widget/RadioButtonPreference;)V
    .locals 1
    .param p1, "selected"    # Lcom/android/settings/widget/RadioButtonPreference;

    .prologue
    .line 85
    invoke-virtual {p1}, Lcom/android/settings/widget/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "selectedKey":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onRadioButtonConfirmed(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method protected onRadioButtonConfirmed(Ljava/lang/String;)V
    .locals 1
    .param p1, "selectedKey"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->setDefaultKey(Ljava/lang/String;)Z

    move-result v0

    .line 108
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->updateCheckedState(Ljava/lang/String;)V

    .line 111
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onSelectionPerformed(Z)V

    .line 112
    return-void
.end method

.method protected onSelectionPerformed(Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 93
    return-void
.end method

.method protected abstract setDefaultKey(Ljava/lang/String;)Z
.end method

.method protected shouldShowItemNone()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public updateCandidates()V
    .locals 13
    .annotation build Landroid/support/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mCandidates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->getCandidates()Ljava/util/List;

    move-result-object v8

    .line 126
    .local v8, "candidateList":Ljava/util/List;, "Ljava/util/List<+Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;>;"
    if-eqz v8, :cond_0

    .line 127
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "info$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;

    .line 128
    .local v9, "info":Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;
    iget-object v0, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mCandidates:Ljava/util/Map;

    invoke-virtual {v9}, Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 131
    .end local v9    # "info":Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;
    .end local v10    # "info$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->getDefaultKey()Ljava/lang/String;

    move-result-object v4

    .line 132
    .local v4, "defaultKey":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->getSystemDefaultKey()Ljava/lang/String;

    move-result-object v5

    .line 133
    .local v5, "systemDefaultKey":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v12

    .line 134
    .local v12, "screen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {v12}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->shouldShowItemNone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    new-instance v11, Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/android/settings/widget/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 137
    .local v11, "nonePref":Lcom/android/settings/widget/RadioButtonPreference;
    const v0, 0x7f020221

    invoke-virtual {v11, v0}, Lcom/android/settings/widget/RadioButtonPreference;->setIcon(I)V

    .line 138
    const v0, 0x7f0f10b8

    invoke-virtual {v11, v0}, Lcom/android/settings/widget/RadioButtonPreference;->setTitle(I)V

    .line 139
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {v11, v0}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    .line 140
    invoke-virtual {v11, p0}, Lcom/android/settings/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V

    .line 141
    invoke-virtual {v12, v11}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 143
    .end local v11    # "nonePref":Lcom/android/settings/widget/RadioButtonPreference;
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mCandidates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "app$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 144
    .local v6, "app":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;>;"
    new-instance v1, Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/settings/widget/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 145
    .local v1, "pref":Lcom/android/settings/widget/RadioButtonPreference;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;

    invoke-virtual {p0, v1, v0, v2, v4}, Lcom/android/settings/widget/RadioButtonPickerFragment;->bindPreference(Lcom/android/settings/widget/RadioButtonPreference;Ljava/lang/String;Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;Ljava/lang/String;)Lcom/android/settings/widget/RadioButtonPreference;

    .line 146
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/widget/RadioButtonPickerFragment;->bindPreferenceExtra(Lcom/android/settings/widget/RadioButtonPreference;Ljava/lang/String;Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {v12, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    .line 149
    .end local v1    # "pref":Lcom/android/settings/widget/RadioButtonPreference;
    .end local v6    # "app":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;>;"
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->mayCheckOnlyRadioButton()V

    .line 150
    return-void
.end method

.method public updateCheckedState(Ljava/lang/String;)V
    .locals 7
    .param p1, "selectedKey"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    .line 169
    .local v5, "screen":Landroid/support/v7/preference/PreferenceScreen;
    if-eqz v5, :cond_1

    .line 170
    invoke-virtual {v5}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    .line 171
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 172
    invoke-virtual {v5, v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v3

    .line 173
    .local v3, "pref":Landroid/support/v7/preference/Preference;
    instance-of v6, v3, Lcom/android/settings/widget/RadioButtonPreference;

    if-eqz v6, :cond_0

    move-object v4, v3

    .line 174
    check-cast v4, Lcom/android/settings/widget/RadioButtonPreference;

    .line 175
    .local v4, "radioPref":Lcom/android/settings/widget/RadioButtonPreference;
    invoke-virtual {v3}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 176
    .local v2, "newCheckedState":Z
    invoke-virtual {v4}, Lcom/android/settings/widget/RadioButtonPreference;->isChecked()Z

    move-result v6

    if-eq v6, v2, :cond_0

    .line 177
    invoke-virtual {v3}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    .line 171
    .end local v2    # "newCheckedState":Z
    .end local v4    # "radioPref":Lcom/android/settings/widget/RadioButtonPreference;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "pref":Landroid/support/v7/preference/Preference;
    :cond_1
    return-void
.end method
