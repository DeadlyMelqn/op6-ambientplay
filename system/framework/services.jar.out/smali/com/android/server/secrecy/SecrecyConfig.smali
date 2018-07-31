.class public Lcom/android/server/secrecy/SecrecyConfig;
.super Ljava/lang/Object;
.source "SecrecyConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/secrecy/SecrecyConfig$MyHandler;
    }
.end annotation


# static fields
.field private static final ENCRYPT_ADB_PROP:Ljava/lang/String; = "encrypt_adb"

.field private static final ENCRYPT_APP_PROP:Ljava/lang/String; = "encrypt_app"

.field private static final ENCRYPT_LOG_PROP:Ljava/lang/String; = "encrypt_log"

.field private static final IMEI_PROP:Ljava/lang/String; = "imei"

.field private static final LAST_DOWNLODE_TIME:Ljava/lang/String; = "last_download_time"

.field private static final MSG_LOAD_CONFIG:I = 0x1

.field private static final MSG_NOTIFY_CONFIG_CHANGED:I = 0x3

.field private static final MSG_SAVE_CONFIG:I = 0x2

.field private static final RC4_KEY_PROP:Ljava/lang/String; = "rc4_key"

.field private static final TAG:Ljava/lang/String; = "SecrecyService.SecrecyConfig"

.field private static sInstance:Lcom/android/server/secrecy/SecrecyConfig;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field private final ENCRYPT_CONFIG_PATH:Ljava/lang/String;

.field private mConfigImei:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

.field private mRC4Key:[B

.field private final mRC4Sbox:[B


# direct methods
.method static synthetic -get0(Lcom/android/server/secrecy/SecrecyConfig;)Lcom/android/server/secrecy/policy/PolicyManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/secrecy/SecrecyConfig;

    .prologue
    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyConfig;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/secrecy/SecrecyConfig;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/secrecy/SecrecyConfig;

    .prologue
    invoke-direct {p0}, Lcom/android/server/secrecy/SecrecyConfig;->loadSecrecyConfigInternal()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/secrecy/SecrecyConfig;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/secrecy/SecrecyConfig;

    .prologue
    invoke-direct {p0}, Lcom/android/server/secrecy/SecrecyConfig;->saveSecrecyConfigInternal()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/secrecy/SecrecyConfig;->sInstanceLock:Ljava/lang/Object;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string/jumbo v0, "/persist/engineermode_config"

    iput-object v0, p0, Lcom/android/server/secrecy/SecrecyConfig;->ENCRYPT_CONFIG_PATH:Ljava/lang/String;

    .line 61
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/secrecy/SecrecyConfig;->mRC4Sbox:[B

    .line 43
    return-void
.end method

.method public static getInstance()Lcom/android/server/secrecy/SecrecyConfig;
    .locals 2

    .prologue
    .line 96
    sget-object v1, Lcom/android/server/secrecy/SecrecyConfig;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 97
    :try_start_0
    sget-object v0, Lcom/android/server/secrecy/SecrecyConfig;->sInstance:Lcom/android/server/secrecy/SecrecyConfig;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/android/server/secrecy/SecrecyConfig;

    invoke-direct {v0}, Lcom/android/server/secrecy/SecrecyConfig;-><init>()V

    sput-object v0, Lcom/android/server/secrecy/SecrecyConfig;->sInstance:Lcom/android/server/secrecy/SecrecyConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 101
    sget-object v0, Lcom/android/server/secrecy/SecrecyConfig;->sInstance:Lcom/android/server/secrecy/SecrecyConfig;

    return-object v0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private loadSecrecyConfigInternal()V
    .locals 25

    .prologue
    .line 153
    invoke-direct/range {p0 .. p0}, Lcom/android/server/secrecy/SecrecyConfig;->readConfig()Ljava/lang/String;

    move-result-object v7

    .line 155
    .local v7, "config":Ljava/lang/String;
    if-nez v7, :cond_0

    .line 156
    return-void

    .line 159
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/secrecy/SecrecyConfig;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/secrecy/policy/PolicyManager;->getDefaultPolicy()Z

    move-result v8

    .line 160
    .local v8, "defaultPolicy":Z
    move/from16 v17, v8

    .line 161
    .local v17, "isEncryptLog":Z
    move/from16 v16, v8

    .line 162
    .local v16, "isEncryptApp":Z
    move v15, v8

    .line 163
    .local v15, "isEncryptAdb":Z
    new-instance v20, Landroid/util/ArrayMap;

    invoke-direct/range {v20 .. v20}, Landroid/util/ArrayMap;-><init>()V

    .line 164
    .local v20, "policyStateMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    new-instance v21, Ljava/util/Properties;

    invoke-direct/range {v21 .. v21}, Ljava/util/Properties;-><init>()V

    .line 165
    .local v21, "properties":Ljava/util/Properties;
    const/4 v12, 0x0

    .line 167
    .local v12, "input":Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v13, Ljava/io/ByteArrayInputStream;

    const-string/jumbo v22, "utf-8"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v13, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    .end local v12    # "input":Ljava/io/ByteArrayInputStream;
    .local v13, "input":Ljava/io/ByteArrayInputStream;
    :try_start_1
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 170
    const-string/jumbo v22, "rc4_key"

    invoke-virtual/range {v21 .. v22}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 171
    .local v4, "RC4_key_hex":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 172
    const-string/jumbo v22, "SecrecyService.SecrecyConfig"

    const-string/jumbo v23, "RC4Key is null, use defaultPolicy"

    invoke-static/range {v22 .. v23}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/secrecy/SecrecyConfig;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Lcom/android/server/secrecy/policy/PolicyManager;->createPolicyState(Ljava/util/Map;Z)V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/secrecy/SecrecyConfig;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    move-object/from16 v22, v0

    const-string/jumbo v23, "load_config"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/server/secrecy/policy/PolicyManager;->updatePolicyState(Ljava/util/Map;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 226
    if-eqz v13, :cond_1

    .line 228
    :try_start_2
    invoke-virtual {v13}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 175
    :cond_1
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v9

    .local v9, "e":Ljava/io/IOException;
    goto :goto_0

    .line 178
    .end local v9    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_3
    invoke-static {v4}, Landroid/secrecy/RC4;->decodeHexRC4(Ljava/lang/String;)[B

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/secrecy/SecrecyConfig;->mRC4Key:[B

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/secrecy/SecrecyConfig;->mRC4Sbox:[B

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/secrecy/SecrecyConfig;->mRC4Key:[B

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Landroid/secrecy/RC4;->mixSbox([B[B)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 187
    :try_start_4
    const-string/jumbo v22, "imei"

    invoke-virtual/range {v21 .. v22}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 188
    .local v11, "imei":Ljava/lang/String;
    if-eqz v11, :cond_3

    .line 189
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/secrecy/SecrecyConfig;->mConfigImei:Ljava/lang/String;

    .line 192
    :cond_3
    const-string/jumbo v22, "encrypt_log"

    invoke-virtual/range {v21 .. v22}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 193
    .local v19, "log":Ljava/lang/String;
    if-eqz v19, :cond_4

    .line 194
    const-string/jumbo v22, "true"

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 197
    :cond_4
    const-string/jumbo v22, "encrypt_app"

    invoke-virtual/range {v21 .. v22}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 198
    .local v6, "app":Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 199
    const-string/jumbo v22, "true"

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 202
    :cond_5
    const-string/jumbo v22, "encrypt_adb"

    invoke-virtual/range {v21 .. v22}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 203
    .local v5, "adb":Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 204
    const-string/jumbo v22, "true"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 209
    :cond_6
    invoke-static {}, Lcom/android/server/secrecy/policy/util/Utils;->isFlashedInternal()Z

    move-result v22

    if-eqz v22, :cond_a

    .line 210
    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const/16 v22, 0x2

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const/16 v22, 0x4

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/secrecy/SecrecyConfig;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    move-object/from16 v22, v0

    const-string/jumbo v23, "load_config"

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/secrecy/policy/PolicyManager;->updatePolicyState(Ljava/util/Map;Ljava/lang/String;Z)V

    .line 221
    const-string/jumbo v22, "last_download_time"

    invoke-virtual/range {v21 .. v22}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 222
    .local v18, "lastDownloadTimeInMillis":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/secrecy/SecrecyConfig;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/secrecy/policy/PolicyManager;->setLastDownloadTimeInMills(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 226
    if-eqz v13, :cond_7

    .line 228
    :try_start_5
    invoke-virtual {v13}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_7
    :goto_2
    move-object v12, v13

    .line 234
    .end local v4    # "RC4_key_hex":Ljava/lang/String;
    .end local v5    # "adb":Ljava/lang/String;
    .end local v6    # "app":Ljava/lang/String;
    .end local v11    # "imei":Ljava/lang/String;
    .end local v13    # "input":Ljava/io/ByteArrayInputStream;
    .end local v18    # "lastDownloadTimeInMillis":Ljava/lang/String;
    .end local v19    # "log":Ljava/lang/String;
    :cond_8
    :goto_3
    return-void

    .line 180
    .restart local v4    # "RC4_key_hex":Ljava/lang/String;
    .restart local v13    # "input":Ljava/io/ByteArrayInputStream;
    :catch_1
    move-exception v10

    .line 181
    .local v10, "e":Ljava/lang/IllegalArgumentException;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/secrecy/SecrecyConfig;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Lcom/android/server/secrecy/policy/PolicyManager;->createPolicyState(Ljava/util/Map;Z)V

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/secrecy/SecrecyConfig;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    move-object/from16 v22, v0

    const-string/jumbo v23, "load_config"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/server/secrecy/policy/PolicyManager;->updatePolicyState(Ljava/util/Map;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 226
    if-eqz v13, :cond_9

    .line 228
    :try_start_7
    invoke-virtual {v13}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 183
    :cond_9
    :goto_4
    return-void

    .line 229
    :catch_2
    move-exception v9

    .restart local v9    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 214
    .end local v9    # "e":Ljava/io/IOException;
    .end local v10    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v5    # "adb":Ljava/lang/String;
    .restart local v6    # "app":Ljava/lang/String;
    .restart local v11    # "imei":Ljava/lang/String;
    .restart local v19    # "log":Ljava/lang/String;
    :cond_a
    const/16 v22, 0x1

    :try_start_8
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const/16 v22, 0x2

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const/16 v22, 0x4

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_1

    .line 223
    .end local v4    # "RC4_key_hex":Ljava/lang/String;
    .end local v5    # "adb":Ljava/lang/String;
    .end local v6    # "app":Ljava/lang/String;
    .end local v11    # "imei":Ljava/lang/String;
    .end local v19    # "log":Ljava/lang/String;
    :catch_3
    move-exception v14

    .local v14, "io":Ljava/io/IOException;
    move-object v12, v13

    .line 226
    .end local v13    # "input":Ljava/io/ByteArrayInputStream;
    :goto_5
    if-eqz v12, :cond_8

    .line 228
    :try_start_9
    invoke-virtual {v12}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_3

    .line 229
    :catch_4
    move-exception v9

    .restart local v9    # "e":Ljava/io/IOException;
    goto :goto_3

    .end local v9    # "e":Ljava/io/IOException;
    .end local v14    # "io":Ljava/io/IOException;
    .restart local v4    # "RC4_key_hex":Ljava/lang/String;
    .restart local v5    # "adb":Ljava/lang/String;
    .restart local v6    # "app":Ljava/lang/String;
    .restart local v11    # "imei":Ljava/lang/String;
    .restart local v13    # "input":Ljava/io/ByteArrayInputStream;
    .restart local v18    # "lastDownloadTimeInMillis":Ljava/lang/String;
    .restart local v19    # "log":Ljava/lang/String;
    :catch_5
    move-exception v9

    .restart local v9    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 225
    .end local v4    # "RC4_key_hex":Ljava/lang/String;
    .end local v5    # "adb":Ljava/lang/String;
    .end local v6    # "app":Ljava/lang/String;
    .end local v9    # "e":Ljava/io/IOException;
    .end local v11    # "imei":Ljava/lang/String;
    .end local v13    # "input":Ljava/io/ByteArrayInputStream;
    .end local v18    # "lastDownloadTimeInMillis":Ljava/lang/String;
    .end local v19    # "log":Ljava/lang/String;
    .restart local v12    # "input":Ljava/io/ByteArrayInputStream;
    :catchall_0
    move-exception v22

    .line 226
    .end local v12    # "input":Ljava/io/ByteArrayInputStream;
    :goto_6
    if-eqz v12, :cond_b

    .line 228
    :try_start_a
    invoke-virtual {v12}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 225
    :cond_b
    :goto_7
    throw v22

    .line 229
    :catch_6
    move-exception v9

    .restart local v9    # "e":Ljava/io/IOException;
    goto :goto_7

    .line 225
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v13    # "input":Ljava/io/ByteArrayInputStream;
    :catchall_1
    move-exception v22

    move-object v12, v13

    .end local v13    # "input":Ljava/io/ByteArrayInputStream;
    .local v12, "input":Ljava/io/ByteArrayInputStream;
    goto :goto_6

    .line 223
    .local v12, "input":Ljava/io/ByteArrayInputStream;
    :catch_7
    move-exception v14

    .restart local v14    # "io":Ljava/io/IOException;
    goto :goto_5
.end method

.method private readConfig()Ljava/lang/String;
    .locals 9

    .prologue
    .line 276
    new-instance v2, Ljava/io/File;

    const-string/jumbo v7, "/persist/engineermode_config"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 278
    .local v3, "reader":Ljava/io/BufferedReader;
    const-string/jumbo v6, ""

    .line 280
    .local v6, "tempString":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 282
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "temp":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 283
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    goto :goto_0

    .line 288
    :cond_0
    if-eqz v4, :cond_1

    .line 290
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    move-object v3, v4

    .line 297
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "temp":Ljava/lang/String;
    :cond_2
    :goto_2
    return-object v6

    .line 291
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "temp":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 292
    .local v1, "e1":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 285
    .end local v1    # "e1":Ljava/io/IOException;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "temp":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 286
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 288
    if-eqz v3, :cond_2

    .line 290
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 291
    :catch_2
    move-exception v1

    .line 292
    .restart local v1    # "e1":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 287
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 288
    :goto_4
    if-eqz v3, :cond_3

    .line 290
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 287
    :cond_3
    :goto_5
    throw v7

    .line 291
    :catch_3
    move-exception v1

    .line 292
    .restart local v1    # "e1":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 287
    .end local v1    # "e1":Ljava/io/IOException;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 285
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method private saveSecrecyConfigInternal()V
    .locals 12

    .prologue
    .line 237
    iget-object v9, p0, Lcom/android/server/secrecy/SecrecyConfig;->mRC4Key:[B

    if-nez v9, :cond_0

    .line 238
    const-string/jumbo v9, "SecrecyService.SecrecyConfig"

    const-string/jumbo v10, "RC4Key is null, skip save action"

    invoke-static {v9, v10}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return-void

    .line 241
    :cond_0
    new-instance v8, Ljava/util/Properties;

    invoke-direct {v8}, Ljava/util/Properties;-><init>()V

    .line 242
    .local v8, "properties":Ljava/util/Properties;
    const/4 v6, 0x0

    .line 245
    .local v6, "output":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    .end local v6    # "output":Ljava/io/ByteArrayOutputStream;
    .local v7, "output":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    iget-object v9, p0, Lcom/android/server/secrecy/SecrecyConfig;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/server/secrecy/policy/PolicyManager;->getPolicyState(I)Z

    move-result v5

    .line 247
    .local v5, "isEncryptLog":Z
    iget-object v9, p0, Lcom/android/server/secrecy/SecrecyConfig;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/android/server/secrecy/policy/PolicyManager;->getPolicyState(I)Z

    move-result v4

    .line 248
    .local v4, "isEncryptApp":Z
    iget-object v9, p0, Lcom/android/server/secrecy/SecrecyConfig;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/android/server/secrecy/policy/PolicyManager;->getPolicyState(I)Z

    move-result v3

    .line 249
    .local v3, "isEncryptAdb":Z
    iget-object v9, p0, Lcom/android/server/secrecy/SecrecyConfig;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    invoke-virtual {v9}, Lcom/android/server/secrecy/policy/PolicyManager;->getCurrentDownloadTimeInMills()Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "currentDownloadTimeInMillis":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/secrecy/SecrecyConfig;->mConfigImei:Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 252
    const-string/jumbo v9, "imei"

    iget-object v10, p0, Lcom/android/server/secrecy/SecrecyConfig;->mConfigImei:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 254
    :cond_1
    const-string/jumbo v9, "rc4_key"

    iget-object v10, p0, Lcom/android/server/secrecy/SecrecyConfig;->mRC4Key:[B

    invoke-static {v10}, Landroid/secrecy/RC4;->encodeHex([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 255
    const-string/jumbo v10, "encrypt_log"

    if-eqz v5, :cond_4

    const-string/jumbo v9, "true"

    :goto_0
    invoke-virtual {v8, v10, v9}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 256
    const-string/jumbo v10, "encrypt_app"

    if-eqz v4, :cond_5

    const-string/jumbo v9, "true"

    :goto_1
    invoke-virtual {v8, v10, v9}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 257
    const-string/jumbo v10, "encrypt_adb"

    if-eqz v3, :cond_6

    const-string/jumbo v9, "true"

    :goto_2
    invoke-virtual {v8, v10, v9}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 258
    const-string/jumbo v9, "last_download_time"

    invoke-virtual {v8, v9, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 259
    const/4 v9, 0x0

    invoke-virtual {v8, v7, v9}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 261
    const-string/jumbo v9, "utf-8"

    invoke-virtual {v7, v9}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/secrecy/SecrecyConfig;->writeConfig(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 265
    if-eqz v7, :cond_2

    .line 267
    :try_start_2
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_3
    move-object v6, v7

    .line 273
    .end local v0    # "currentDownloadTimeInMillis":Ljava/lang/String;
    .end local v3    # "isEncryptAdb":Z
    .end local v4    # "isEncryptApp":Z
    .end local v5    # "isEncryptLog":Z
    .end local v7    # "output":Ljava/io/ByteArrayOutputStream;
    :cond_3
    :goto_4
    return-void

    .line 255
    .restart local v0    # "currentDownloadTimeInMillis":Ljava/lang/String;
    .restart local v3    # "isEncryptAdb":Z
    .restart local v4    # "isEncryptApp":Z
    .restart local v5    # "isEncryptLog":Z
    .restart local v7    # "output":Ljava/io/ByteArrayOutputStream;
    :cond_4
    :try_start_3
    const-string/jumbo v9, "false"

    goto :goto_0

    .line 256
    :cond_5
    const-string/jumbo v9, "false"

    goto :goto_1

    .line 257
    :cond_6
    const-string/jumbo v9, "false"
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 268
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_3

    .line 262
    .end local v0    # "currentDownloadTimeInMillis":Ljava/lang/String;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "isEncryptAdb":Z
    .end local v4    # "isEncryptApp":Z
    .end local v5    # "isEncryptLog":Z
    .end local v7    # "output":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "output":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v2

    .line 265
    .end local v6    # "output":Ljava/io/ByteArrayOutputStream;
    .local v2, "io":Ljava/io/IOException;
    :goto_5
    if-eqz v6, :cond_3

    .line 267
    :try_start_4
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .line 268
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 264
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "io":Ljava/io/IOException;
    .restart local v6    # "output":Ljava/io/ByteArrayOutputStream;
    :catchall_0
    move-exception v9

    .line 265
    .end local v6    # "output":Ljava/io/ByteArrayOutputStream;
    :goto_6
    if-eqz v6, :cond_7

    .line 267
    :try_start_5
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 264
    :cond_7
    :goto_7
    throw v9

    .line 268
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_7

    .line 264
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v7    # "output":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7    # "output":Ljava/io/ByteArrayOutputStream;
    .local v6, "output":Ljava/io/ByteArrayOutputStream;
    goto :goto_6

    .line 262
    .end local v6    # "output":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "output":Ljava/io/ByteArrayOutputStream;
    :catch_4
    move-exception v2

    .restart local v2    # "io":Ljava/io/IOException;
    move-object v6, v7

    .end local v7    # "output":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "output":Ljava/io/ByteArrayOutputStream;
    goto :goto_5
.end method

.method private writeConfig(Ljava/lang/String;)V
    .locals 7
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 303
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v5, "/persist/engineermode_config"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 304
    .local v0, "configFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 305
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 306
    :cond_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 307
    .local v3, "fileOutputStream":Ljava/io/FileOutputStream;
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 309
    .local v4, "str":Ljava/io/BufferedOutputStream;
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 311
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 312
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 313
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/FileDescriptor;->sync()V

    .line 314
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 321
    .end local v0    # "configFile":Ljava/io/File;
    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v4    # "str":Ljava/io/BufferedOutputStream;
    :goto_0
    return-void

    .line 310
    .restart local v0    # "configFile":Ljava/io/File;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "str":Ljava/io/BufferedOutputStream;
    :catchall_0
    move-exception v5

    .line 311
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 312
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 313
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/FileDescriptor;->sync()V

    .line 314
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 310
    throw v5
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 316
    .end local v0    # "configFile":Ljava/io/File;
    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v4    # "str":Ljava/io/BufferedOutputStream;
    :catch_0
    move-exception v1

    .line 317
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 318
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 319
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public calculateChallenge(J)Ljava/lang/String;
    .locals 5
    .param p1, "challenge"    # J

    .prologue
    const/4 v4, 0x0

    .line 138
    iget-object v2, p0, Lcom/android/server/secrecy/SecrecyConfig;->mRC4Key:[B

    if-nez v2, :cond_0

    .line 139
    const-string/jumbo v2, ""

    return-object v2

    .line 142
    :cond_0
    invoke-static {p1, p2}, Landroid/secrecy/RC4;->longToBytes(J)[B

    move-result-object v1

    .line 144
    .local v1, "challengeBytes":[B
    const/16 v2, 0x100

    new-array v0, v2, [B

    .line 145
    .local v0, "box":[B
    iget-object v2, p0, Lcom/android/server/secrecy/SecrecyConfig;->mRC4Sbox:[B

    iget-object v3, p0, Lcom/android/server/secrecy/SecrecyConfig;->mRC4Sbox:[B

    array-length v3, v3

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 147
    invoke-static {v0, v1}, Landroid/secrecy/RC4;->encrypt([B[B)V

    .line 149
    invoke-static {v1}, Landroid/secrecy/RC4;->encodeHex([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 325
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 326
    const-string/jumbo v0, "SecrecyConfig dump"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    mRC4Key  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/secrecy/SecrecyConfig;->mRC4Key:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    mRC4Sbox = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/secrecy/SecrecyConfig;->mRC4Sbox:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    mImei = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/secrecy/SecrecyConfig;->mConfigImei:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method public getSecrecyKey([B)Z
    .locals 3
    .param p1, "key"    # [B

    .prologue
    const/4 v2, 0x0

    .line 133
    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyConfig;->mRC4Sbox:[B

    iget-object v1, p0, Lcom/android/server/secrecy/SecrecyConfig;->mRC4Sbox:[B

    array-length v1, v1

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 134
    const/4 v0, 0x1

    return v0
.end method

.method public loadSecrecyConfig()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 118
    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyConfig;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyConfig;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 120
    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyConfig;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 122
    :cond_0
    return-void
.end method

.method public saveImei(Ljava/lang/String;)V
    .locals 0
    .param p1, "imei"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/server/secrecy/SecrecyConfig;->mConfigImei:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public saveRC4Key(Ljava/lang/String;)V
    .locals 1
    .param p1, "key_arg"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-static {p1}, Landroid/secrecy/RC4;->decodeHex(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/secrecy/SecrecyConfig;->mRC4Key:[B

    .line 126
    return-void
.end method

.method public saveSecrecyConfig(Ljava/util/Map;)V
    .locals 3
    .param p1, "map"    # Ljava/util/Map;

    .prologue
    const/4 v2, 0x2

    .line 110
    iget-object v1, p0, Lcom/android/server/secrecy/SecrecyConfig;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/android/server/secrecy/SecrecyConfig;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 112
    iget-object v1, p0, Lcom/android/server/secrecy/SecrecyConfig;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 113
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/secrecy/SecrecyConfig;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 115
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public setPolicyManager(Lcom/android/server/secrecy/policy/PolicyManager;Landroid/os/Looper;)V
    .locals 2
    .param p1, "policyManager"    # Lcom/android/server/secrecy/policy/PolicyManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/server/secrecy/SecrecyConfig;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    .line 106
    new-instance v0, Lcom/android/server/secrecy/SecrecyConfig$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/android/server/secrecy/SecrecyConfig$MyHandler;-><init>(Lcom/android/server/secrecy/SecrecyConfig;Landroid/os/Looper;Lcom/android/server/secrecy/SecrecyConfig$MyHandler;)V

    iput-object v0, p0, Lcom/android/server/secrecy/SecrecyConfig;->mHandler:Landroid/os/Handler;

    .line 107
    return-void
.end method
