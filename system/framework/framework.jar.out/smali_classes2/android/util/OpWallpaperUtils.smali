.class public final Landroid/util/OpWallpaperUtils;
.super Ljava/lang/Object;
.source "OpWallpaperUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/OpWallpaperUtils$CustomizationSettings;,
        Landroid/util/OpWallpaperUtils$SystemProperties;
    }
.end annotation


# static fields
.field private static final synthetic -android-util-OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPESwitchesValues:[I = null

.field private static final TAG:Ljava/lang/String; = "OpWallpaperUtils"

.field private static final custom_back_cover_fn:Ljava/lang/String; = "/sys/module/param_read_write/parameters/backcover_color"

.field private static final custom_fn:Ljava/lang/String; = "/sys/module/param_read_write/parameters/cust_flag"

.field private static final sProjectName:Ljava/lang/String;

.field private static sSystemPropertiesGetMethod:Ljava/lang/reflect/Method;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/util/OpWallpaperUtils;->sProjectName:Ljava/lang/String;

    return-object v0
.end method

.method private static synthetic -getandroid-util-OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPESwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/util/OpWallpaperUtils;->-android-util-OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPESwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/util/OpWallpaperUtils;->-android-util-OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPESwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;->values()[Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;->HPH:Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;

    invoke-virtual {v1}, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;->LCH:Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;

    invoke-virtual {v1}, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;->MYH:Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;

    invoke-virtual {v1}, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;->NONE:Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;

    invoke-virtual {v1}, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;->YYB:Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;

    invoke-virtual {v1}, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Landroid/util/OpWallpaperUtils;->-android-util-OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPESwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string/jumbo v0, "ro.boot.project_name"

    invoke-static {v0}, Landroid/util/OpWallpaperUtils$SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/OpWallpaperUtils;->sProjectName:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    sput-object v0, Landroid/util/OpWallpaperUtils;->sSystemPropertiesGetMethod:Ljava/lang/reflect/Method;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decrypt(Landroid/content/Context;[B)[B
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "encrypted"    # [B

    .prologue
    .line 206
    const/4 v1, 0x0

    .line 208
    .local v1, "decrypted":[B
    :try_start_0
    const-string/jumbo v5, "AES/CBC/PKCS5Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 209
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p0}, Landroid/util/OpWallpaperUtils;->getDataKey(Landroid/content/Context;)[B

    move-result-object v5

    const-string/jumbo v6, "AES"

    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 210
    .local v4, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v5

    new-array v5, v5, [B

    invoke-direct {v3, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 211
    .local v3, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 212
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 218
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "decrypted":[B
    .end local v3    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v4    # "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v1

    .line 215
    .restart local v1    # "decrypted":[B
    :catch_0
    move-exception v2

    .line 216
    .local v2, "e":Ljava/security/GeneralSecurityException;
    const-string/jumbo v5, "OpWallpaperUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to perform decryption, error"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static decryptWallpaperBytes(Landroid/content/Context;I)[B
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    .line 190
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/util/OpWallpaperUtils;->getRawResourceBytes(Landroid/content/res/Resources;I)[B

    move-result-object v0

    .line 191
    .local v0, "encrypted":[B
    invoke-static {p0, v0}, Landroid/util/OpWallpaperUtils;->decrypt(Landroid/content/Context;[B)[B

    move-result-object v1

    return-object v1
.end method

.method private static decryptWallpaperBytes(Landroid/content/Context;Ljava/io/File;)[B
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 197
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 202
    .local v1, "encrypted":[B
    invoke-static {p0, v1}, Landroid/util/OpWallpaperUtils;->decrypt(Landroid/content/Context;[B)[B

    move-result-object v2

    return-object v2

    .line 198
    .end local v1    # "encrypted":[B
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "OpWallpaperUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to load bytes from file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v2, 0x0

    return-object v2
.end method

.method private static getDataKey(Landroid/content/Context;)[B
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x0

    .line 165
    const v9, 0x50b004f

    :try_start_0
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 166
    .local v8, "ws":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    new-instance v10, Ljava/lang/String;

    invoke-static {v8}, Landroid/util/OpWallpaperUtils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 167
    const-string/jumbo v9, "SHA-256"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    .line 168
    .local v7, "sha256":Ljava/security/MessageDigest;
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 174
    .local v5, "key":[B
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x5060001

    invoke-static {v9, v10}, Landroid/util/OpWallpaperUtils;->getRawResourceBytes(Landroid/content/res/Resources;I)[B

    move-result-object v4

    .line 176
    .local v4, "kek":[B
    :try_start_1
    const-string/jumbo v9, "AES/CBC/NoPadding"

    invoke-static {v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 177
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v9, "AES"

    invoke-direct {v6, v5, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 178
    .local v6, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v9

    new-array v9, v9, [B

    invoke-direct {v3, v9}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 179
    .local v3, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v9, 0x2

    invoke-virtual {v0, v9, v6, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 180
    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    return-object v9

    .line 169
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v3    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v4    # "kek":[B
    .end local v5    # "key":[B
    .end local v6    # "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    .end local v7    # "sha256":Ljava/security/MessageDigest;
    .end local v8    # "ws":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 170
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v9, "OpWallpaperUtils"

    const-string/jumbo v10, "Failed to generate encrypt key"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-object v12

    .line 183
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v4    # "kek":[B
    .restart local v5    # "key":[B
    .restart local v7    # "sha256":Ljava/security/MessageDigest;
    .restart local v8    # "ws":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 184
    .local v1, "e":Ljava/security/GeneralSecurityException;
    const-string/jumbo v9, "OpWallpaperUtils"

    const-string/jumbo v10, "Failed to get data key"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-object v12
.end method

.method private static getRawResourceBytes(Landroid/content/res/Resources;I)[B
    .locals 11
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I

    .prologue
    const/4 v8, 0x0

    .line 148
    const/4 v4, 0x0

    .local v4, "is":Ljava/io/InputStream;
    const/4 v0, 0x0

    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 149
    .local v4, "is":Ljava/io/InputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 150
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x400

    :try_start_1
    new-array v2, v6, [B

    .line 152
    .local v2, "buffer":[B
    :goto_0
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "len":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    .line 153
    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    .line 159
    .end local v2    # "buffer":[B
    .end local v5    # "len":I
    :catch_0
    move-exception v6

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "is":Ljava/io/InputStream;
    :goto_1
    :try_start_2
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v7

    move-object v10, v7

    move-object v7, v6

    move-object v6, v10

    :goto_2
    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_0
    move-object v9, v7

    :cond_1
    :goto_3
    if-eqz v4, :cond_2

    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    move-object v7, v9

    :cond_3
    :goto_4
    if-eqz v7, :cond_9

    :try_start_5
    throw v7
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 156
    :catch_1
    move-exception v3

    .line 157
    .local v3, "e":Ljava/io/IOException;
    :goto_5
    const-string/jumbo v6, "OpWallpaperUtils"

    const-string/jumbo v7, "Failed to load raw resource bytes"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-object v8

    .line 155
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "buffer":[B
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "len":I
    :cond_4
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v9

    .line 159
    if-eqz v1, :cond_5

    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_5
    move-object v7, v8

    :goto_6
    if-eqz v4, :cond_6

    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :cond_6
    move-object v6, v7

    :cond_7
    :goto_7
    if-eqz v6, :cond_8

    :try_start_9
    throw v6

    .line 156
    :catch_2
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .line 159
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_3
    move-exception v7

    goto :goto_6

    :catch_4
    move-exception v6

    if-eqz v7, :cond_7

    if-eq v7, v6, :cond_6

    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    move-object v6, v7

    goto :goto_7

    .line 155
    :cond_8
    return-object v9

    .line 159
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buffer":[B
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "len":I
    :catch_5
    move-exception v9

    if-eqz v7, :cond_1

    if-eq v7, v9, :cond_0

    :try_start_a
    invoke-virtual {v7, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v9, v7

    goto :goto_3

    :catch_6
    move-exception v7

    if-eqz v9, :cond_3

    if-eq v9, v7, :cond_2

    invoke-virtual {v9, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v7, v9

    goto :goto_4

    :cond_9
    throw v6
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v6

    move-object v7, v8

    goto :goto_2

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catchall_2
    move-exception v6

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    move-object v7, v8

    goto :goto_2

    .end local v4    # "is":Ljava/io/InputStream;
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :catch_7
    move-exception v6

    goto :goto_1
.end method

.method private static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x10

    .line 222
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 223
    .local v2, "len":I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 224
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 225
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    .line 226
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    .line 225
    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 224
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 228
    :cond_0
    return-object v0
.end method

.method public static openDefaultWallpaper(Landroid/content/Context;)Ljava/io/InputStream;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v13, 0x0

    .line 60
    const/4 v7, 0x0

    .line 61
    .local v7, "isSWTheme":Z
    const/4 v6, 0x0

    .line 62
    .local v6, "isJCCTheme":Z
    const/4 v5, 0x0

    .line 63
    .local v5, "isAVGTheme":Z
    invoke-static {}, Landroid/util/OpWallpaperUtils$CustomizationSettings;->getCustomization()Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;

    move-result-object v2

    .line 64
    .local v2, "customization":Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;
    const-string/jumbo v10, "OpWallpaperUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "customization="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    sget-object v10, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;->SW:Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;

    invoke-virtual {v10, v2}, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 66
    const/4 v7, 0x1

    .line 74
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    .line 75
    const-string/jumbo v10, "OpWallpaperUtils"

    const-string/jumbo v11, "begin decrypt for special theme"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/high16 v8, 0x5060000

    .line 77
    .local v8, "resId":I
    const/high16 v10, 0x5060000

    invoke-static {p0, v10}, Landroid/util/OpWallpaperUtils;->decryptWallpaperBytes(Landroid/content/Context;I)[B

    move-result-object v1

    .line 78
    .local v1, "bytes":[B
    if-nez v1, :cond_5

    .line 79
    const-string/jumbo v10, "OpWallpaperUtils"

    const-string/jumbo v11, "bytes null"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v7, 0x0

    .line 90
    .end local v1    # "bytes":[B
    .end local v8    # "resId":I
    :cond_1
    if-eqz v5, :cond_2

    .line 91
    new-instance v4, Ljava/io/File;

    const-string/jumbo v10, "/op1/wallpaper/wp00001.jpg"

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_6

    .line 93
    const-string/jumbo v10, "OpWallpaperUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "default keyguard wallpaper file["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "] does not exist"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v5, 0x0

    .line 111
    .end local v4    # "f":Ljava/io/File;
    :cond_2
    :goto_1
    if-nez v7, :cond_9

    xor-int/lit8 v10, v5, 0x1

    if-eqz v10, :cond_9

    .line 113
    const/4 v9, 0x0

    .line 114
    .local v9, "wpId":I
    if-eqz v6, :cond_8

    .line 115
    const/high16 v9, 0x5020000

    .line 137
    :goto_2
    const-string/jumbo v10, "OpWallpaperUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "return default wallpaper, "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    return-object v10

    .line 67
    .end local v9    # "wpId":I
    :cond_3
    sget-object v10, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;->JCC:Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;

    invoke-virtual {v10, v2}, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 68
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 69
    :cond_4
    sget-object v10, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;->AVG:Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;

    invoke-virtual {v10, v2}, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 70
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 83
    .restart local v1    # "bytes":[B
    .restart local v8    # "resId":I
    :cond_5
    const-string/jumbo v10, "OpWallpaperUtils"

    const-string/jumbo v11, "return special wallpaper"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-direct {v10, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v10

    .line 97
    .end local v1    # "bytes":[B
    .end local v8    # "resId":I
    .restart local v4    # "f":Ljava/io/File;
    :cond_6
    const-string/jumbo v10, "OpWallpaperUtils"

    const-string/jumbo v11, "begin decrypt for special theme"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-static {p0, v4}, Landroid/util/OpWallpaperUtils;->decryptWallpaperBytes(Landroid/content/Context;Ljava/io/File;)[B

    move-result-object v1

    .line 99
    .restart local v1    # "bytes":[B
    if-nez v1, :cond_7

    .line 100
    const-string/jumbo v10, "OpWallpaperUtils"

    const-string/jumbo v11, "bytes null"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v5, 0x0

    goto :goto_1

    .line 104
    :cond_7
    const-string/jumbo v10, "OpWallpaperUtils"

    const-string/jumbo v11, "return special wallpaper"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-direct {v10, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v10

    .line 118
    .end local v1    # "bytes":[B
    .end local v4    # "f":Ljava/io/File;
    .restart local v9    # "wpId":I
    :cond_8
    invoke-static {}, Landroid/util/OpWallpaperUtils$CustomizationSettings;->getCustomBackCoverType()Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;

    move-result-object v0

    .line 119
    .local v0, "backCoverType":Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;
    const-string/jumbo v10, "OpWallpaperUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "backCoverType="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-static {}, Landroid/util/OpWallpaperUtils;->-getandroid-util-OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPESwitchesValues()[I

    move-result-object v10

    invoke-virtual {v0}, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 133
    :pswitch_0
    const v9, 0x502000f

    .line 134
    goto/16 :goto_2

    .line 122
    :pswitch_1
    const v9, 0x502000e

    .line 123
    goto/16 :goto_2

    .line 125
    :pswitch_2
    const v9, 0x5020005

    .line 126
    goto/16 :goto_2

    .line 128
    :pswitch_3
    const v9, 0x5020001

    .line 129
    goto/16 :goto_2

    .line 140
    .end local v0    # "backCoverType":Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;
    :catch_0
    move-exception v3

    .line 144
    .end local v9    # "wpId":I
    :cond_9
    return-object v13

    .line 120
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
