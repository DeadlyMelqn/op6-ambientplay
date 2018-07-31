.class final synthetic Lcom/android/settings/bluetooth/-$Lambda$dhyJC6STQI5pq18yJnNoEYt7WPg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/settings/OPGearPreference$OnGearClickListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Lcom/android/settings/OPGearPreference;)V
    .locals 1
    .param p1, "arg0"    # Lcom/android/settings/OPGearPreference;

    .prologue
    iget-object v0, p0, Lcom/android/settings/bluetooth/-$Lambda$dhyJC6STQI5pq18yJnNoEYt7WPg;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->lambda$-com_android_settings_bluetooth_BluetoothSettings_19825(Lcom/android/settings/OPGearPreference;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/-$Lambda$dhyJC6STQI5pq18yJnNoEYt7WPg;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onGearClick(Lcom/android/settings/OPGearPreference;)V
    .locals 0

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/-$Lambda$dhyJC6STQI5pq18yJnNoEYt7WPg;->$m$0(Lcom/android/settings/OPGearPreference;)V

    return-void
.end method
