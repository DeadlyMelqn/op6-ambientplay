.class final Landroid/app/SystemServiceRegistry$88;
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
        "Landroid/view/autofill/AutofillManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 944
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/view/autofill/AutofillManager;
    .locals 4
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .prologue
    .line 948
    const-string/jumbo v2, "autofill"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 949
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/view/autofill/IAutoFillManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutoFillManager;

    move-result-object v1

    .line 950
    .local v1, "service":Landroid/view/autofill/IAutoFillManager;
    new-instance v2, Landroid/view/autofill/AutofillManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/view/autofill/AutofillManager;-><init>(Landroid/content/Context;Landroid/view/autofill/IAutoFillManager;)V

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
    .line 945
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$88;->createService(Landroid/app/ContextImpl;)Landroid/view/autofill/AutofillManager;

    move-result-object v0

    return-object v0
.end method
