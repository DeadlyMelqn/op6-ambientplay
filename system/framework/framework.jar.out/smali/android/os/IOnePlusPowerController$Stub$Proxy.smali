.class Landroid/os/IOnePlusPowerController$Stub$Proxy;
.super Ljava/lang/Object;
.source "IOnePlusPowerController.java"

# interfaces
.implements Landroid/os/IOnePlusPowerController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IOnePlusPowerController$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Landroid/os/IOnePlusPowerController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 55
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Landroid/os/IOnePlusPowerController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string/jumbo v0, "android.os.IOnePlusPowerController"

    return-object v0
.end method