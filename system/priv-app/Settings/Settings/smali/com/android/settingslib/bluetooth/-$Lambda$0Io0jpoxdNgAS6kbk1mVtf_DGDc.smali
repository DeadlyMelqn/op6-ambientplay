.class final synthetic Lcom/android/settingslib/bluetooth/-$Lambda$0Io0jpoxdNgAS6kbk1mVtf_DGDc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic $INST$0:Lcom/android/settingslib/bluetooth/-$Lambda$0Io0jpoxdNgAS6kbk1mVtf_DGDc;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Landroid/bluetooth/BluetoothCodecConfig;

    .end local p1    # "arg0":Ljava/lang/Object;
    check-cast p2, Landroid/bluetooth/BluetoothCodecConfig;

    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-static {p1, p2}, Lcom/android/settingslib/bluetooth/A2dpProfile;->lambda$-com_android_settingslib_bluetooth_A2dpProfile_10475(Landroid/bluetooth/BluetoothCodecConfig;Landroid/bluetooth/BluetoothCodecConfig;)I

    move-result v0

    return v0
.end method

.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settingslib/bluetooth/-$Lambda$0Io0jpoxdNgAS6kbk1mVtf_DGDc;

    invoke-direct {v0}, Lcom/android/settingslib/bluetooth/-$Lambda$0Io0jpoxdNgAS6kbk1mVtf_DGDc;-><init>()V

    sput-object v0, Lcom/android/settingslib/bluetooth/-$Lambda$0Io0jpoxdNgAS6kbk1mVtf_DGDc;->$INST$0:Lcom/android/settingslib/bluetooth/-$Lambda$0Io0jpoxdNgAS6kbk1mVtf_DGDc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/bluetooth/-$Lambda$0Io0jpoxdNgAS6kbk1mVtf_DGDc;->$m$0(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
