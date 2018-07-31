.class public Lcom/oneplus/aod/AodAquirePermission;
.super Landroid/app/Activity;
.source "AodAquirePermission.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 18
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 20
    const-string/jumbo v0, "android.permission.READ_CONTACTS"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    aput-object v1, v0, v2

    .line 22
    invoke-static {p0, v0, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/aod/AodAquirePermission;->finish()V

    .line 31
    return-void
.end method
