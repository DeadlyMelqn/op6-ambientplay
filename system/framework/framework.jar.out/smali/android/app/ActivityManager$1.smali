.class final Landroid/app/ActivityManager$1;
.super Landroid/util/Singleton;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton",
        "<",
        "Landroid/app/IActivityManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 4305
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method protected create()Landroid/app/IActivityManager;
    .locals 3

    .prologue
    .line 4308
    const-string/jumbo v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 4309
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/app/IActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v0

    .line 4310
    .local v0, "am":Landroid/app/IActivityManager;
    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4306
    invoke-virtual {p0}, Landroid/app/ActivityManager$1;->create()Landroid/app/IActivityManager;

    move-result-object v0

    return-object v0
.end method
