.class final synthetic Lcom/android/settings/bluetooth/-$Lambda$n0crXw34noCtKOBhUHaO2itnp3w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/support/v7/preference/Preference;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/support/v7/preference/Preference;

    .prologue
    iget-object v0, p0, Lcom/android/settings/bluetooth/-$Lambda$n0crXw34noCtKOBhUHaO2itnp3w;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;

    iget-object v1, p0, Lcom/android/settings/bluetooth/-$Lambda$n0crXw34noCtKOBhUHaO2itnp3w;->-$f1:Ljava/lang/Object;

    check-cast v1, Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;->lambda$-com_android_settings_bluetooth_BluetoothDetailsProfilesController_9999(Lcom/android/settingslib/bluetooth/A2dpProfile;Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/-$Lambda$n0crXw34noCtKOBhUHaO2itnp3w;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/settings/bluetooth/-$Lambda$n0crXw34noCtKOBhUHaO2itnp3w;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/-$Lambda$n0crXw34noCtKOBhUHaO2itnp3w;->$m$0(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method
