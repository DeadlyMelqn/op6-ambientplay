.class final synthetic Lcom/android/settings/wifi/-$Lambda$i6EKOFH0rP-I9Zxq9YpMtsrt1s0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings/wifi/-$Lambda$i6EKOFH0rP-I9Zxq9YpMtsrt1s0;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/wifi/RequestToggleWiFiActivity;

    invoke-virtual {v0}, Lcom/android/settings/wifi/RequestToggleWiFiActivity;->lambda$-com_android_settings_wifi_RequestToggleWiFiActivity_1984()V

    return-void
.end method

.method private final synthetic $m$1()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings/wifi/-$Lambda$i6EKOFH0rP-I9Zxq9YpMtsrt1s0;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->lambda$-com_android_settings_wifi_WifiSettings_5191()V

    return-void
.end method

.method private final synthetic $m$2()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings/wifi/-$Lambda$i6EKOFH0rP-I9Zxq9YpMtsrt1s0;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->lambda$-com_android_settings_wifi_WifiSettings_5300()V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/settings/wifi/-$Lambda$i6EKOFH0rP-I9Zxq9YpMtsrt1s0;->$id:B

    iput-object p2, p0, Lcom/android/settings/wifi/-$Lambda$i6EKOFH0rP-I9Zxq9YpMtsrt1s0;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/android/settings/wifi/-$Lambda$i6EKOFH0rP-I9Zxq9YpMtsrt1s0;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/wifi/-$Lambda$i6EKOFH0rP-I9Zxq9YpMtsrt1s0;->$m$0()V

    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/wifi/-$Lambda$i6EKOFH0rP-I9Zxq9YpMtsrt1s0;->$m$1()V

    return-void

    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/wifi/-$Lambda$i6EKOFH0rP-I9Zxq9YpMtsrt1s0;->$m$2()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
