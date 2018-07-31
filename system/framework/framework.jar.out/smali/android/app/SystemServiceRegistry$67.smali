.class final Landroid/app/SystemServiceRegistry$67;
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
        "Landroid/secrecy/SecrecyManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 755
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/secrecy/SecrecyManager;
    .locals 4
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 758
    const-string/jumbo v2, "secrecy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 759
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/secrecy/ISecrecyService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/secrecy/ISecrecyService;

    move-result-object v1

    .line 760
    .local v1, "service":Landroid/secrecy/ISecrecyService;
    new-instance v2, Landroid/secrecy/SecrecyManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/secrecy/SecrecyManager;-><init>(Landroid/content/Context;Landroid/secrecy/ISecrecyService;)V

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
    .line 756
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$67;->createService(Landroid/app/ContextImpl;)Landroid/secrecy/SecrecyManager;

    move-result-object v0

    return-object v0
.end method
