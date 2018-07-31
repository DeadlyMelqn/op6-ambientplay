.class public Lcom/android/settings/wifi/WifiApEnabler;
.super Ljava/lang/Object;
.source "WifiApEnabler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiApEnabler$1;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ICCID_INDEX:I = 0x1

.field private static final SOFTSIM_URL:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "WifiApEnabler"


# instance fields
.field mCm:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mOriginalSummary:Ljava/lang/CharSequence;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSoftSimEnabled:Z

.field private final mSwitch:Landroid/support/v14/preference/SwitchPreference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;


# direct methods
.method static synthetic -set0(Lcom/android/settings/wifi/WifiApEnabler;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/wifi/WifiApEnabler;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSoftSimEnabled:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/wifi/WifiApEnabler;Landroid/content/Context;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/wifi/WifiApEnabler;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiApEnabler;->isSoftSimEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/wifi/WifiApEnabler;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/wifi/WifiApEnabler;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->enableWifiSwitch()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/wifi/WifiApEnabler;II)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/wifi/WifiApEnabler;
    .param p1, "state"    # I
    .param p2, "reason"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiApEnabler;->handleWifiApStateChanged(II)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/wifi/WifiApEnabler;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/wifi/WifiApEnabler;
    .param p1, "available"    # [Ljava/lang/Object;
    .param p2, "tethered"    # [Ljava/lang/Object;
    .param p3, "errored"    # [Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiApEnabler;->updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string/jumbo v0, "content://com.redteamobile.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WifiApEnabler;->SOFTSIM_URL:Landroid/net/Uri;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datausage/DataSaverBackend;Landroid/support/v14/preference/SwitchPreference;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataSaverBackend"    # Lcom/android/settings/datausage/DataSaverBackend;
    .param p3, "switchPreference"    # Landroid/support/v14/preference/SwitchPreference;

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSoftSimEnabled:Z

    .line 63
    new-instance v0, Lcom/android/settings/wifi/WifiApEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApEnabler$1;-><init>(Lcom/android/settings/wifi/WifiApEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 100
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    .line 101
    iput-object p2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    .line 102
    iput-object p3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    .line 103
    const v0, 0x7f0f1269

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    .line 104
    invoke-virtual {p3, v1}, Landroid/support/v14/preference/SwitchPreference;->setPersistent(Z)V

    .line 106
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 107
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    .line 109
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .line 111
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 112
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method private enableWifiSwitch()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 127
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 128
    const-string/jumbo v2, "airplane_mode_on"

    .line 127
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 129
    .local v0, "isAirplaneMode":Z
    :goto_0
    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSoftSimEnabled:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 130
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v2}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 135
    :goto_1
    return-void

    .line 127
    .end local v0    # "isAirplaneMode":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isAirplaneMode":Z
    goto :goto_0

    .line 132
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private getSoftSimIccId(Landroid/content/Context;I)Ljava/lang/String;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slot"    # I

    .prologue
    .line 212
    const/4 v8, 0x0

    .line 216
    .local v8, "iccid":Ljava/lang/String;
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "slot=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    .local v9, "where":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/wifi/WifiApEnabler;->SOFTSIM_URL:Landroid/net/Uri;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    .line 218
    const-string/jumbo v3, "slot"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "iccid"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string/jumbo v3, "imsi"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const-string/jumbo v3, "permit_package"

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const-string/jumbo v3, "forbid_package"

    const/4 v4, 0x4

    aput-object v3, v2, v4

    const-string/jumbo v3, "pilot"

    const/4 v4, 0x5

    aput-object v3, v2, v4

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "slot"

    const/4 v4, 0x0

    .line 217
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 220
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 221
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 222
    .end local v8    # "iccid":Ljava/lang/String;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 223
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 224
    .local v8, "iccid":Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 229
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "iccid":Ljava/lang/String;
    .end local v9    # "where":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v7

    .line 230
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v0, "WifiApEnabler"

    const-string/jumbo v1, "getSoftSimIccid SQLiteException "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_0
    :goto_1
    return-object v8

    .line 226
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "where":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private handleWifiApStateChanged(II)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "reason"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 174
    packed-switch p1, :pswitch_data_0

    .line 199
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 200
    if-ne p2, v1, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    const v1, 0x7f0f081b

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 205
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->enableWifiSwitch()V

    .line 207
    :goto_1
    return-void

    .line 176
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    const v1, 0x7f0f08b8

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 177
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1

    .line 184
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 186
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v1}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1

    .line 189
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    const v1, 0x7f0f08b9

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 190
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 191
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1

    .line 194
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 195
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 196
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->enableWifiSwitch()V

    goto :goto_1

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    const v1, 0x7f0f081a

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isSoftSimEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 237
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 238
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    .local v1, "slotId":I
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 239
    invoke-direct {p0, p1, v1}, Lcom/android/settings/wifi/WifiApEnabler;->getSoftSimIccId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 240
    const-string/jumbo v3, "WifiApEnabler"

    const-string/jumbo v4, "Soft SIM is found"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/4 v3, 0x1

    return v3

    .line 238
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 244
    :cond_1
    const-string/jumbo v3, "WifiApEnabler"

    const-string/jumbo v4, "Soft SIM is NOT found"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/4 v3, 0x0

    return v3
.end method

.method private updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V
    .locals 6
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 138
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    .line 139
    const v2, 0x10406ae

    .line 138
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 142
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v4

    .line 143
    if-nez p1, :cond_0

    .line 142
    .end local v0    # "s":Ljava/lang/String;
    :goto_0
    invoke-virtual {v4, v0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 141
    const v4, 0x7f0f08ba

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 144
    return-void

    .line 143
    .restart local v0    # "s":Ljava/lang/String;
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0
.end method

.method private updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 12
    .param p1, "available"    # [Ljava/lang/Object;
    .param p2, "tethered"    # [Ljava/lang/Object;
    .param p3, "errored"    # [Ljava/lang/Object;

    .prologue
    .line 147
    const/4 v5, 0x0

    .line 148
    .local v5, "wifiTethered":Z
    const/4 v4, 0x0

    .line 150
    .local v4, "wifiErrored":Z
    const/4 v6, 0x0

    array-length v8, p2

    move v7, v6

    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v0, p2, v7

    .local v0, "o":Ljava/lang/Object;
    move-object v2, v0

    .line 151
    check-cast v2, Ljava/lang/String;

    .line 152
    .local v2, "s":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    const/4 v6, 0x0

    array-length v10, v9

    :goto_1
    if-ge v6, v10, :cond_1

    aget-object v1, v9, v6

    .line 153
    .local v1, "regex":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v5, 0x1

    .line 152
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 150
    .end local v1    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_0

    .line 156
    .end local v0    # "o":Ljava/lang/Object;
    .end local v2    # "s":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    array-length v8, p3

    move v7, v6

    :goto_2
    if-ge v7, v8, :cond_5

    aget-object v0, p3, v7

    .restart local v0    # "o":Ljava/lang/Object;
    move-object v2, v0

    .line 157
    check-cast v2, Ljava/lang/String;

    .line 158
    .restart local v2    # "s":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    const/4 v6, 0x0

    array-length v10, v9

    :goto_3
    if-ge v6, v10, :cond_4

    aget-object v1, v9, v6

    .line 159
    .restart local v1    # "regex":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v4, 0x1

    .line 158
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 156
    .end local v1    # "regex":Ljava/lang/String;
    :cond_4
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_2

    .line 163
    .end local v0    # "o":Ljava/lang/Object;
    .end local v2    # "s":Ljava/lang/String;
    :cond_5
    if-eqz v5, :cond_6

    .line 164
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 165
    .local v3, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiApEnabler;->updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V

    .line 171
    .end local v3    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :goto_4
    return-void

    .line 166
    :cond_6
    if-eqz v4, :cond_7

    .line 167
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    const v7, 0x7f0f081a

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto :goto_4

    .line 169
    :cond_7
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    const v7, 0x7f0f1269

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto :goto_4
.end method


# virtual methods
.method public pause()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 124
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 119
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->enableWifiSwitch()V

    .line 120
    return-void
.end method
