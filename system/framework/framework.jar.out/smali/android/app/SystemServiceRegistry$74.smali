.class final Landroid/app/SystemServiceRegistry$74;
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
        "Landroid/service/persistentdata/PersistentDataBlockManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 820
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createService()Landroid/service/persistentdata/PersistentDataBlockManager;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 823
    const-string/jumbo v2, "persistent_data_block"

    invoke-static {v2}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 825
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/persistentdata/IPersistentDataBlockService;

    move-result-object v1

    .line 826
    .local v1, "persistentDataBlockService":Landroid/service/persistentdata/IPersistentDataBlockService;
    if-eqz v1, :cond_0

    .line 827
    new-instance v2, Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-direct {v2, v1}, Landroid/service/persistentdata/PersistentDataBlockManager;-><init>(Landroid/service/persistentdata/IPersistentDataBlockService;)V

    return-object v2

    .line 830
    :cond_0
    return-object v3
.end method

.method public bridge synthetic createService()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .prologue
    .line 821
    invoke-virtual {p0}, Landroid/app/SystemServiceRegistry$74;->createService()Landroid/service/persistentdata/PersistentDataBlockManager;

    move-result-object v0

    return-object v0
.end method