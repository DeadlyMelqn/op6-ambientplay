.class final Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge$2;
.super Ljava/lang/Object;
.source "AppBgOptimizeBridge.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$AppFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 5
    .param p1, "info"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-nez v3, :cond_1

    .line 91
    :cond_0
    return v2

    .line 89
    :cond_1
    iget-object v3, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v3, v3, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    .line 90
    iget-object v3, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const/16 v4, 0x3e7

    if-eq v3, v4, :cond_0

    .line 94
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;

    .line 95
    .local v0, "acm":Lcom/oneplus/settings/backgroundoptimize/AppControlMode;
    iget v3, v0, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;->value:I

    if-ne v1, v3, :cond_2

    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method