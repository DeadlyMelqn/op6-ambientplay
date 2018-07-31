.class public abstract Lcom/android/settings/applications/InstalledAppCounter;
.super Lcom/android/settings/applications/AppCounter;
.source "InstalledAppCounter.java"


# static fields
.field public static final IGNORE_INSTALL_REASON:I = -0x1


# instance fields
.field private final mInstallReason:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/settings/applications/PackageManagerWrapper;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "installReason"    # I
    .param p3, "packageManager"    # Lcom/android/settings/applications/PackageManagerWrapper;

    .prologue
    .line 37
    invoke-direct {p0, p1, p3}, Lcom/android/settings/applications/AppCounter;-><init>(Landroid/content/Context;Lcom/android/settings/applications/PackageManagerWrapper;)V

    .line 38
    iput p2, p0, Lcom/android/settings/applications/InstalledAppCounter;->mInstallReason:I

    .line 39
    return-void
.end method

.method public static includeInCount(ILcom/android/settings/applications/PackageManagerWrapper;Landroid/content/pm/ApplicationInfo;)Z
    .locals 8
    .param p0, "installReason"    # I
    .param p1, "pm"    # Lcom/android/settings/applications/PackageManagerWrapper;
    .param p2, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 48
    iget v5, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 49
    .local v2, "userId":I
    const/4 v5, -0x1

    if-eq p0, v5, :cond_0

    .line 50
    iget-object v5, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 51
    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 50
    invoke-interface {p1, v5, v6}, Lcom/android/settings/applications/PackageManagerWrapper;->getInstallReason(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v5

    if-eq v5, p0, :cond_0

    .line 52
    return v4

    .line 54
    :cond_0
    iget v5, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_1

    .line 55
    return v3

    .line 57
    :cond_1
    iget v5, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_2

    .line 58
    return v3

    .line 60
    :cond_2
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 61
    const-string/jumbo v6, "android.intent.category.LAUNCHER"

    .line 60
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 62
    iget-object v6, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 60
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 65
    .local v1, "launchIntent":Landroid/content/Intent;
    const v5, 0xc0200

    .line 63
    invoke-interface {p1, v1, v5, v2}, Lcom/android/settings/applications/PackageManagerWrapper;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 69
    .local v0, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_3

    :goto_0
    return v3

    :cond_3
    move v3, v4

    goto :goto_0
.end method


# virtual methods
.method protected includeInCount(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 43
    iget v0, p0, Lcom/android/settings/applications/InstalledAppCounter;->mInstallReason:I

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppCounter;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    invoke-static {v0, v1, p1}, Lcom/android/settings/applications/InstalledAppCounter;->includeInCount(ILcom/android/settings/applications/PackageManagerWrapper;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method
