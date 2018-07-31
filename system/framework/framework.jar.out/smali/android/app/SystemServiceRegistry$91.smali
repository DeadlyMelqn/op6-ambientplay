.class final Landroid/app/SystemServiceRegistry$91;
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
        "Lcom/oneplus/longshot/LongScreenshotManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 972
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Lcom/oneplus/longshot/LongScreenshotManager;
    .locals 1
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 975
    invoke-static {}, Lcom/oneplus/longshot/LongScreenshotManager;->getInstance()Lcom/oneplus/longshot/LongScreenshotManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .prologue
    .line 973
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$91;->createService(Landroid/app/ContextImpl;)Lcom/oneplus/longshot/LongScreenshotManager;

    move-result-object v0

    return-object v0
.end method
