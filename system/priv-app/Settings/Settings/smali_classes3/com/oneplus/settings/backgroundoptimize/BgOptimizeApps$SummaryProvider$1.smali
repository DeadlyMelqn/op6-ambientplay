.class Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider$1;
.super Lcom/android/settings/applications/AppCounter;
.source "BgOptimizeApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider;->setListening(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider;Landroid/content/Context;Lcom/android/settings/applications/PackageManagerWrapper;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider;
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # Lcom/android/settings/applications/PackageManagerWrapper;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider$1;->this$1:Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider;

    .line 48
    invoke-direct {p0, p2, p3}, Lcom/android/settings/applications/AppCounter;-><init>(Landroid/content/Context;Lcom/android/settings/applications/PackageManagerWrapper;)V

    .line 1
    return-void
.end method


# virtual methods
.method protected includeInCount(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider$1;->this$1:Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider;

    invoke-static {v0}, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider;->-get0(Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider;)Lcom/android/settings/notification/NotificationBackend;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 57
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 56
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/NotificationBackend;->getNotificationsBanned(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method protected onCountComplete(I)V
    .locals 1
    .param p1, "num"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider$1;->this$1:Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider;

    invoke-static {v0, p1}, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider;->-wrap0(Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider;I)V

    .line 52
    return-void
.end method
