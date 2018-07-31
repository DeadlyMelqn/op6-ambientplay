.class public Lcom/android/settings/aoscp/sound/AmbientPlaySettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AmbientPlaySettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/aoscp/sound/AmbientPlaySettings$1;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static synthetic -wrap0(Landroid/content/Context;Landroid/app/Activity;Landroid/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fragment"    # Landroid/app/Fragment;
    .param p3, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .prologue
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/aoscp/sound/AmbientPlaySettings;->buildPreferenceControllers(Landroid/content/Context;Landroid/app/Activity;Landroid/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lcom/android/settings/aoscp/sound/AmbientPlaySettings$1;

    invoke-direct {v0}, Lcom/android/settings/aoscp/sound/AmbientPlaySettings$1;-><init>()V

    .line 87
    sput-object v0, Lcom/android/settings/aoscp/sound/AmbientPlaySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Landroid/app/Activity;Landroid/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fragment"    # Landroid/app/Fragment;
    .param p3, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Activity;",
            "Landroid/app/Fragment;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v0, "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;"
    new-instance v1, Lcom/android/settings/aoscp/sound/AmbientPlayPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/aoscp/sound/AmbientPlayPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v1, Lcom/android/settings/aoscp/sound/AmbientPlayLockscreenPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/aoscp/sound/AmbientPlayLockscreenPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    return-object v0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 57
    const v0, 0x7f12061e

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string/jumbo v0, "AmbientPlaySettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, -0x1

    return v0
.end method

.method protected getPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/settings/aoscp/sound/AmbientPlaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/aoscp/sound/AmbientPlaySettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    .line 72
    invoke-static {p1, v0, p0, v1}, Lcom/android/settings/aoscp/sound/AmbientPlaySettings;->buildPreferenceControllers(Landroid/content/Context;Landroid/app/Activity;Landroid/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .prologue
    .line 67
    const v0, 0x7f15000c

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    iget-object v0, p0, Lcom/android/settings/aoscp/sound/AmbientPlaySettings;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixin;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/FooterPreferenceMixin;->createFooterPreference()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object v0

    const v1, 0x7f1200cf

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(I)V

    .line 48
    return-void
.end method
