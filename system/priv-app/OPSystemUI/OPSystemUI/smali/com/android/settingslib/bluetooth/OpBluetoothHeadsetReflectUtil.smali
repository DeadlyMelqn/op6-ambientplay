.class public Lcom/android/settingslib/bluetooth/OpBluetoothHeadsetReflectUtil;
.super Ljava/lang/Object;
.source "OpBluetoothHeadsetReflectUtil.java"


# static fields
.field static obj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settingslib/bluetooth/OpBluetoothHeadsetReflectUtil;->obj:Ljava/lang/Object;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isOpBluetoothHeadset(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 14
    const/4 v3, 0x0

    .line 16
    .local v3, "isSupport":Z
    :try_start_0
    const-string/jumbo v6, "android.bluetooth.oneplus.OpBluetoothHeadset"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 17
    .local v0, "cla":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v5, v6, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 18
    .local v5, "parameterTypes":[Ljava/lang/Class;
    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 19
    .local v1, "constructor":Ljava/lang/reflect/Constructor;
    sget-object v6, Lcom/android/settingslib/bluetooth/OpBluetoothHeadsetReflectUtil;->obj:Ljava/lang/Object;

    if-nez v6, :cond_0

    .line 20
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sput-object v6, Lcom/android/settingslib/bluetooth/OpBluetoothHeadsetReflectUtil;->obj:Ljava/lang/Object;

    .line 22
    :cond_0
    const-string/jumbo v6, "isOpBluetoothHeadset"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const-class v8, [I

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 23
    .local v4, "method":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 24
    sget-object v6, Lcom/android/settingslib/bluetooth/OpBluetoothHeadsetReflectUtil;->obj:Ljava/lang/Object;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 27
    .end local v0    # "cla":Ljava/lang/Class;
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v3    # "isSupport":Z
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "parameterTypes":[Ljava/lang/Class;
    :goto_0
    return v3

    .line 25
    .restart local v3    # "isSupport":Z
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
