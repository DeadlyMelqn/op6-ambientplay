.class Lcom/android/settings/applications/DefaultBrowserPreference$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "DefaultBrowserPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/DefaultBrowserPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/DefaultBrowserPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/DefaultBrowserPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/applications/DefaultBrowserPreference;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/applications/DefaultBrowserPreference$2;->this$0:Lcom/android/settings/applications/DefaultBrowserPreference;

    .line 193
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 1
    return-void
.end method

.method private sendUpdate()V
    .locals 4

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/settings/applications/DefaultBrowserPreference$2;->this$0:Lcom/android/settings/applications/DefaultBrowserPreference;

    invoke-static {v0}, Lcom/android/settings/applications/DefaultBrowserPreference;->-get0(Lcom/android/settings/applications/DefaultBrowserPreference;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/DefaultBrowserPreference$2;->this$0:Lcom/android/settings/applications/DefaultBrowserPreference;

    invoke-static {v1}, Lcom/android/settings/applications/DefaultBrowserPreference;->-get1(Lcom/android/settings/applications/DefaultBrowserPreference;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 216
    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/settings/applications/DefaultBrowserPreference$2;->sendUpdate()V

    .line 197
    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/android/settings/applications/DefaultBrowserPreference$2;->sendUpdate()V

    .line 202
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/settings/applications/DefaultBrowserPreference$2;->sendUpdate()V

    .line 207
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/android/settings/applications/DefaultBrowserPreference$2;->sendUpdate()V

    .line 212
    return-void
.end method
