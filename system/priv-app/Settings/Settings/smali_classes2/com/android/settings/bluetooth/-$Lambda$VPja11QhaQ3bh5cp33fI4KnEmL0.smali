.class final synthetic Lcom/android/settings/bluetooth/-$Lambda$VPja11QhaQ3bh5cp33fI4KnEmL0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/android/settings/bluetooth/-$Lambda$VPja11QhaQ3bh5cp33fI4KnEmL0;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/settingslib/bluetooth/A2dpProfile;

    iget-object v1, p0, Lcom/android/settings/bluetooth/-$Lambda$VPja11QhaQ3bh5cp33fI4KnEmL0;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/android/settings/bluetooth/-$Lambda$VPja11QhaQ3bh5cp33fI4KnEmL0;->-$f2:Ljava/lang/Object;

    check-cast v2, Landroid/widget/CheckBox;

    invoke-static {v0, v1, v2, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->lambda$-com_android_settings_bluetooth_DeviceProfilesSettings_7347(Lcom/android/settingslib/bluetooth/A2dpProfile;Landroid/bluetooth/BluetoothDevice;Landroid/widget/CheckBox;Landroid/view/View;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/-$Lambda$VPja11QhaQ3bh5cp33fI4KnEmL0;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/settings/bluetooth/-$Lambda$VPja11QhaQ3bh5cp33fI4KnEmL0;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/settings/bluetooth/-$Lambda$VPja11QhaQ3bh5cp33fI4KnEmL0;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/-$Lambda$VPja11QhaQ3bh5cp33fI4KnEmL0;->$m$0(Landroid/view/View;)V

    return-void
.end method
