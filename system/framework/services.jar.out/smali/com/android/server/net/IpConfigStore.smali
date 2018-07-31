.class public Lcom/android/server/net/IpConfigStore;
.super Ljava/lang/Object;
.source "IpConfigStore.java"


# static fields
.field private static final synthetic -android-net-IpConfiguration$IpAssignmentSwitchesValues:[I = null

.field private static final synthetic -android-net-IpConfiguration$ProxySettingsSwitchesValues:[I = null

.field private static final DBG:Z = false

.field protected static final DNS_KEY:Ljava/lang/String; = "dns"

.field protected static final EOS:Ljava/lang/String; = "eos"

.field protected static final EXCLUSION_LIST_KEY:Ljava/lang/String; = "exclusionList"

.field protected static final GATEWAY_KEY:Ljava/lang/String; = "gateway"

.field protected static final ID_KEY:Ljava/lang/String; = "id"

.field protected static final IPCONFIG_FILE_VERSION:I = 0x2

.field protected static final IP_ASSIGNMENT_KEY:Ljava/lang/String; = "ipAssignment"

.field protected static final LINK_ADDRESS_KEY:Ljava/lang/String; = "linkAddress"

.field protected static final PROXY_HOST_KEY:Ljava/lang/String; = "proxyHost"

.field protected static final PROXY_PAC_FILE:Ljava/lang/String; = "proxyPac"

.field protected static final PROXY_PORT_KEY:Ljava/lang/String; = "proxyPort"

.field protected static final PROXY_SETTINGS_KEY:Ljava/lang/String; = "proxySettings"

.field private static final TAG:Ljava/lang/String; = "IpConfigStore"


# instance fields
.field protected final mWriter:Lcom/android/server/net/DelayedDiskWrite;


# direct methods
.method private static synthetic -getandroid-net-IpConfiguration$IpAssignmentSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/server/net/IpConfigStore;->-android-net-IpConfiguration$IpAssignmentSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/net/IpConfigStore;->-android-net-IpConfiguration$IpAssignmentSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/net/IpConfiguration$IpAssignment;->values()[Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v1}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v1}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v1}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/android/server/net/IpConfigStore;->-android-net-IpConfiguration$IpAssignmentSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getandroid-net-IpConfiguration$ProxySettingsSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/server/net/IpConfigStore;->-android-net-IpConfiguration$ProxySettingsSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/net/IpConfigStore;->-android-net-IpConfiguration$ProxySettingsSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/net/IpConfiguration$ProxySettings;->values()[Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v1}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v1}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v1}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v1}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/android/server/net/IpConfigStore;->-android-net-IpConfiguration$ProxySettingsSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/android/server/net/DelayedDiskWrite;

    invoke-direct {v0}, Lcom/android/server/net/DelayedDiskWrite;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/net/IpConfigStore;-><init>(Lcom/android/server/net/DelayedDiskWrite;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/android/server/net/DelayedDiskWrite;)V
    .locals 0
    .param p1, "writer"    # Lcom/android/server/net/DelayedDiskWrite;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/server/net/IpConfigStore;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    .line 67
    return-void
.end method

.method protected static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 352
    const-string/jumbo v0, "IpConfigStore"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    return-void
.end method

.method protected static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 348
    const-string/jumbo v0, "IpConfigStore"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    return-void
.end method

.method public static readIpAndProxyConfigurations(Ljava/io/InputStream;)Landroid/util/SparseArray;
    .locals 29
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/net/IpConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    new-instance v17, Landroid/util/SparseArray;

    invoke-direct/range {v17 .. v17}, Landroid/util/SparseArray;-><init>()V

    .line 194
    .local v17, "networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/IpConfiguration;>;"
    const/4 v12, 0x0

    .line 196
    .local v12, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v13, Ljava/io/DataInputStream;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 198
    .end local v12    # "in":Ljava/io/DataInputStream;
    .local v13, "in":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v26

    .line 199
    .local v26, "version":I
    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1

    .line 200
    const-string/jumbo v27, "Bad version on IP configuration file, ignore read"

    invoke-static/range {v27 .. v27}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    const/16 v27, 0x0

    .line 337
    if-eqz v13, :cond_0

    .line 339
    :try_start_2
    invoke-virtual {v13}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 201
    :cond_0
    :goto_0
    return-object v27

    .line 340
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 308
    .end local v6    # "e":Ljava/lang/Exception;
    .local v3, "config":Landroid/net/IpConfiguration;
    .local v10, "id":I
    .local v14, "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .local v15, "key":Ljava/lang/String;
    .local v22, "proxyPort":I
    .local v23, "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .local v25, "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    :pswitch_0
    :try_start_3
    new-instance v20, Landroid/net/ProxyInfo;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v8}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 309
    .local v20, "proxyInfo":Landroid/net/ProxyInfo;
    move-object/from16 v0, v23

    iput-object v0, v3, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 310
    move-object/from16 v0, v20

    iput-object v0, v3, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    .line 205
    .end local v3    # "config":Landroid/net/IpConfiguration;
    .end local v10    # "id":I
    .end local v14    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .end local v15    # "key":Ljava/lang/String;
    .end local v20    # "proxyInfo":Landroid/net/ProxyInfo;
    .end local v22    # "proxyPort":I
    .end local v23    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .end local v25    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    :cond_1
    :goto_1
    const/4 v10, -0x1

    .line 207
    .restart local v10    # "id":I
    sget-object v14, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    .line 208
    .restart local v14    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    sget-object v23, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    .line 209
    .restart local v23    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    new-instance v25, Landroid/net/StaticIpConfiguration;

    invoke-direct/range {v25 .. v25}, Landroid/net/StaticIpConfiguration;-><init>()V

    .line 210
    .restart local v25    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    const/16 v19, 0x0

    .line 211
    .local v19, "proxyHost":Ljava/lang/String;
    const/16 v18, 0x0

    .line 212
    .local v18, "pacFileUrl":Ljava/lang/String;
    const/16 v22, -0x1

    .line 213
    .restart local v22    # "proxyPort":I
    const/4 v8, 0x0

    .line 217
    .end local v18    # "pacFileUrl":Ljava/lang/String;
    .end local v19    # "proxyHost":Ljava/lang/String;
    :goto_2
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v15

    .line 219
    .restart local v15    # "key":Ljava/lang/String;
    :try_start_4
    const-string/jumbo v27, "id"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2

    .line 220
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    goto :goto_2

    .line 221
    :cond_2
    const-string/jumbo v27, "ipAssignment"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_3

    .line 222
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/net/IpConfiguration$IpAssignment;->valueOf(Ljava/lang/String;)Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v14

    goto :goto_2

    .line 223
    :cond_3
    const-string/jumbo v27, "linkAddress"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 224
    new-instance v16, Landroid/net/LinkAddress;

    .line 225
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v27

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v28

    .line 224
    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 226
    .local v16, "linkAddr":Landroid/net/LinkAddress;
    invoke-virtual/range {v16 .. v16}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v27

    move-object/from16 v0, v27

    instance-of v0, v0, Ljava/net/Inet4Address;

    move/from16 v27, v0

    if-eqz v27, :cond_5

    .line 227
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    move-object/from16 v27, v0

    if-nez v27, :cond_5

    .line 228
    move-object/from16 v0, v16

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 278
    .end local v16    # "linkAddr":Landroid/net/LinkAddress;
    :catch_1
    move-exception v7

    .line 279
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    :try_start_5
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Ignore invalid address while reading"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 333
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .end local v10    # "id":I
    .end local v14    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .end local v15    # "key":Ljava/lang/String;
    .end local v22    # "proxyPort":I
    .end local v23    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .end local v25    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .end local v26    # "version":I
    :catch_2
    move-exception v11

    .local v11, "ignore":Ljava/io/EOFException;
    move-object v12, v13

    .line 337
    .end local v13    # "in":Ljava/io/DataInputStream;
    :goto_3
    if-eqz v12, :cond_4

    .line 339
    :try_start_6
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 344
    .end local v11    # "ignore":Ljava/io/EOFException;
    :cond_4
    :goto_4
    return-object v17

    .line 230
    .restart local v10    # "id":I
    .restart local v13    # "in":Ljava/io/DataInputStream;
    .restart local v14    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .restart local v15    # "key":Ljava/lang/String;
    .restart local v16    # "linkAddr":Landroid/net/LinkAddress;
    .restart local v22    # "proxyPort":I
    .restart local v23    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .restart local v25    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .restart local v26    # "version":I
    :cond_5
    :try_start_7
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Non-IPv4 or duplicate address: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 334
    .end local v10    # "id":I
    .end local v14    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .end local v15    # "key":Ljava/lang/String;
    .end local v16    # "linkAddr":Landroid/net/LinkAddress;
    .end local v22    # "proxyPort":I
    .end local v23    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .end local v25    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .end local v26    # "version":I
    :catch_3
    move-exception v5

    .local v5, "e":Ljava/io/IOException;
    move-object v12, v13

    .line 335
    .end local v13    # "in":Ljava/io/DataInputStream;
    :goto_5
    :try_start_8
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Error parsing configuration: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 337
    if-eqz v12, :cond_4

    .line 339
    :try_start_9
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_4

    .line 340
    :catch_4
    move-exception v6

    .restart local v6    # "e":Ljava/lang/Exception;
    goto :goto_4

    .line 232
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v10    # "id":I
    .restart local v13    # "in":Ljava/io/DataInputStream;
    .restart local v14    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .restart local v15    # "key":Ljava/lang/String;
    .restart local v22    # "proxyPort":I
    .restart local v23    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .restart local v25    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .restart local v26    # "version":I
    :cond_6
    :try_start_a
    const-string/jumbo v27, "gateway"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_d

    .line 233
    const/4 v4, 0x0

    .line 234
    .local v4, "dest":Landroid/net/LinkAddress;
    const/4 v9, 0x0

    .line 235
    .local v9, "gateway":Ljava/net/InetAddress;
    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_9

    .line 237
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    .line 238
    .local v9, "gateway":Ljava/net/InetAddress;
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    move-object/from16 v27, v0

    if-nez v27, :cond_8

    .line 239
    move-object/from16 v0, v25

    iput-object v9, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/EOFException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_2

    .line 336
    .end local v4    # "dest":Landroid/net/LinkAddress;
    .end local v9    # "gateway":Ljava/net/InetAddress;
    .end local v10    # "id":I
    .end local v14    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .end local v15    # "key":Ljava/lang/String;
    .end local v22    # "proxyPort":I
    .end local v23    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .end local v25    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .end local v26    # "version":I
    :catchall_0
    move-exception v27

    move-object v12, v13

    .line 337
    .end local v13    # "in":Ljava/io/DataInputStream;
    :goto_6
    if-eqz v12, :cond_7

    .line 339
    :try_start_b
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 336
    :cond_7
    :goto_7
    throw v27

    .line 241
    .restart local v4    # "dest":Landroid/net/LinkAddress;
    .restart local v9    # "gateway":Ljava/net/InetAddress;
    .restart local v10    # "id":I
    .restart local v13    # "in":Ljava/io/DataInputStream;
    .restart local v14    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .restart local v15    # "key":Ljava/lang/String;
    .restart local v22    # "proxyPort":I
    .restart local v23    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .restart local v25    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .restart local v26    # "version":I
    :cond_8
    :try_start_c
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Duplicate gateway: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 244
    .local v9, "gateway":Ljava/net/InetAddress;
    :cond_9
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_a

    .line 245
    new-instance v4, Landroid/net/LinkAddress;

    .line 246
    .end local v4    # "dest":Landroid/net/LinkAddress;
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v27

    .line 247
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v28

    .line 245
    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-direct {v4, v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 249
    :cond_a
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_b

    .line 250
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    .line 252
    .end local v9    # "gateway":Ljava/net/InetAddress;
    :cond_b
    new-instance v24, Landroid/net/RouteInfo;

    move-object/from16 v0, v24

    invoke-direct {v0, v4, v9}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V

    .line 253
    .local v24, "route":Landroid/net/RouteInfo;
    invoke-virtual/range {v24 .. v24}, Landroid/net/RouteInfo;->isIPv4Default()Z

    move-result v27

    if-eqz v27, :cond_c

    .line 254
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    move-object/from16 v27, v0

    if-nez v27, :cond_c

    .line 255
    move-object/from16 v0, v25

    iput-object v9, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    goto/16 :goto_2

    .line 257
    :cond_c
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Non-IPv4 default or duplicate route: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 260
    .end local v24    # "route":Landroid/net/RouteInfo;
    :cond_d
    const-string/jumbo v27, "dns"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_e

    .line 261
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    .line 262
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v28

    .line 261
    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 263
    :cond_e
    const-string/jumbo v27, "proxySettings"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_f

    .line 264
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/net/IpConfiguration$ProxySettings;->valueOf(Ljava/lang/String;)Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v23

    goto/16 :goto_2

    .line 265
    :cond_f
    const-string/jumbo v27, "proxyHost"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_10

    .line 266
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v19

    .local v19, "proxyHost":Ljava/lang/String;
    goto/16 :goto_2

    .line 267
    .end local v19    # "proxyHost":Ljava/lang/String;
    :cond_10
    const-string/jumbo v27, "proxyPort"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_11

    .line 268
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v22

    goto/16 :goto_2

    .line 269
    :cond_11
    const-string/jumbo v27, "proxyPac"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_12

    .line 270
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v18

    .local v18, "pacFileUrl":Ljava/lang/String;
    goto/16 :goto_2

    .line 271
    .end local v18    # "pacFileUrl":Ljava/lang/String;
    :cond_12
    const-string/jumbo v27, "exclusionList"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_13

    .line 272
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    .local v8, "exclusionList":Ljava/lang/String;
    goto/16 :goto_2

    .line 273
    .end local v8    # "exclusionList":Ljava/lang/String;
    :cond_13
    const-string/jumbo v27, "eos"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/EOFException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result v27

    if-eqz v27, :cond_14

    .line 283
    const/16 v27, -0x1

    move/from16 v0, v27

    if-eq v10, v0, :cond_1

    .line 284
    :try_start_d
    new-instance v3, Landroid/net/IpConfiguration;

    invoke-direct {v3}, Landroid/net/IpConfiguration;-><init>()V

    .line 285
    .restart local v3    # "config":Landroid/net/IpConfiguration;
    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 287
    invoke-static {}, Lcom/android/server/net/IpConfigStore;->-getandroid-net-IpConfiguration$IpAssignmentSwitchesValues()[I

    move-result-object v27

    invoke-virtual {v14}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result v28

    aget v27, v27, v28

    packed-switch v27, :pswitch_data_0

    .line 300
    const-string/jumbo v27, "Ignore invalid ip assignment while reading."

    invoke-static/range {v27 .. v27}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 301
    sget-object v27, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    move-object/from16 v0, v27

    iput-object v0, v3, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 305
    :goto_8
    invoke-static {}, Lcom/android/server/net/IpConfigStore;->-getandroid-net-IpConfiguration$ProxySettingsSwitchesValues()[I

    move-result-object v27

    invoke-virtual/range {v23 .. v23}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v28

    aget v27, v27, v28

    packed-switch v27, :pswitch_data_1

    .line 325
    const-string/jumbo v27, "Ignore invalid proxy settings while reading"

    invoke-static/range {v27 .. v27}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 326
    sget-object v27, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v27

    iput-object v0, v3, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;
    :try_end_d
    .catch Ljava/io/EOFException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_1

    .line 276
    .end local v3    # "config":Landroid/net/IpConfiguration;
    :cond_14
    :try_start_e
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Ignore unknown key "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "while reading"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/EOFException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_2

    .line 289
    .restart local v3    # "config":Landroid/net/IpConfiguration;
    :pswitch_1
    :try_start_f
    move-object/from16 v0, v25

    iput-object v0, v3, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 290
    iput-object v14, v3, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_8

    .line 293
    :pswitch_2
    iput-object v14, v3, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_8

    .line 296
    :pswitch_3
    const-string/jumbo v27, "BUG: Found UNASSIGNED IP on file, use DHCP"

    invoke-static/range {v27 .. v27}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 297
    sget-object v27, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    move-object/from16 v0, v27

    iput-object v0, v3, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_8

    .line 313
    :pswitch_4
    new-instance v21, Landroid/net/ProxyInfo;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;)V

    .line 314
    .local v21, "proxyPacProperties":Landroid/net/ProxyInfo;
    move-object/from16 v0, v23

    iput-object v0, v3, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 315
    move-object/from16 v0, v21

    iput-object v0, v3, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    goto/16 :goto_1

    .line 318
    .end local v21    # "proxyPacProperties":Landroid/net/ProxyInfo;
    :pswitch_5
    move-object/from16 v0, v23

    iput-object v0, v3, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    goto/16 :goto_1

    .line 321
    :pswitch_6
    const-string/jumbo v27, "BUG: Found UNASSIGNED proxy on file, use NONE"

    invoke-static/range {v27 .. v27}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 322
    sget-object v27, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v27

    iput-object v0, v3, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;
    :try_end_f
    .catch Ljava/io/EOFException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_1

    .line 340
    .end local v3    # "config":Landroid/net/IpConfiguration;
    .end local v10    # "id":I
    .end local v13    # "in":Ljava/io/DataInputStream;
    .end local v14    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .end local v15    # "key":Ljava/lang/String;
    .end local v22    # "proxyPort":I
    .end local v23    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .end local v25    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .end local v26    # "version":I
    .restart local v11    # "ignore":Ljava/io/EOFException;
    :catch_5
    move-exception v6

    .restart local v6    # "e":Ljava/lang/Exception;
    goto/16 :goto_4

    .end local v6    # "e":Ljava/lang/Exception;
    .end local v11    # "ignore":Ljava/io/EOFException;
    :catch_6
    move-exception v6

    .restart local v6    # "e":Ljava/lang/Exception;
    goto/16 :goto_7

    .line 336
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v27

    goto/16 :goto_6

    .line 333
    .restart local v12    # "in":Ljava/io/DataInputStream;
    :catch_7
    move-exception v11

    .restart local v11    # "ignore":Ljava/io/EOFException;
    goto/16 :goto_3

    .line 334
    .end local v11    # "ignore":Ljava/io/EOFException;
    :catch_8
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto/16 :goto_5

    .line 287
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 305
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public static readIpAndProxyConfigurations(Ljava/lang/String;)Landroid/util/SparseArray;
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/net/IpConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .local v0, "bufferedInputStream":Ljava/io/BufferedInputStream;
    invoke-static {v0}, Lcom/android/server/net/IpConfigStore;->readIpAndProxyConfigurations(Ljava/io/InputStream;)Landroid/util/SparseArray;

    move-result-object v2

    return-object v2

    .line 182
    .end local v0    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :catch_0
    move-exception v1

    .line 185
    .local v1, "e":Ljava/io/FileNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error opening configuration file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 186
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    return-object v2
.end method

.method public static writeConfig(Ljava/io/DataOutputStream;ILandroid/net/IpConfiguration;)Z
    .locals 11
    .param p0, "out"    # Ljava/io/DataOutputStream;
    .param p1, "configKey"    # I
    .param p2, "config"    # Landroid/net/IpConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    const/4 v8, 0x0

    .line 79
    .local v8, "written":Z
    :try_start_0
    invoke-static {}, Lcom/android/server/net/IpConfigStore;->-getandroid-net-IpConfiguration$IpAssignmentSwitchesValues()[I

    move-result-object v9

    iget-object v10, p2, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v10}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 113
    const-string/jumbo v9, "Ignore invalid ip assignment while writing"

    invoke-static {v9}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 117
    :goto_0
    :pswitch_0
    invoke-static {}, Lcom/android/server/net/IpConfigStore;->-getandroid-net-IpConfiguration$ProxySettingsSwitchesValues()[I

    move-result-object v9

    iget-object v10, p2, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v10}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_1

    .line 150
    const-string/jumbo v9, "Ignore invalid proxy settings while writing"

    invoke-static {v9}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 154
    :goto_1
    :pswitch_1
    if-eqz v8, :cond_0

    .line 155
    const-string/jumbo v9, "id"

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :cond_0
    :goto_2
    const-string/jumbo v9, "eos"

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 163
    return v8

    .line 81
    :pswitch_2
    :try_start_1
    const-string/jumbo v9, "ipAssignment"

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 82
    iget-object v9, p2, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v9}, Landroid/net/IpConfiguration$IpAssignment;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 83
    iget-object v7, p2, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 84
    .local v7, "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    if-eqz v7, :cond_3

    .line 85
    iget-object v9, v7, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v9, :cond_1

    .line 86
    iget-object v4, v7, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    .line 87
    .local v4, "ipAddress":Landroid/net/LinkAddress;
    const-string/jumbo v9, "linkAddress"

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v9

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 91
    .end local v4    # "ipAddress":Landroid/net/LinkAddress;
    :cond_1
    iget-object v9, v7, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-eqz v9, :cond_2

    .line 92
    const-string/jumbo v9, "gateway"

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 93
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 94
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 95
    iget-object v9, v7, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 97
    :cond_2
    iget-object v9, v7, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "inetAddr$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 98
    .local v2, "inetAddr":Ljava/net/InetAddress;
    const-string/jumbo v9, "dns"

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 158
    .end local v2    # "inetAddr":Ljava/net/InetAddress;
    .end local v3    # "inetAddr$iterator":Ljava/util/Iterator;
    .end local v7    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failure in writing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 102
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v7    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    :cond_3
    const/4 v8, 0x1

    .line 103
    goto/16 :goto_0

    .line 105
    .end local v7    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    :pswitch_3
    :try_start_2
    const-string/jumbo v9, "ipAssignment"

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 106
    iget-object v9, p2, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v9}, Landroid/net/IpConfiguration$IpAssignment;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 107
    const/4 v8, 0x1

    .line 108
    goto/16 :goto_0

    .line 119
    :pswitch_4
    iget-object v6, p2, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    .line 120
    .local v6, "proxyProperties":Landroid/net/ProxyInfo;
    invoke-virtual {v6}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "exclusionList":Ljava/lang/String;
    const-string/jumbo v9, "proxySettings"

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 122
    iget-object v9, p2, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v9}, Landroid/net/IpConfiguration$ProxySettings;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 123
    const-string/jumbo v9, "proxyHost"

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v6}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 125
    const-string/jumbo v9, "proxyPort"

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v6}, Landroid/net/ProxyInfo;->getPort()I

    move-result v9

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 127
    if-eqz v1, :cond_4

    .line 128
    const-string/jumbo v9, "exclusionList"

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 131
    :cond_4
    const/4 v8, 0x1

    .line 132
    goto/16 :goto_1

    .line 134
    .end local v1    # "exclusionList":Ljava/lang/String;
    .end local v6    # "proxyProperties":Landroid/net/ProxyInfo;
    :pswitch_5
    iget-object v5, p2, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    .line 135
    .local v5, "proxyPacProperties":Landroid/net/ProxyInfo;
    const-string/jumbo v9, "proxySettings"

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 136
    iget-object v9, p2, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v9}, Landroid/net/IpConfiguration$ProxySettings;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 137
    const-string/jumbo v9, "proxyPac"

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v5}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 139
    const/4 v8, 0x1

    .line 140
    goto/16 :goto_1

    .line 142
    .end local v5    # "proxyPacProperties":Landroid/net/ProxyInfo;
    :pswitch_6
    const-string/jumbo v9, "proxySettings"

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 143
    iget-object v9, p2, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v9}, Landroid/net/IpConfiguration$ProxySettings;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 144
    const/4 v8, 0x1

    .line 145
    goto/16 :goto_1

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 117
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public writeIpAndProxyConfigurations(Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/net/IpConfiguration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p2, "networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/IpConfiguration;>;"
    iget-object v0, p0, Lcom/android/server/net/IpConfigStore;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    new-instance v1, Lcom/android/server/net/IpConfigStore$1;

    invoke-direct {v1, p0, p2}, Lcom/android/server/net/IpConfigStore$1;-><init>(Lcom/android/server/net/IpConfigStore;Landroid/util/SparseArray;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/server/net/DelayedDiskWrite;->write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;)V

    .line 176
    return-void
.end method
