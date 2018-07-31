.class public Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;
.super Ljava/lang/Object;
.source "ProgressiveDisclosureMixin.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/core/lifecycle/events/OnCreate;
.implements Lcom/android/settings/core/lifecycle/events/OnSaveInstanceState;


# static fields
.field private static final DEFAULT_TILE_LIMIT:I = 0x12c

.field private static final STATE_USER_EXPANDED:Ljava/lang/String; = "state_user_expanded"

.field private static final TAG:Ljava/lang/String; = "ProgressiveDisclosure"


# instance fields
.field private final mCollapsedPrefs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mExpandButton:Lcom/android/settings/dashboard/ExpandPreference;

.field private final mFragment:Landroid/support/v14/preference/PreferenceFragment;

.field private mTileLimit:I

.field private mUserExpanded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v14/preference/PreferenceFragment;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Landroid/support/v14/preference/PreferenceFragment;
    .param p3, "keepExpanded"    # Z

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    .line 56
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mTileLimit:I

    .line 61
    iput-object p1, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    .line 63
    new-instance v0, Lcom/android/settings/dashboard/ExpandPreference;

    invoke-direct {v0, p1}, Lcom/android/settings/dashboard/ExpandPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mExpandButton:Lcom/android/settings/dashboard/ExpandPreference;

    .line 64
    iget-object v0, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mExpandButton:Lcom/android/settings/dashboard/ExpandPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/dashboard/ExpandPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 66
    iput-boolean p3, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mUserExpanded:Z

    .line 67
    return-void
.end method


# virtual methods
.method public addPreference(Landroid/support/v7/preference/PreferenceScreen;Landroid/support/v7/preference/Preference;)V
    .locals 4
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;
    .param p2, "pref"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->isCollapsed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 154
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x2

    .line 155
    .local v1, "lastPreferenceIndex":I
    if-ltz v1, :cond_1

    .line 156
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 157
    .local v0, "lastPreference":Landroid/support/v7/preference/Preference;
    invoke-virtual {v0}, Landroid/support/v7/preference/Preference;->getOrder()I

    move-result v2

    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getOrder()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 159
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 160
    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 161
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->addToCollapsedList(Landroid/support/v7/preference/Preference;)V

    .line 178
    .end local v0    # "lastPreference":Landroid/support/v7/preference/Preference;
    .end local v1    # "lastPreferenceIndex":I
    :goto_0
    return-void

    .line 164
    .restart local v0    # "lastPreference":Landroid/support/v7/preference/Preference;
    .restart local v1    # "lastPreferenceIndex":I
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->addToCollapsedList(Landroid/support/v7/preference/Preference;)V

    goto :goto_0

    .line 168
    .end local v0    # "lastPreference":Landroid/support/v7/preference/Preference;
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->addToCollapsedList(Landroid/support/v7/preference/Preference;)V

    goto :goto_0

    .line 170
    .end local v1    # "lastPreferenceIndex":I
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->shouldCollapse(Landroid/support/v7/preference/PreferenceScreen;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 172
    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 173
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->collapse(Landroid/support/v7/preference/PreferenceScreen;)V

    goto :goto_0

    .line 176
    :cond_3
    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0
.end method

.method addToCollapsedList(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 237
    iget-object v1, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    invoke-static {v1, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 238
    .local v0, "insertionIndex":I
    if-gez v0, :cond_0

    .line 239
    mul-int/lit8 v1, v0, -0x1

    add-int/lit8 v0, v1, -0x1

    .line 241
    :cond_0
    iget-object v1, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->updateExpandButtonSummary()V

    .line 243
    return-void
.end method

.method public collapse(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 5
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .prologue
    .line 130
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    .line 131
    .local v1, "itemCount":I
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->shouldCollapse(Landroid/support/v7/preference/PreferenceScreen;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 132
    return-void

    .line 134
    :cond_0
    iget-object v3, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 135
    const-string/jumbo v3, "ProgressiveDisclosure"

    const-string/jumbo v4, "collapsed list should ALWAYS BE EMPTY before collapsing!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_1
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mTileLimit:I

    if-lt v0, v3, :cond_2

    .line 139
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 140
    .local v2, "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {p0, v2}, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->addToCollapsedList(Landroid/support/v7/preference/Preference;)V

    .line 141
    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 138
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 143
    .end local v2    # "preference":Landroid/support/v7/preference/Preference;
    :cond_2
    iget-object v3, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mExpandButton:Lcom/android/settings/dashboard/ExpandPreference;

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 144
    return-void
.end method

.method public findPreference(Landroid/support/v7/preference/PreferenceScreen;Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;
    .locals 8
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;
    .param p2, "key"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v7, 0x0

    .line 211
    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 212
    .local v2, "preference":Landroid/support/v7/preference/Preference;
    if-eqz v2, :cond_0

    .line 213
    return-object v2

    .line 215
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 216
    iget-object v4, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/Preference;

    .line 217
    .local v1, "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 218
    return-object v1

    .line 220
    :cond_1
    instance-of v4, v1, Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v4, :cond_2

    .line 221
    check-cast v1, Landroid/support/v7/preference/PreferenceGroup;

    .end local v1    # "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v1, p2}, Landroid/support/v7/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    .line 222
    .local v3, "returnedPreference":Landroid/support/v7/preference/Preference;
    if-eqz v3, :cond_2

    .line 223
    return-object v3

    .line 215
    .end local v3    # "returnedPreference":Landroid/support/v7/preference/Preference;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    :cond_3
    const-string/jumbo v4, "ProgressiveDisclosure"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cannot find preference with key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return-object v7
.end method

.method getCollapsedPrefs()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    return-object v0
.end method

.method public isCollapsed()Z
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    if-eqz p1, :cond_0

    .line 72
    const-string/jumbo v0, "state_user_expanded"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mUserExpanded:Z

    .line 74
    :cond_0
    return-void
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 83
    instance-of v4, p1, Lcom/android/settings/dashboard/ExpandPreference;

    if-eqz v4, :cond_1

    .line 84
    iget-object v4, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    invoke-virtual {v4}, Landroid/support/v14/preference/PreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    .line 85
    .local v3, "screen":Landroid/support/v7/preference/PreferenceScreen;
    if-eqz v3, :cond_1

    .line 86
    invoke-virtual {v3, p1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 87
    iget-object v4, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "pref$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/Preference;

    .line 88
    .local v1, "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v3, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 90
    .end local v1    # "pref":Landroid/support/v7/preference/Preference;
    :cond_0
    iget-object v4, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 91
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mUserExpanded:Z

    .line 93
    iget-object v4, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    instance-of v4, v4, Lcom/android/settings/core/instrumentation/Instrumentable;

    if-eqz v4, :cond_2

    .line 94
    iget-object v4, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    check-cast v4, Lcom/android/settings/core/instrumentation/Instrumentable;

    invoke-interface {v4}, Lcom/android/settings/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v0

    .line 102
    .end local v2    # "pref$iterator":Ljava/util/Iterator;
    .end local v3    # "screen":Landroid/support/v7/preference/PreferenceScreen;
    :cond_1
    :goto_1
    const/4 v4, 0x0

    return v4

    .line 96
    .restart local v2    # "pref$iterator":Ljava/util/Iterator;
    .restart local v3    # "screen":Landroid/support/v7/preference/PreferenceScreen;
    :cond_2
    const/4 v0, 0x0

    .local v0, "metricsCategory":I
    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    const-string/jumbo v0, "state_user_expanded"

    iget-boolean v1, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mUserExpanded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 79
    return-void
.end method

.method public removePreference(Landroid/support/v7/preference/PreferenceScreen;Ljava/lang/String;)V
    .locals 4
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 186
    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 187
    .local v2, "preference":Landroid/support/v7/preference/Preference;
    if-eqz v2, :cond_0

    .line 188
    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 189
    return-void

    .line 192
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 193
    iget-object v3, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/Preference;

    .line 194
    .local v1, "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 195
    iget-object v3, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 196
    iget-object v3, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 198
    iget-object v3, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mExpandButton:Lcom/android/settings/dashboard/ExpandPreference;

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 202
    :goto_1
    return-void

    .line 200
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->updateExpandButtonSummary()V

    goto :goto_1

    .line 192
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    .end local v1    # "pref":Landroid/support/v7/preference/Preference;
    :cond_3
    return-void
.end method

.method public setTileLimit(I)V
    .locals 0
    .param p1, "limit"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mTileLimit:I

    .line 110
    return-void
.end method

.method public shouldCollapse(Landroid/support/v7/preference/PreferenceScreen;)Z
    .locals 3
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .prologue
    const/4 v0, 0x0

    .line 123
    iget-boolean v1, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mUserExpanded:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    iget v2, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mTileLimit:I

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method updateExpandButtonSummary()V
    .locals 9
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 252
    iget-object v4, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 253
    .local v2, "size":I
    if-nez v2, :cond_0

    .line 254
    iget-object v4, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mExpandButton:Lcom/android/settings/dashboard/ExpandPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/settings/dashboard/ExpandPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 268
    :goto_0
    return-void

    .line 255
    :cond_0
    if-ne v2, v8, :cond_1

    .line 256
    iget-object v5, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mExpandButton:Lcom/android/settings/dashboard/ExpandPreference;

    iget-object v4, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/Preference;

    invoke-virtual {v4}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/settings/dashboard/ExpandPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 258
    :cond_1
    iget-object v4, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/Preference;

    invoke-virtual {v4}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 259
    .local v3, "summary":Ljava/lang/CharSequence;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 260
    iget-object v4, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/Preference;

    invoke-virtual {v4}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 261
    .local v1, "nextSummary":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 262
    iget-object v4, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mContext:Landroid/content/Context;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v7

    .line 263
    aput-object v1, v5, v8

    .line 262
    const v6, 0x7f0f0b3f

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 259
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 266
    .end local v1    # "nextSummary":Ljava/lang/CharSequence;
    :cond_3
    iget-object v4, p0, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->mExpandButton:Lcom/android/settings/dashboard/ExpandPreference;

    invoke-virtual {v4, v3}, Lcom/android/settings/dashboard/ExpandPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
