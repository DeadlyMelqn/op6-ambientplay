.class public Lcom/android/settings/enterprise/ExposureChangesCategoryPreferenceController;
.super Lcom/android/settings/core/DynamicAvailabilityPreferenceController;
.source "ExposureChangesCategoryPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceAvailabilityObserver;


# static fields
.field private static final KEY_EXPOSURE_CHANGES_CATEGORY:Ljava/lang/String; = "exposure_changes_category"


# instance fields
.field private final mAvailablePrefs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mControllingUi:Z

.field private mPreference:Landroid/support/v7/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;Ljava/util/List;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settings/core/lifecycle/Lifecycle;
    .param p4, "controllingUi"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/core/lifecycle/Lifecycle;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/core/DynamicAvailabilityPreferenceController;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p3, "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/core/DynamicAvailabilityPreferenceController;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/DynamicAvailabilityPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V

    .line 44
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/settings/enterprise/ExposureChangesCategoryPreferenceController;->mAvailablePrefs:Ljava/util/Set;

    .line 45
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/enterprise/ExposureChangesCategoryPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 61
    iput-boolean p4, p0, Lcom/android/settings/enterprise/ExposureChangesCategoryPreferenceController;->mControllingUi:Z

    .line 62
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "controller$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/DynamicAvailabilityPreferenceController;

    .line 63
    .local v0, "controller":Lcom/android/settings/core/DynamicAvailabilityPreferenceController;
    invoke-virtual {v0, p0}, Lcom/android/settings/core/DynamicAvailabilityPreferenceController;->setAvailabilityObserver(Lcom/android/settings/core/PreferenceAvailabilityObserver;)V

    goto :goto_0

    .line 65
    .end local v0    # "controller":Lcom/android/settings/core/DynamicAvailabilityPreferenceController;
    :cond_0
    return-void
.end method

.method private haveAnyVisiblePreferences()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 109
    iget-object v1, p0, Lcom/android/settings/enterprise/ExposureChangesCategoryPreferenceController;->mAvailablePrefs:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const-string/jumbo v0, "exposure_changes_category"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .prologue
    .line 91
    iget-boolean v1, p0, Lcom/android/settings/enterprise/ExposureChangesCategoryPreferenceController;->mControllingUi:Z

    if-eqz v1, :cond_0

    .line 96
    const/4 v1, 0x1

    return v1

    .line 98
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/enterprise/ExposureChangesCategoryPreferenceController;->haveAnyVisiblePreferences()Z

    move-result v0

    .line 99
    .local v0, "available":Z
    invoke-virtual {p0, v0}, Lcom/android/settings/enterprise/ExposureChangesCategoryPreferenceController;->notifyOnAvailabilityUpdate(Z)V

    .line 100
    return v0
.end method

.method public onPreferenceAvailabilityUpdated(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "available"    # Z

    .prologue
    .line 69
    if-eqz p2, :cond_2

    .line 70
    iget-object v0, p0, Lcom/android/settings/enterprise/ExposureChangesCategoryPreferenceController;->mAvailablePrefs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/enterprise/ExposureChangesCategoryPreferenceController;->haveAnyVisiblePreferences()Z

    move-result p2

    .line 75
    iget-boolean v0, p0, Lcom/android/settings/enterprise/ExposureChangesCategoryPreferenceController;->mControllingUi:Z

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0, p2}, Lcom/android/settings/enterprise/ExposureChangesCategoryPreferenceController;->notifyOnAvailabilityUpdate(Z)V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/settings/enterprise/ExposureChangesCategoryPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/android/settings/enterprise/ExposureChangesCategoryPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p2}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 81
    :cond_1
    return-void

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/android/settings/enterprise/ExposureChangesCategoryPreferenceController;->mAvailablePrefs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/settings/enterprise/ExposureChangesCategoryPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 86
    iget-object v0, p0, Lcom/android/settings/enterprise/ExposureChangesCategoryPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-direct {p0}, Lcom/android/settings/enterprise/ExposureChangesCategoryPreferenceController;->haveAnyVisiblePreferences()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 87
    return-void
.end method
