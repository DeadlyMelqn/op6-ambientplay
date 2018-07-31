.class Lcom/android/settings/webview/WebViewAppPicker$WebViewAppInfo;
.super Lcom/android/settings/applications/DefaultAppInfo;
.source "WebViewAppPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/webview/WebViewAppPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebViewAppInfo"
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/PackageManagerWrapper;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "pm"    # Lcom/android/settings/applications/PackageManagerWrapper;
    .param p2, "packageItemInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p3, "summary"    # Ljava/lang/String;
    .param p4, "enabled"    # Z

    .prologue
    .line 116
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/applications/DefaultAppInfo;-><init>(Lcom/android/settings/applications/PackageManagerWrapper;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Z)V

    .line 117
    return-void
.end method


# virtual methods
.method public loadLabel()Ljava/lang/CharSequence;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 121
    const-string/jumbo v1, ""

    .line 123
    .local v1, "versionName":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/webview/WebViewAppPicker$WebViewAppInfo;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    invoke-interface {v2}, Lcom/android/settings/applications/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 124
    iget-object v3, p0, Lcom/android/settings/webview/WebViewAppPicker$WebViewAppInfo;->packageItemInfo:Landroid/content/pm/PackageItemInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    .line 123
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    const-string/jumbo v2, "%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-super {p0}, Lcom/android/settings/applications/DefaultAppInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 125
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method
