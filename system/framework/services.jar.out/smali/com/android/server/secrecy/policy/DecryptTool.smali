.class public Lcom/android/server/secrecy/policy/DecryptTool;
.super Ljava/lang/Object;
.source "DecryptTool.java"


# static fields
.field private static final ENCRYPT_ADB_PROP:Ljava/lang/String; = "encrypt_adb"

.field private static final ENCRYPT_ALL_PROP:Ljava/lang/String; = "encrypt_all"

.field private static final ENCRYPT_APP_PROP:Ljava/lang/String; = "encrypt_app"

.field private static final ENCRYPT_LOG_PROP:Ljava/lang/String; = "encrypt_log"

.field private static final ENCRYPT_UNLOCK_TYPE:Ljava/lang/String; = "unlock_type"

.field private static final IMEI_PROP:Ljava/lang/String; = "imei"

.field private static final MODULUS:Ljava/lang/String; = "14o4ia2g027r2dcmf4mw9f1pvoifswti3i2x1fvtmxsqpjvjqj1ry3dvmlyuwn9lhxl03bgvxxo5sgj5opu1l8vov2jrdlaf3031z3drh72068omvyft11qdaszicxys2bjqi9sxl5z79mzy6dcmubwqyi7fr424okmq9wyxctpmni43ok5d2ac9v5dezpu68send5foga4xxnpckhuzcjhnb4y7ot4z0ypm9j3hb59ax8v7n4ed82p01xtmu73iajvjnxov4wfuni17mmhi9smsf3sak8q9k04no4u8f7um8h4qhqk3xww3nmohl4190hr2rwnsw5nw1qs7vh60adz8a94qkeerkvvkf2b6qznm3q5x2aa1e8u9fq4liav015vwx5xzfn64b"

.field private static final ONE_DAY_IN_MILLIS:J = 0x5265c00L

.field private static final PUBLIC_EXPONENT:Ljava/lang/String; = "1ekh"

.field private static final STAMP_PROP:Ljava/lang/String; = "stamp"

.field private static final TAG:Ljava/lang/String; = "SecrecyService.DecryptTool"

.field public static final UNLOCK_TYPE_ID:Ljava/lang/String; = "id"

.field public static final UNLOCK_TYPE_INTERNAL:Ljava/lang/String; = "internal"

.field public static final UNLOCK_TYPE_MAC:Ljava/lang/String; = "mac"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/secrecy/policy/PolicyManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "policyManager"    # Lcom/android/server/secrecy/policy/PolicyManager;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p2, p0, Lcom/android/server/secrecy/policy/DecryptTool;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    .line 49
    iput-object p1, p0, Lcom/android/server/secrecy/policy/DecryptTool;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method private verifySignature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "signatureStr"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x24

    const/4 v10, 0x0

    .line 227
    new-instance v2, Ljava/math/BigInteger;

    const-string/jumbo v8, "14o4ia2g027r2dcmf4mw9f1pvoifswti3i2x1fvtmxsqpjvjqj1ry3dvmlyuwn9lhxl03bgvxxo5sgj5opu1l8vov2jrdlaf3031z3drh72068omvyft11qdaszicxys2bjqi9sxl5z79mzy6dcmubwqyi7fr424okmq9wyxctpmni43ok5d2ac9v5dezpu68send5foga4xxnpckhuzcjhnb4y7ot4z0ypm9j3hb59ax8v7n4ed82p01xtmu73iajvjnxov4wfuni17mmhi9smsf3sak8q9k04no4u8f7um8h4qhqk3xww3nmohl4190hr2rwnsw5nw1qs7vh60adz8a94qkeerkvvkf2b6qznm3q5x2aa1e8u9fq4liav015vwx5xzfn64b"

    invoke-direct {v2, v8, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 228
    .local v2, "modulus":Ljava/math/BigInteger;
    new-instance v3, Ljava/math/BigInteger;

    const-string/jumbo v8, "1ekh"

    invoke-direct {v3, v8, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 229
    .local v3, "publicExponent":Ljava/math/BigInteger;
    invoke-static {v2, v3}, Lcom/android/server/secrecy/RSA;->initRsaPublicKey(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/security/PublicKey;

    move-result-object v4

    .line 233
    .local v4, "publicKey":Ljava/security/PublicKey;
    :try_start_0
    invoke-static {p2}, Landroid/secrecy/RC4;->decodeHex(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 239
    .local v6, "signature":[B
    invoke-static {v4, v6}, Lcom/android/server/secrecy/RSA;->decrypt(Ljava/security/PublicKey;[B)[B

    move-result-object v0

    .line 240
    .local v0, "deciphered":[B
    invoke-static {p1}, Lcom/android/server/secrecy/RSA;->shaDigest(Ljava/lang/String;)[B

    move-result-object v5

    .line 242
    .local v5, "sha":[B
    if-eqz v0, :cond_0

    if-nez v5, :cond_1

    .line 243
    :cond_0
    const-string/jumbo v8, "SecrecyService.DecryptTool"

    const-string/jumbo v9, "ERROR: Verify signature failed."

    invoke-static {v8, v9}, Lcom/android/server/secrecy/policy/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return v10

    .line 234
    .end local v0    # "deciphered":[B
    .end local v5    # "sha":[B
    .end local v6    # "signature":[B
    :catch_0
    move-exception v1

    .line 235
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v8, "SecrecyService.DecryptTool"

    const-string/jumbo v9, "ERROR: Signature is malformat."

    invoke-static {v8, v9}, Lcom/android/server/secrecy/policy/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    return v10

    .line 251
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "deciphered":[B
    .restart local v5    # "sha":[B
    .restart local v6    # "signature":[B
    :cond_1
    array-length v8, v0

    array-length v9, v5

    if-le v8, v9, :cond_2

    .line 252
    array-length v8, v5

    new-array v7, v8, [B

    .line 253
    .local v7, "trim":[B
    array-length v8, v0

    array-length v9, v5

    sub-int/2addr v8, v9

    array-length v9, v5

    invoke-static {v0, v8, v7, v10, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 258
    :goto_0
    invoke-static {v5, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    return v8

    .line 255
    .end local v7    # "trim":[B
    :cond_2
    move-object v7, v0

    .restart local v7    # "trim":[B
    goto :goto_0
.end method


# virtual methods
.method public config(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "config"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 67
    const-string/jumbo v6, "SecrecyService.DecryptTool"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "config = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const/16 v6, 0x2e

    const/16 v7, 0xd

    invoke-virtual {p2, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "propString":Ljava/lang/String;
    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 71
    .local v5, "sr":Ljava/io/StringReader;
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 73
    .local v4, "pros":Ljava/util/Properties;
    :try_start_0
    invoke-virtual {v4, v5}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 81
    .local v1, "policyStateMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    const-string/jumbo v6, "encrypt_app"

    invoke-virtual {v4, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "prop":Ljava/lang/String;
    const-string/jumbo v6, "SecrecyService.DecryptTool"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "encryptAppSuggest prop = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    if-eqz v2, :cond_0

    .line 84
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 86
    :cond_0
    const-string/jumbo v6, "true"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 87
    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_1
    const-string/jumbo v6, "encrypt_log"

    invoke-virtual {v4, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    const-string/jumbo v6, "SecrecyService.DecryptTool"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "encryptLogSuggest prop = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    if-eqz v2, :cond_2

    .line 93
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 95
    :cond_2
    const-string/jumbo v6, "true"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 96
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_3
    const-string/jumbo v6, "encrypt_adb"

    invoke-virtual {v4, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    const-string/jumbo v6, "SecrecyService.DecryptTool"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "encryptAdbSuggest prop = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    if-eqz v2, :cond_4

    .line 102
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 104
    :cond_4
    const-string/jumbo v6, "true"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 105
    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_5
    const-string/jumbo v6, "encrypt_all"

    invoke-virtual {v4, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 109
    const-string/jumbo v6, "SecrecyService.DecryptTool"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "encryptAll prop = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    if-eqz v2, :cond_6

    .line 111
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 113
    :cond_6
    const-string/jumbo v6, "true"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 114
    iget-object v6, p0, Lcom/android/server/secrecy/policy/DecryptTool;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    invoke-virtual {v6, v1, v9}, Lcom/android/server/secrecy/policy/PolicyManager;->createPolicyState(Ljava/util/Map;Z)V

    .line 116
    :cond_7
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    .line 117
    iget-object v6, p0, Lcom/android/server/secrecy/policy/DecryptTool;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    const-string/jumbo v7, "config"

    invoke-virtual {v6, v1, v7}, Lcom/android/server/secrecy/policy/PolicyManager;->updatePolicyState(Ljava/util/Map;Ljava/lang/String;)V

    .line 118
    const-string/jumbo v6, "OK"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    :goto_0
    return-void

    .line 74
    .end local v1    # "policyStateMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .end local v2    # "prop":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "ERROR: Config argument is malformat."

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    return-void

    .line 120
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "policyStateMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .restart local v2    # "prop":Ljava/lang/String;
    :cond_8
    const-string/jumbo v6, "ERROR: Config argument is illegal."

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public config(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 22
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "config"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;

    .prologue
    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/secrecy/policy/DecryptTool;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/secrecy/policy/PolicyManager;->getImei()Ljava/lang/String;

    move-result-object v7

    .line 127
    .local v7, "imei":Ljava/lang/String;
    const-string/jumbo v17, "SecrecyService.DecryptTool"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "config = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", signature = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string/jumbo v17, "SecrecyService.DecryptTool"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "imei = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/16 v17, 0x2e

    const/16 v20, 0xd

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v14

    .line 131
    .local v14, "propString":Ljava/lang/String;
    new-instance v16, Ljava/io/StringReader;

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 132
    .local v16, "sr":Ljava/io/StringReader;
    new-instance v15, Ljava/util/Properties;

    invoke-direct {v15}, Ljava/util/Properties;-><init>()V

    .line 134
    .local v15, "pros":Ljava/util/Properties;
    :try_start_0
    invoke-virtual/range {v15 .. v16}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    const-string/jumbo v17, "imei"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 141
    .local v11, "proImei":Ljava/lang/String;
    new-instance v10, Landroid/util/ArrayMap;

    invoke-direct {v10}, Landroid/util/ArrayMap;-><init>()V

    .line 142
    .local v10, "policyStateMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_1

    .line 143
    :cond_0
    const-string/jumbo v17, "ERROR: IMEI doesn\'t match."

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    const-string/jumbo v17, "SecrecyService.DecryptTool"

    const-string/jumbo v20, "ERROR: IMEI doesn\'t match."

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void

    .line 135
    .end local v10    # "policyStateMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .end local v11    # "proImei":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 136
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v17, "ERROR: Config argument is malformat."

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    return-void

    .line 148
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v10    # "policyStateMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .restart local v11    # "proImei":Ljava/lang/String;
    :cond_1
    const-string/jumbo v17, "stamp"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 149
    .local v12, "proStamp":Ljava/lang/String;
    if-eqz v12, :cond_4

    .line 150
    const-wide/16 v18, -0x1

    .line 152
    .local v18, "stamp":J
    const/16 v17, 0x10

    :try_start_1
    move/from16 v0, v17

    invoke-static {v12, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v18

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 158
    .local v8, "now":J
    const-wide/32 v20, 0x5265c00

    add-long v20, v20, v8

    cmp-long v17, v18, v20

    if-gtz v17, :cond_2

    const-wide/32 v20, 0x5265c00

    sub-long v20, v8, v20

    cmp-long v17, v18, v20

    if-gez v17, :cond_3

    .line 159
    :cond_2
    const-string/jumbo v17, "ERROR: stamp is expired."

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    return-void

    .line 153
    .end local v8    # "now":J
    :catch_1
    move-exception v6

    .line 154
    .local v6, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v17, "ERROR: stamp is invalid."

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 155
    return-void

    .line 162
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .restart local v8    # "now":J
    :cond_3
    invoke-static {}, Lcom/android/server/secrecy/SecrecyConfig;->getInstance()Lcom/android/server/secrecy/SecrecyConfig;

    move-result-object v17

    invoke-virtual/range {v17 .. v19}, Lcom/android/server/secrecy/SecrecyConfig;->calculateChallenge(J)Ljava/lang/String;

    move-result-object v4

    .line 163
    .local v4, "chanllengeToken":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 164
    const-string/jumbo v17, "ERROR: Signature doesn\'t match."

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    return-void

    .line 167
    .end local v4    # "chanllengeToken":Ljava/lang/String;
    .end local v8    # "now":J
    .end local v18    # "stamp":J
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/secrecy/policy/DecryptTool;->verifySignature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 168
    const-string/jumbo v17, "ERROR: Signature doesn\'t match."

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 169
    return-void

    .line 172
    :cond_5
    const-string/jumbo v17, "encrypt_app"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 173
    .local v13, "prop":Ljava/lang/String;
    const-string/jumbo v17, "SecrecyService.DecryptTool"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "encryptAppSuggest prop = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    if-eqz v13, :cond_6

    .line 175
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 177
    :cond_6
    const-string/jumbo v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 178
    const/16 v17, 0x2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_7
    :goto_0
    const-string/jumbo v17, "encrypt_log"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 184
    const-string/jumbo v17, "SecrecyService.DecryptTool"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "encryptLogSuggest prop = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    if-eqz v13, :cond_8

    .line 186
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 188
    :cond_8
    const-string/jumbo v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 189
    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    :cond_9
    :goto_1
    const-string/jumbo v17, "encrypt_adb"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 195
    const-string/jumbo v17, "SecrecyService.DecryptTool"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "encryptAdbSuggest prop = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    if-eqz v13, :cond_a

    .line 197
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 199
    :cond_a
    const-string/jumbo v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 200
    const/16 v17, 0x4

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_b
    :goto_2
    const-string/jumbo v17, "encrypt_all"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 206
    const-string/jumbo v17, "SecrecyService.DecryptTool"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "encryptAll prop = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    if-eqz v13, :cond_c

    .line 208
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 210
    :cond_c
    const-string/jumbo v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/secrecy/policy/DecryptTool;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    move-object/from16 v17, v0

    const/16 v20, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v10, v1}, Lcom/android/server/secrecy/policy/PolicyManager;->createPolicyState(Ljava/util/Map;Z)V

    .line 216
    :cond_d
    :goto_3
    const-string/jumbo v17, "unlock_type"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 217
    const-string/jumbo v17, "SecrecyService.DecryptTool"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "encryptUnlockType prop = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    if-eqz v13, :cond_e

    .line 219
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 222
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/secrecy/policy/DecryptTool;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v13}, Lcom/android/server/secrecy/policy/PolicyManager;->updatePolicyState(Ljava/util/Map;Ljava/lang/String;)V

    .line 223
    const-string/jumbo v17, "OK"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 224
    return-void

    .line 179
    :cond_f
    const-string/jumbo v17, "false"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 180
    const/16 v17, 0x2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 190
    :cond_10
    const-string/jumbo v17, "false"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 191
    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 201
    :cond_11
    const-string/jumbo v17, "false"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 202
    const/16 v17, 0x4

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 212
    :cond_12
    const-string/jumbo v17, "false"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/secrecy/policy/DecryptTool;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    move-object/from16 v17, v0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v10, v1}, Lcom/android/server/secrecy/policy/PolicyManager;->createPolicyState(Ljava/util/Map;Z)V

    goto/16 :goto_3
.end method

.method public verifyKey(Ljava/io/PrintWriter;Ljava/lang/String;)Z
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "key_arg"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v1, p0, Lcom/android/server/secrecy/policy/DecryptTool;->mPolicyManager:Lcom/android/server/secrecy/policy/PolicyManager;

    invoke-virtual {v1}, Lcom/android/server/secrecy/policy/PolicyManager;->getImei()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "imei":Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Lcom/android/server/secrecy/policy/DecryptTool;->verifySignature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    const-string/jumbo v1, "OK: key imported successful!"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 56
    const/4 v1, 0x1

    return v1

    .line 58
    :cond_0
    const-string/jumbo v1, "ERROR: The key to import is invalid."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    const/4 v1, 0x0

    return v1
.end method
