.class Lcom/android/server/devicepolicy/Owners;
.super Ljava/lang/Object;
.source "Owners.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;,
        Lcom/android/server/devicepolicy/Owners$FileReadWriter;,
        Lcom/android/server/devicepolicy/Owners$OwnerInfo;,
        Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;
    }
.end annotation


# static fields
.field private static final ATTR_COMPONENT_NAME:Ljava/lang/String; = "component"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final ATTR_REMOTE_BUGREPORT_HASH:Ljava/lang/String; = "remoteBugreportHash"

.field private static final ATTR_REMOTE_BUGREPORT_URI:Ljava/lang/String; = "remoteBugreportUri"

.field private static final ATTR_USERID:Ljava/lang/String; = "userId"

.field private static final ATTR_USER_RESTRICTIONS_MIGRATED:Ljava/lang/String; = "userRestrictionsMigrated"

.field private static final DEBUG:Z = false

.field private static final DEVICE_OWNER_XML:Ljava/lang/String; = "device_owner_2.xml"

.field private static final DEVICE_OWNER_XML_LEGACY:Ljava/lang/String; = "device_owner.xml"

.field private static final PROFILE_OWNER_XML:Ljava/lang/String; = "profile_owner.xml"

.field private static final TAG:Ljava/lang/String; = "DevicePolicyManagerService"

.field private static final TAG_DEVICE_INITIALIZER:Ljava/lang/String; = "device-initializer"

.field private static final TAG_DEVICE_OWNER:Ljava/lang/String; = "device-owner"

.field private static final TAG_DEVICE_OWNER_CONTEXT:Ljava/lang/String; = "device-owner-context"

.field private static final TAG_PENDING_OTA_INFO:Ljava/lang/String; = "pending-ota-info"

.field private static final TAG_PROFILE_OWNER:Ljava/lang/String; = "profile-owner"

.field private static final TAG_ROOT:Ljava/lang/String; = "root"

.field private static final TAG_SYSTEM_UPDATE_POLICY:Ljava/lang/String; = "system-update-policy"


# instance fields
.field private mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

.field private mDeviceOwnerUserId:I

.field private final mLock:Ljava/lang/Object;

.field private final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private final mProfileOwners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/devicepolicy/Owners$OwnerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

.field private mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserManagerInternal:Landroid/os/UserManagerInternal;


# direct methods
.method static synthetic -get0(Lcom/android/server/devicepolicy/Owners;)Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/devicepolicy/Owners;

    .prologue
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/devicepolicy/Owners;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/devicepolicy/Owners;

    .prologue
    iget v0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/devicepolicy/Owners;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/devicepolicy/Owners;

    .prologue
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/devicepolicy/Owners;)Landroid/app/admin/SystemUpdateInfo;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/devicepolicy/Owners;

    .prologue
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/devicepolicy/Owners;)Landroid/app/admin/SystemUpdatePolicy;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/devicepolicy/Owners;

    .prologue
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/devicepolicy/Owners;Lcom/android/server/devicepolicy/Owners$OwnerInfo;)Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    .locals 0
    .param p0, "-this"    # Lcom/android/server/devicepolicy/Owners;
    .param p1, "-value"    # Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    .prologue
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/devicepolicy/Owners;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/server/devicepolicy/Owners;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/devicepolicy/Owners;Landroid/app/admin/SystemUpdateInfo;)Landroid/app/admin/SystemUpdateInfo;
    .locals 0
    .param p0, "-this"    # Lcom/android/server/devicepolicy/Owners;
    .param p1, "-value"    # Landroid/app/admin/SystemUpdateInfo;

    .prologue
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/devicepolicy/Owners;Landroid/app/admin/SystemUpdatePolicy;)Landroid/app/admin/SystemUpdatePolicy;
    .locals 0
    .param p0, "-this"    # Lcom/android/server/devicepolicy/Owners;
    .param p1, "-value"    # Landroid/app/admin/SystemUpdatePolicy;

    .prologue
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    return-object p1
.end method

.method public constructor <init>(Landroid/os/UserManager;Landroid/os/UserManagerInternal;Landroid/content/pm/PackageManagerInternal;)V
    .locals 1
    .param p1, "userManager"    # Landroid/os/UserManager;
    .param p2, "userManagerInternal"    # Landroid/os/UserManagerInternal;
    .param p3, "packageManagerInternal"    # Landroid/content/pm/PackageManagerInternal;

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    .line 103
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    .line 112
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    .line 117
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mUserManager:Landroid/os/UserManager;

    .line 118
    iput-object p2, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    .line 119
    iput-object p3, p0, Lcom/android/server/devicepolicy/Owners;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 120
    return-void
.end method

.method private pushToPackageManagerLocked()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 169
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 170
    .local v1, "po":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 171
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v2, v2, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 170
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 173
    :cond_0
    iget-object v4, p0, Lcom/android/server/devicepolicy/Owners;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 174
    iget v5, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v2, v2, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->packageName:Ljava/lang/String;

    .line 173
    :goto_1
    invoke-virtual {v4, v5, v2, v1}, Landroid/content/pm/PackageManagerInternal;->setDeviceAndProfileOwnerPackages(ILjava/lang/String;Landroid/util/SparseArray;)V

    .line 176
    return-void

    :cond_1
    move-object v2, v3

    .line 174
    goto :goto_1
.end method

.method private readLegacyOwnerFileLocked(Ljava/io/File;)Z
    .locals 21
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 396
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 398
    const/4 v1, 0x0

    return v1

    .line 401
    :cond_0
    :try_start_0
    new-instance v1, Landroid/util/AtomicFile;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v14

    .line 402
    .local v14, "input":Ljava/io/InputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v15

    .line 403
    .local v15, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v15, v14, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 405
    :cond_1
    :goto_0
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v19

    .local v19, "type":I
    const/4 v1, 0x1

    move/from16 v0, v19

    if-eq v0, v1, :cond_8

    .line 406
    const/4 v1, 0x2

    move/from16 v0, v19

    if-ne v0, v1, :cond_1

    .line 410
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    .line 411
    .local v18, "tag":Ljava/lang/String;
    const-string/jumbo v1, "device-owner"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 412
    const-string/jumbo v1, "name"

    const/4 v7, 0x0

    invoke-interface {v15, v7, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 413
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v1, "package"

    const/4 v7, 0x0

    invoke-interface {v15, v7, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 414
    .local v3, "packageName":Ljava/lang/String;
    new-instance v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    .line 415
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 416
    const/4 v6, 0x0

    .line 414
    invoke-direct/range {v1 .. v6}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    .line 417
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 454
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v14    # "input":Ljava/io/InputStream;
    .end local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v18    # "tag":Ljava/lang/String;
    .end local v19    # "type":I
    :catch_0
    move-exception v13

    .line 455
    .local v13, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "DevicePolicyManagerService"

    const-string/jumbo v7, "Error parsing device-owner file"

    invoke-static {v1, v7, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 457
    .end local v13    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 418
    .restart local v14    # "input":Ljava/io/InputStream;
    .restart local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v18    # "tag":Ljava/lang/String;
    .restart local v19    # "type":I
    :cond_2
    :try_start_1
    const-string/jumbo v1, "device-initializer"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 420
    const-string/jumbo v1, "profile-owner"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 421
    const-string/jumbo v1, "package"

    const/4 v7, 0x0

    invoke-interface {v15, v7, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 422
    .local v17, "profileOwnerPackageName":Ljava/lang/String;
    const-string/jumbo v1, "name"

    const/4 v7, 0x0

    invoke-interface {v15, v7, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 424
    .local v5, "profileOwnerName":Ljava/lang/String;
    const-string/jumbo v1, "component"

    const/4 v7, 0x0

    invoke-interface {v15, v7, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 425
    .local v16, "profileOwnerComponentStr":Ljava/lang/String;
    const-string/jumbo v1, "userId"

    const/4 v7, 0x0

    invoke-interface {v15, v7, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 426
    .local v20, "userId":I
    const/4 v4, 0x0

    .line 427
    .local v4, "profileOwnerInfo":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    if-eqz v16, :cond_3

    .line 428
    invoke-static/range {v16 .. v16}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    .line 430
    .local v6, "admin":Landroid/content/ComponentName;
    if-eqz v6, :cond_5

    .line 431
    new-instance v4, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    .line 432
    .end local v4    # "profileOwnerInfo":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 431
    invoke-direct/range {v4 .. v9}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;ZLjava/lang/String;Ljava/lang/String;)V

    .line 440
    .end local v6    # "admin":Landroid/content/ComponentName;
    :cond_3
    :goto_2
    if-nez v4, :cond_4

    .line 441
    new-instance v4, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    .line 442
    const/4 v10, 0x0

    .line 443
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v4

    move-object v8, v5

    move-object/from16 v9, v17

    .line 441
    invoke-direct/range {v7 .. v12}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 445
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 436
    .restart local v4    # "profileOwnerInfo":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    .restart local v6    # "admin":Landroid/content/ComponentName;
    :cond_5
    const-string/jumbo v1, "DevicePolicyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error parsing device-owner file. Bad component name "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 446
    .end local v4    # "profileOwnerInfo":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    .end local v5    # "profileOwnerName":Ljava/lang/String;
    .end local v6    # "admin":Landroid/content/ComponentName;
    .end local v16    # "profileOwnerComponentStr":Ljava/lang/String;
    .end local v17    # "profileOwnerPackageName":Ljava/lang/String;
    .end local v20    # "userId":I
    :cond_6
    const-string/jumbo v1, "system-update-policy"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 447
    invoke-static {v15}, Landroid/app/admin/SystemUpdatePolicy;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/admin/SystemUpdatePolicy;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    goto/16 :goto_0

    .line 449
    :cond_7
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 450
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unexpected tag in device owner file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 449
    invoke-direct {v1, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 453
    .end local v18    # "tag":Ljava/lang/String;
    :cond_8
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method


# virtual methods
.method clearDeviceOwner()V
    .locals 3

    .prologue
    .line 252
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 253
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    .line 254
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    .line 256
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/UserManagerInternal;->setDeviceManaged(Z)V

    .line 257
    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->pushToPackageManagerLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 259
    return-void

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method clearSystemUpdatePolicy()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 321
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 323
    return-void

    .line 320
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 818
    const/4 v2, 0x0

    .line 819
    .local v2, "needBlank":Z
    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v3, :cond_0

    .line 820
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Device Owner: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 821
    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 822
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  User ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 823
    const/4 v2, 0x1

    .line 825
    :cond_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    if-eqz v3, :cond_2

    .line 826
    if-eqz v2, :cond_1

    .line 827
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 829
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "System Update Policy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 830
    const/4 v2, 0x1

    .line 832
    :cond_2
    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    if-eqz v3, :cond_4

    .line 833
    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 834
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/devicepolicy/Owners$OwnerInfo;>;"
    if-eqz v2, :cond_3

    .line 835
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 837
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Profile Owner (User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 838
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 839
    const/4 v2, 0x1

    goto :goto_0

    .line 842
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/devicepolicy/Owners$OwnerInfo;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_4
    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    if-eqz v3, :cond_6

    .line 843
    if-eqz v2, :cond_5

    .line 844
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 846
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Pending System Update: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 847
    const/4 v2, 0x1

    .line 849
    :cond_6
    return-void
.end method

.method getDeviceOwnerComponent()Landroid/content/ComponentName;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 208
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 209
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v0, v0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->admin:Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-object v0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method getDeviceOwnerFileWithTestOverride()Ljava/io/File;
    .locals 3

    .prologue
    .line 856
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "device_owner_2.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method getDeviceOwnerName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 202
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 203
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v0, v0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->name:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-object v0

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method getDeviceOwnerPackageName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 179
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 180
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v0, v0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-object v0

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method getDeviceOwnerRemoteBugreportHash()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 220
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 221
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v0, v0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportHash:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-object v0

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method getDeviceOwnerRemoteBugreportUri()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 214
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 215
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v0, v0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportUri:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-object v0

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method getDeviceOwnerUserId()I
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 186
    :try_start_0
    iget v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 185
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method getDeviceOwnerUserIdAndComponent()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 192
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit v1

    .line 194
    return-object v2

    .line 196
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v2, v2, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->admin:Landroid/content/ComponentName;

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method getDeviceOwnerUserRestrictionsNeedsMigration()Z
    .locals 2

    .prologue
    .line 347
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 348
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-boolean v0, v0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->userRestrictionsMigrated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method getLegacyConfigFileWithTestOverride()Ljava/io/File;
    .locals 3

    .prologue
    .line 852
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "device_owner.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method getProfileOwnerComponent(I)Landroid/content/ComponentName;
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 281
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 282
    :try_start_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    .line 283
    .local v0, "profileOwner":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->admin:Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-object v1

    .line 281
    .end local v0    # "profileOwner":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method getProfileOwnerFileWithTestOverride(I)Ljava/io/File;
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 860
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "profile_owner.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method getProfileOwnerKeys()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method getProfileOwnerName(I)Ljava/lang/String;
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 288
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 289
    :try_start_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    .line 290
    .local v0, "profileOwner":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->name:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-object v1

    .line 288
    .end local v0    # "profileOwner":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method getProfileOwnerPackage(I)Ljava/lang/String;
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 295
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 296
    :try_start_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    .line 297
    .local v0, "profileOwner":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-object v1

    .line 295
    .end local v0    # "profileOwner":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method getProfileOwnerUserRestrictionsNeedsMigration(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 356
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 357
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    .line 358
    .local v0, "profileOwner":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->userRestrictionsMigrated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v1, v1, 0x1

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 356
    .end local v0    # "profileOwner":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getSystemUpdateInfo()Landroid/app/admin/SystemUpdateInfo;
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 500
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 499
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method getSystemUpdatePolicy()Landroid/app/admin/SystemUpdatePolicy;
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 309
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 308
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method hasDeviceOwner()Z
    .locals 2

    .prologue
    .line 326
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method hasProfileOwner(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 338
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 339
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/Owners;->getProfileOwnerComponent(I)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method isDeviceOwnerUserId(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 332
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 333
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit v1

    return v0

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method load()V
    .locals 12

    .prologue
    .line 126
    iget-object v7, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 128
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->getLegacyConfigFileWithTestOverride()Ljava/io/File;

    move-result-object v0

    .line 130
    .local v0, "legacy":Ljava/io/File;
    iget-object v6, p0, Lcom/android/server/devicepolicy/Owners;->mUserManager:Landroid/os/UserManager;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v5

    .line 132
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/Owners;->readLegacyOwnerFileLocked(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 138
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->writeDeviceOwner()V

    .line 139
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->getProfileOwnerKeys()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "userId$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 140
    .local v3, "userId":I
    invoke-virtual {p0, v3}, Lcom/android/server/devicepolicy/Owners;->writeProfileOwner(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 126
    .end local v0    # "legacy":Ljava/io/File;
    .end local v3    # "userId":I
    .end local v4    # "userId$iterator":Ljava/util/Iterator;
    .end local v5    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 145
    .restart local v0    # "legacy":Ljava/io/File;
    .restart local v4    # "userId$iterator":Ljava/util/Iterator;
    .restart local v5    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_1

    .line 146
    const-string/jumbo v6, "DevicePolicyManagerService"

    const-string/jumbo v8, "Failed to remove the legacy setting file"

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .end local v4    # "userId$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v6, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->hasDeviceOwner()Z

    move-result v8

    invoke-virtual {v6, v8}, Landroid/os/UserManagerInternal;->setDeviceManaged(Z)V

    .line 157
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "ui$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 158
    .local v1, "ui":Landroid/content/pm/UserInfo;
    iget-object v6, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    iget v8, v1, Landroid/content/pm/UserInfo;->id:I

    iget v9, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v9}, Lcom/android/server/devicepolicy/Owners;->hasProfileOwner(I)Z

    move-result v9

    invoke-virtual {v6, v8, v9}, Landroid/os/UserManagerInternal;->setUserManaged(IZ)V

    goto :goto_1

    .line 150
    .end local v1    # "ui":Landroid/content/pm/UserInfo;
    .end local v2    # "ui$iterator":Ljava/util/Iterator;
    :cond_2
    new-instance v6, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;

    invoke-direct {v6, p0}, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;-><init>(Lcom/android/server/devicepolicy/Owners;)V

    invoke-virtual {v6}, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->readFromFileLocked()V

    .line 152
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "ui$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 153
    .restart local v1    # "ui":Landroid/content/pm/UserInfo;
    new-instance v6, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;

    iget v8, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v6, p0, v8}, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;-><init>(Lcom/android/server/devicepolicy/Owners;I)V

    invoke-virtual {v6}, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;->readFromFileLocked()V

    goto :goto_2

    .line 160
    .end local v1    # "ui":Landroid/content/pm/UserInfo;
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->hasDeviceOwner()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerUserId()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/server/devicepolicy/Owners;->hasProfileOwner(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 161
    const-string/jumbo v6, "DevicePolicyManagerService"

    const-string/jumbo v8, "User %d has both DO and PO, which is not supported"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    .line 162
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerUserId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 161
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_4
    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->pushToPackageManagerLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v7

    .line 166
    return-void
.end method

.method removeProfileOwner(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 273
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/UserManagerInternal;->setUserManaged(IZ)V

    .line 276
    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->pushToPackageManagerLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 278
    return-void

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method saveSystemUpdateInfo(Landroid/app/admin/SystemUpdateInfo;)Z
    .locals 2
    .param p1, "newInfo"    # Landroid/app/admin/SystemUpdateInfo;

    .prologue
    .line 485
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 487
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 491
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    .line 492
    new-instance v0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;

    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;-><init>(Lcom/android/server/devicepolicy/Owners;)V

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->writeToFileLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 493
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 485
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method setDeviceOwner(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "ownerName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 226
    if-gez p3, :cond_0

    .line 227
    const-string/jumbo v0, "DevicePolicyManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid user id for device owner user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 233
    const/4 v1, 0x1

    .line 232
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/server/devicepolicy/Owners;->setDeviceOwnerWithRestrictionsMigrated(Landroid/content/ComponentName;Ljava/lang/String;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 235
    return-void

    .line 230
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method setDeviceOwnerRemoteBugreportUriAndHash(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "remoteBugreportUri"    # Ljava/lang/String;
    .param p2, "remoteBugreportHash"    # Ljava/lang/String;

    .prologue
    .line 375
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iput-object p1, v0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportUri:Ljava/lang/String;

    .line 378
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iput-object p2, v0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportHash:Ljava/lang/String;

    .line 380
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->writeDeviceOwner()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 382
    return-void

    .line 375
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method setDeviceOwnerUserRestrictionsMigrated()V
    .locals 3

    .prologue
    .line 364
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->userRestrictionsMigrated:Z

    .line 368
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->writeDeviceOwner()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 370
    return-void

    .line 364
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method setDeviceOwnerWithRestrictionsMigrated(Landroid/content/ComponentName;Ljava/lang/String;IZ)V
    .locals 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "ownerName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "userRestrictionsMigrated"    # Z

    .prologue
    .line 241
    iget-object v6, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 242
    :try_start_0
    new-instance v0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    .line 243
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    move-object v2, p1

    move v3, p4

    .line 242
    invoke-direct/range {v0 .. v5}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;ZLjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    .line 244
    iput p3, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    .line 246
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManagerInternal;->setDeviceManaged(Z)V

    .line 247
    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->pushToPackageManagerLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 249
    return-void

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .locals 9
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "ownerName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 262
    iget-object v6, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 264
    :try_start_0
    iget-object v7, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    .line 265
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 266
    const/4 v5, 0x0

    move-object v1, p2

    move-object v2, p1

    .line 264
    invoke-direct/range {v0 .. v5}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Landroid/os/UserManagerInternal;->setUserManaged(IZ)V

    .line 268
    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->pushToPackageManagerLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 270
    return-void

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method setProfileOwnerUserRestrictionsMigrated(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 386
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 387
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    .line 388
    .local v0, "profileOwner":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    if-eqz v0, :cond_0

    .line 389
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->userRestrictionsMigrated:Z

    .line 391
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/Owners;->writeProfileOwner(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 393
    return-void

    .line 386
    .end local v0    # "profileOwner":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method setSystemUpdatePolicy(Landroid/app/admin/SystemUpdatePolicy;)V
    .locals 2
    .param p1, "systemUpdatePolicy"    # Landroid/app/admin/SystemUpdatePolicy;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 315
    :try_start_0
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 317
    return-void

    .line 314
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method writeDeviceOwner()V
    .locals 2

    .prologue
    .line 461
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 465
    :try_start_0
    new-instance v0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;

    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;-><init>(Lcom/android/server/devicepolicy/Owners;)V

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->writeToFileLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 467
    return-void

    .line 461
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method writeProfileOwner(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 470
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 474
    :try_start_0
    new-instance v0, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;

    invoke-direct {v0, p0, p1}, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;-><init>(Lcom/android/server/devicepolicy/Owners;I)V

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;->writeToFileLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 476
    return-void

    .line 470
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
