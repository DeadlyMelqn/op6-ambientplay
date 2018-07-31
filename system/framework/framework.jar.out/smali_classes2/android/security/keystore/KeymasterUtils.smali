.class public abstract Landroid/security/keystore/KeymasterUtils;
.super Ljava/lang/Object;
.source "KeymasterUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMinMacLengthAuthorizationIfNecessary(Landroid/security/keymaster/KeymasterArguments;I[I[I)V
    .locals 5
    .param p0, "args"    # Landroid/security/keymaster/KeymasterArguments;
    .param p1, "keymasterAlgorithm"    # I
    .param p2, "keymasterBlockModes"    # [I
    .param p3, "keymasterDigests"    # [I

    .prologue
    const v4, 0x30000008

    .line 187
    sparse-switch p1, :sswitch_data_0

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 190
    :sswitch_0
    const/16 v2, 0x20

    .line 189
    invoke-static {p2, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    const-wide/16 v2, 0x60

    .line 192
    invoke-virtual {p0, v4, v2, v3}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    goto :goto_0

    .line 201
    :sswitch_1
    array-length v2, p3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 202
    new-instance v2, Ljava/security/ProviderException;

    .line 203
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unsupported number of authorized digests for HMAC key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 204
    array-length v4, p3

    .line 203
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 205
    const-string/jumbo v4, ". Exactly one digest must be authorized"

    .line 203
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 202
    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 207
    :cond_1
    const/4 v2, 0x0

    aget v1, p3, v2

    .line 208
    .local v1, "keymasterDigest":I
    invoke-static {v1}, Landroid/security/keystore/KeymasterUtils;->getDigestOutputSizeBits(I)I

    move-result v0

    .line 209
    .local v0, "digestOutputSizeBits":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 210
    new-instance v2, Ljava/security/ProviderException;

    .line 211
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "HMAC key authorized for unsupported digest: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 212
    invoke-static {v1}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v4

    .line 211
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 210
    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 214
    :cond_2
    int-to-long v2, v0

    invoke-virtual {p0, v4, v2, v3}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    goto :goto_0

    .line 187
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x80 -> :sswitch_1
    .end sparse-switch
.end method

.method public static addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;ZIZZJ)V
    .locals 9
    .param p0, "args"    # Landroid/security/keymaster/KeymasterArguments;
    .param p1, "userAuthenticationRequired"    # Z
    .param p2, "userAuthenticationValidityDurationSeconds"    # I
    .param p3, "userAuthenticationValidWhileOnBody"    # Z
    .param p4, "invalidatedByBiometricEnrollment"    # Z
    .param p5, "boundToSpecificSecureUserId"    # J

    .prologue
    .line 108
    if-nez p1, :cond_0

    .line 109
    const v1, 0x700001f7

    invoke-virtual {p0, v1}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    .line 110
    return-void

    .line 113
    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_6

    .line 117
    invoke-static {}, Landroid/security/KeyStore;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v6, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 121
    .local v0, "fingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->getAuthenticatorId()J

    move-result-wide v2

    .line 122
    .local v2, "fingerprintOnlySid":J
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-nez v1, :cond_2

    .line 123
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 124
    const-string/jumbo v6, "At least one fingerprint must be enrolled to create keys requiring user authentication for every use"

    .line 123
    invoke-direct {v1, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 121
    .end local v2    # "fingerprintOnlySid":J
    :cond_1
    const-wide/16 v2, 0x0

    .restart local v2    # "fingerprintOnlySid":J
    goto :goto_0

    .line 129
    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v1, p5, v6

    if-eqz v1, :cond_4

    .line 130
    move-wide v4, p5

    .line 144
    .local v4, "sid":J
    :goto_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v6, 0x3e7

    if-ne v1, v6, :cond_3

    .line 145
    const-string/jumbo v1, "KeymasterUtils"

    const-string/jumbo v6, "addUserAuthArgs"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    move-wide v4, v2

    .line 151
    :cond_3
    invoke-static {v4, v5}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    move-result-object v1

    const v6, -0x5ffffe0a

    .line 150
    invoke-virtual {p0, v6, v1}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedLong(ILjava/math/BigInteger;)V

    .line 152
    const v1, 0x100001f8

    const/4 v6, 0x2

    invoke-virtual {p0, v1, v6}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    .line 153
    if-eqz p3, :cond_7

    .line 154
    new-instance v1, Ljava/security/ProviderException;

    const-string/jumbo v6, "Key validity extension while device is on-body is not supported for keys requiring fingerprint authentication"

    invoke-direct {v1, v6}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 131
    .end local v4    # "sid":J
    :cond_4
    if-eqz p4, :cond_5

    .line 134
    move-wide v4, v2

    .restart local v4    # "sid":J
    goto :goto_1

    .line 138
    .end local v4    # "sid":J
    :cond_5
    invoke-static {}, Landroid/security/keystore/KeymasterUtils;->getRootSid()J

    move-result-wide v4

    .restart local v4    # "sid":J
    goto :goto_1

    .line 159
    .end local v0    # "fingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    .end local v2    # "fingerprintOnlySid":J
    .end local v4    # "sid":J
    :cond_6
    const-wide/16 v6, 0x0

    cmp-long v1, p5, v6

    if-eqz v1, :cond_8

    .line 160
    move-wide v4, p5

    .line 167
    .restart local v4    # "sid":J
    :goto_2
    invoke-static {v4, v5}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 166
    const v6, -0x5ffffe0a

    invoke-virtual {p0, v6, v1}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedLong(ILjava/math/BigInteger;)V

    .line 168
    const v1, 0x100001f8

    .line 169
    const/4 v6, 0x3

    .line 168
    invoke-virtual {p0, v1, v6}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    .line 171
    int-to-long v6, p2

    .line 170
    const v1, 0x300001f9

    invoke-virtual {p0, v1, v6, v7}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    .line 172
    if-eqz p3, :cond_7

    .line 173
    const v1, 0x700001fa

    invoke-virtual {p0, v1}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    .line 176
    :cond_7
    return-void

    .line 164
    .end local v4    # "sid":J
    :cond_8
    invoke-static {}, Landroid/security/keystore/KeymasterUtils;->getRootSid()J

    move-result-wide v4

    .restart local v4    # "sid":J
    goto :goto_2
.end method

.method public static getDigestOutputSizeBits(I)I
    .locals 3
    .param p0, "keymasterDigest"    # I

    .prologue
    .line 37
    packed-switch p0, :pswitch_data_0

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown digest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :pswitch_0
    const/4 v0, -0x1

    return v0

    .line 41
    :pswitch_1
    const/16 v0, 0x80

    return v0

    .line 43
    :pswitch_2
    const/16 v0, 0xa0

    return v0

    .line 45
    :pswitch_3
    const/16 v0, 0xe0

    return v0

    .line 47
    :pswitch_4
    const/16 v0, 0x100

    return v0

    .line 49
    :pswitch_5
    const/16 v0, 0x180

    return v0

    .line 51
    :pswitch_6
    const/16 v0, 0x200

    return v0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static getRootSid()J
    .locals 4

    .prologue
    .line 220
    invoke-static {}, Landroid/security/GateKeeper;->getSecureUserId()J

    move-result-wide v0

    .line 221
    .local v0, "rootSid":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 222
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Secure lock screen must be enabled to create keys requiring user authentication"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 225
    :cond_0
    return-wide v0
.end method

.method public static isKeymasterBlockModeIndCpaCompatibleWithSymmetricCrypto(I)Z
    .locals 3
    .param p0, "keymasterBlockMode"    # I

    .prologue
    .line 59
    sparse-switch p0, :sswitch_data_0

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported block mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :sswitch_0
    const/4 v0, 0x0

    return v0

    .line 65
    :sswitch_1
    const/4 v0, 0x1

    return v0

    .line 59
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method public static isKeymasterPaddingSchemeIndCpaCompatibleWithAsymmetricCrypto(I)Z
    .locals 3
    .param p0, "keymasterPadding"    # I

    .prologue
    .line 73
    packed-switch p0, :pswitch_data_0

    .line 80
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported asymmetric encryption padding scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 78
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
