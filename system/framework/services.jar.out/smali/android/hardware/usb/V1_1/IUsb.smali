.class public interface abstract Landroid/hardware/usb/V1_1/IUsb;
.super Ljava/lang/Object;
.source "IUsb.java"

# interfaces
.implements Landroid/hardware/usb/V1_0/IUsb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/V1_1/IUsb$Proxy;,
        Landroid/hardware/usb/V1_1/IUsb$Stub;
    }
.end annotation


# static fields
.field public static final kInterfaceName:Ljava/lang/String; = "android.hardware.usb@1.1::IUsb"


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Landroid/hardware/usb/V1_1/IUsb;
    .locals 7
    .param p0, "binder"    # Landroid/os/IHwBinder;

    .prologue
    const/4 v6, 0x0

    .line 7
    if-nez p0, :cond_0

    .line 8
    return-object v6

    .line 12
    :cond_0
    const-string/jumbo v5, "android.hardware.usb@1.1::IUsb"

    invoke-interface {p0, v5}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v3

    .line 14
    .local v3, "iface":Landroid/os/IHwInterface;
    if-eqz v3, :cond_1

    instance-of v5, v3, Landroid/hardware/usb/V1_1/IUsb;

    if-eqz v5, :cond_1

    .line 15
    check-cast v3, Landroid/hardware/usb/V1_1/IUsb;

    .end local v3    # "iface":Landroid/os/IHwInterface;
    return-object v3

    .line 18
    .restart local v3    # "iface":Landroid/os/IHwInterface;
    :cond_1
    new-instance v4, Landroid/hardware/usb/V1_1/IUsb$Proxy;

    invoke-direct {v4, p0}, Landroid/hardware/usb/V1_1/IUsb$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 21
    .local v4, "proxy":Landroid/hardware/usb/V1_1/IUsb;
    :try_start_0
    invoke-interface {v4}, Landroid/hardware/usb/V1_1/IUsb;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "descriptor$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 22
    .local v0, "descriptor":Ljava/lang/String;
    const-string/jumbo v5, "android.hardware.usb@1.1::IUsb"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_2

    .line 23
    return-object v4

    .line 26
    .end local v0    # "descriptor":Ljava/lang/String;
    .end local v1    # "descriptor$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 29
    :cond_3
    return-object v6
.end method

.method public static castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/V1_1/IUsb;
    .locals 1
    .param p0, "iface"    # Landroid/os/IHwInterface;

    .prologue
    const/4 v0, 0x0

    .line 33
    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/usb/V1_1/IUsb;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/usb/V1_1/IUsb;

    move-result-object v0

    goto :goto_0
.end method

.method public static getService()Landroid/hardware/usb/V1_1/IUsb;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 44
    const-string/jumbo v0, "android.hardware.usb@1.1::IUsb"

    const-string/jumbo v1, "default"

    invoke-static {v0, v1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/usb/V1_1/IUsb;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/usb/V1_1/IUsb;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Landroid/hardware/usb/V1_1/IUsb;
    .locals 1
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 40
    const-string/jumbo v0, "android.hardware.usb@1.1::IUsb"

    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/usb/V1_1/IUsb;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/usb/V1_1/IUsb;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getHashChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract interfaceChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract interfaceDescriptor()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifySyspropsChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ping()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setHALInstrumentation()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
