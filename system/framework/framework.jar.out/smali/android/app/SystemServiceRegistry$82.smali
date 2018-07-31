.class final Landroid/app/SystemServiceRegistry$82;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
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
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher",
        "<",
        "Landroid/os/HardwarePropertiesManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 895
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/os/HardwarePropertiesManager;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .prologue
    .line 898
    const-string/jumbo v2, "hardware_properties"

    invoke-static {v2}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 900
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IHardwarePropertiesManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHardwarePropertiesManager;

    move-result-object v1

    .line 901
    .local v1, "service":Landroid/os/IHardwarePropertiesManager;
    new-instance v2, Landroid/os/HardwarePropertiesManager;

    invoke-direct {v2, p1, v1}, Landroid/os/HardwarePropertiesManager;-><init>(Landroid/content/Context;Landroid/os/IHardwarePropertiesManager;)V

    return-object v2
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .prologue
    .line 896
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$82;->createService(Landroid/app/ContextImpl;)Landroid/os/HardwarePropertiesManager;

    move-result-object v0

    return-object v0
.end method
