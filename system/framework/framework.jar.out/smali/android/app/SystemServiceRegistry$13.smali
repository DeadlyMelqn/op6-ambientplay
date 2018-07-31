.class final Landroid/app/SystemServiceRegistry$13;
.super Landroid/app/SystemServiceRegistry$StaticServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$StaticServiceFetcher",
        "<",
        "Landroid/net/IpSecManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 291
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createService()Landroid/net/IpSecManager;
    .locals 3

    .prologue
    .line 294
    const-string/jumbo v2, "ipsec"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 295
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/IIpSecService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIpSecService;

    move-result-object v1

    .line 296
    .local v1, "service":Landroid/net/IIpSecService;
    new-instance v2, Landroid/net/IpSecManager;

    invoke-direct {v2, v1}, Landroid/net/IpSecManager;-><init>(Landroid/net/IIpSecService;)V

    return-object v2
.end method

.method public bridge synthetic createService()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .prologue
    .line 292
    invoke-virtual {p0}, Landroid/app/SystemServiceRegistry$13;->createService()Landroid/net/IpSecManager;

    move-result-object v0

    return-object v0
.end method
