.class final synthetic Lcom/android/settings/wifi/-$Lambda$758F9HWIFnnu1gkvpsEen6CqHeg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/support/v7/preference/Preference;

    .prologue
    iget-object v0, p0, Lcom/android/settings/wifi/-$Lambda$758F9HWIFnnu1gkvpsEen6CqHeg;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/wifi/WpsPreferenceController;

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/WpsPreferenceController;->lambda$-com_android_settings_wifi_WpsPreferenceController_3599(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method private final synthetic $m$1(Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/support/v7/preference/Preference;

    .prologue
    iget-object v0, p0, Lcom/android/settings/wifi/-$Lambda$758F9HWIFnnu1gkvpsEen6CqHeg;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/wifi/WpsPreferenceController;

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/WpsPreferenceController;->lambda$-com_android_settings_wifi_WpsPreferenceController_3932(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/settings/wifi/-$Lambda$758F9HWIFnnu1gkvpsEen6CqHeg;->$id:B

    iput-object p2, p0, Lcom/android/settings/wifi/-$Lambda$758F9HWIFnnu1gkvpsEen6CqHeg;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/android/settings/wifi/-$Lambda$758F9HWIFnnu1gkvpsEen6CqHeg;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/-$Lambda$758F9HWIFnnu1gkvpsEen6CqHeg;->$m$0(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/-$Lambda$758F9HWIFnnu1gkvpsEen6CqHeg;->$m$1(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
