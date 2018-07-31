.class public Lcom/android/server/companion/CompanionDeviceManagerService;
.super Lcom/android/server/SystemService;
.source "CompanionDeviceManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/companion/CompanionDeviceManagerService$Association;,
        Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;,
        Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CompanionDeviceManagerService"

.field private static final SERVICE_TO_BIND_TO:Landroid/content/ComponentName;

.field private static final XML_ATTR_DEVICE:Ljava/lang/String; = "device"

.field private static final XML_ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final XML_FILE_NAME:Ljava/lang/String; = "companion_device_manager_associations.xml"

.field private static final XML_TAG_ASSOCIATION:Ljava/lang/String; = "association"

.field private static final XML_TAG_ASSOCIATIONS:Ljava/lang/String; = "associations"


# instance fields
.field private mAppOpsManager:Lcom/android/internal/app/IAppOpsService;

.field private mCallingPackage:Ljava/lang/String;

.field private mFindDeviceCallback:Landroid/companion/IFindDeviceCallback;

.field private mIdleController:Landroid/os/IDeviceIdleController;

.field private final mImpl:Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;

.field private final mLock:Ljava/lang/Object;

.field private mRequest:Landroid/companion/AssociationRequest;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private final mUidToStorage:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/util/AtomicFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Landroid/content/ComponentName;
    .locals 1

    sget-object v0, Lcom/android/server/companion/CompanionDeviceManagerService;->SERVICE_TO_BIND_TO:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/internal/app/IAppOpsService;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/companion/CompanionDeviceManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAppOpsManager:Lcom/android/internal/app/IAppOpsService;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/companion/CompanionDeviceManagerService;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/companion/CompanionDeviceManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCallingPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/companion/CompanionDeviceManagerService;)Landroid/companion/IFindDeviceCallback;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/companion/CompanionDeviceManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mFindDeviceCallback:Landroid/companion/IFindDeviceCallback;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/companion/CompanionDeviceManagerService;)Landroid/companion/AssociationRequest;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/companion/CompanionDeviceManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mRequest:Landroid/companion/AssociationRequest;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "-this"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p1, "-value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCallingPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/companion/IFindDeviceCallback;)Landroid/companion/IFindDeviceCallback;
    .locals 0
    .param p0, "-this"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p1, "-value"    # Landroid/companion/IFindDeviceCallback;

    .prologue
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mFindDeviceCallback:Landroid/companion/IFindDeviceCallback;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/companion/AssociationRequest;)Landroid/companion/AssociationRequest;
    .locals 0
    .param p0, "-this"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p1, "-value"    # Landroid/companion/AssociationRequest;

    .prologue
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mRequest:Landroid/companion/AssociationRequest;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/companion/CompanionDeviceManagerService;)Landroid/companion/ICompanionDeviceDiscoveryServiceCallback$Stub;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/companion/CompanionDeviceManagerService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getServiceCallback()Landroid/companion/ICompanionDeviceDiscoveryServiceCallback$Stub;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/companion/AssociationRequest;Landroid/companion/IFindDeviceCallback;Ljava/lang/String;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p1, "request"    # Landroid/companion/AssociationRequest;
    .param p2, "findDeviceCallback"    # Landroid/companion/IFindDeviceCallback;
    .param p3, "callingPackage"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/companion/CompanionDeviceManagerService;->createServiceConnection(Landroid/companion/AssociationRequest;Landroid/companion/IFindDeviceCallback;Ljava/lang/String;)Landroid/content/ServiceConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3()Z
    .locals 1

    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->isCallerSystem()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4()I
    .locals 1

    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->getCallingUserId()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/companion/CompanionDeviceManagerService;I)Ljava/util/Set;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->readAllAssociations(I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;)Ljava/util/Set;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p1, "userId"    # I
    .param p2, "packageFilter"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->readAllAssociations(ILjava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap7(Lcom/android/server/companion/CompanionDeviceManagerService;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/companion/CompanionDeviceManagerService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->cleanup()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/util/function/Function;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p1, "update"    # Ljava/util/function/Function;
    .param p2, "userId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->updateAssociations(Ljava/util/function/Function;I)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->updateSpecialAccessPermissionForAssociatedPackage(Ljava/lang/String;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 101
    const-string/jumbo v0, "com.android.companiondevicemanager"

    .line 102
    const-string/jumbo v1, ".DeviceDiscoveryService"

    .line 100
    invoke-static {v0, v1}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/android/server/companion/CompanionDeviceManagerService;->SERVICE_TO_BIND_TO:Landroid/content/ComponentName;

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 114
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mUidToStorage:Ljava/util/concurrent/ConcurrentMap;

    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mLock:Ljava/lang/Object;

    .line 127
    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;

    invoke-direct {v0, p0}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mImpl:Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;

    .line 129
    const-string/jumbo v0, "deviceidle"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 128
    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mIdleController:Landroid/os/IDeviceIdleController;

    .line 131
    const-string/jumbo v0, "appops"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 130
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAppOpsManager:Lcom/android/internal/app/IAppOpsService;

    .line 132
    invoke-direct {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->registerPackageMonitor()V

    .line 133
    return-void
.end method

.method private cleanup()V
    .locals 3

    .prologue
    .line 167
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-direct {p0, v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->unbind(Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 169
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mFindDeviceCallback:Landroid/companion/IFindDeviceCallback;

    const/4 v2, 0x0

    invoke-static {v0, p0, v2}, Lcom/android/server/companion/CompanionDeviceManagerService;->unlinkToDeath(Landroid/os/IInterface;Landroid/os/IBinder$DeathRecipient;I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/companion/IFindDeviceCallback;

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mFindDeviceCallback:Landroid/companion/IFindDeviceCallback;

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mRequest:Landroid/companion/AssociationRequest;

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCallingPackage:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 173
    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static containsEither([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;TT;)Z"
        }
    .end annotation

    .prologue
    .line 472
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "a":Ljava/lang/Object;, "TT;"
    .local p2, "b":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private createServiceConnection(Landroid/companion/AssociationRequest;Landroid/companion/IFindDeviceCallback;Ljava/lang/String;)Landroid/content/ServiceConnection;
    .locals 1
    .param p1, "request"    # Landroid/companion/AssociationRequest;
    .param p2, "findDeviceCallback"    # Landroid/companion/IFindDeviceCallback;
    .param p3, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 358
    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$2;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/android/server/companion/CompanionDeviceManagerService$2;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/companion/IFindDeviceCallback;Landroid/companion/AssociationRequest;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 397
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method private static getCallingUserId()I
    .locals 1

    .prologue
    .line 347
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method private getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 477
    new-instance v0, Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM$7;

    invoke-direct {v0, p2, p0, p1}, Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM$7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method private getServiceCallback()Landroid/companion/ICompanionDeviceDiscoveryServiceCallback$Stub;
    .locals 1

    .prologue
    .line 401
    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/companion/CompanionDeviceManagerService$3;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    return-object v0
.end method

.method private getStorageFileForUser(I)Landroid/util/AtomicFile;
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mUidToStorage:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM;->$INST$1:Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/AtomicFile;

    return-object v0
.end method

.method private static isCallerSystem()Z
    .locals 2

    .prologue
    .line 351
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$-com_android_server_companion_CompanionDeviceManagerService_20963(Ljava/util/Set;Ljava/io/FileOutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/FileOutputStream;

    .prologue
    .line 515
    .local p0, "finalAssociations":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;"
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 517
    .local v1, "xml":Lorg/xmlpull/v1/XmlSerializer;
    :try_start_0
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 518
    const-string/jumbo v2, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 519
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 520
    const-string/jumbo v2, "associations"

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 522
    new-instance v2, Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM$1;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM$1;-><init>(BLjava/lang/Object;)V

    invoke-static {p0, v2}, Lcom/android/internal/util/CollectionUtils;->forEach(Ljava/util/Set;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 529
    const-string/jumbo v2, "associations"

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 530
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 531
    :catch_0
    move-exception v0

    .line 532
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "CompanionDeviceManagerService"

    const-string/jumbo v3, "Error while writing associations file"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 533
    invoke-static {v0}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static synthetic lambda$-com_android_server_companion_CompanionDeviceManagerService_21400(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/companion/CompanionDeviceManagerService$Association;)V
    .locals 4
    .param p0, "xml"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "association"    # Lcom/android/server/companion/CompanionDeviceManagerService$Association;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 523
    const-string/jumbo v0, "association"

    invoke-interface {p0, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    .line 524
    const-string/jumbo v1, "package"

    iget-object v2, p1, Lcom/android/server/companion/CompanionDeviceManagerService$Association;->companionAppPackage:Ljava/lang/String;

    .line 523
    invoke-interface {v0, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    .line 525
    const-string/jumbo v1, "device"

    iget-object v2, p1, Lcom/android/server/companion/CompanionDeviceManagerService$Association;->deviceAddress:Ljava/lang/String;

    .line 523
    invoke-interface {v0, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    .line 526
    const-string/jumbo v1, "association"

    .line 523
    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method static synthetic lambda$-com_android_server_companion_CompanionDeviceManagerService_22200(Ljava/lang/Integer;)Landroid/util/AtomicFile;
    .locals 4
    .param p0, "u"    # Ljava/lang/Integer;

    .prologue
    .line 542
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    .line 544
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    .line 545
    const-string/jumbo v3, "companion_device_manager_associations.xml"

    .line 542
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method private readAllAssociations(I)Ljava/util/Set;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/companion/CompanionDeviceManagerService$Association;",
            ">;"
        }
    .end annotation

    .prologue
    .line 550
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->readAllAssociations(ILjava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private readAllAssociations(ILjava/lang/String;)Ljava/util/Set;
    .locals 15
    .param p1, "userId"    # I
    .param p2, "packageFilter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/companion/CompanionDeviceManagerService$Association;",
            ">;"
        }
    .end annotation

    .prologue
    .line 555
    invoke-direct/range {p0 .. p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->getStorageFileForUser(I)Landroid/util/AtomicFile;

    move-result-object v8

    .line 557
    .local v8, "file":Landroid/util/AtomicFile;
    invoke-virtual {v8}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 559
    :cond_0
    const/4 v11, 0x0

    .line 560
    .local v11, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;"
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10

    .line 561
    .local v10, "parser":Lorg/xmlpull/v1/XmlPullParser;
    monitor-enter v8

    .line 562
    const/4 v13, 0x0

    const/4 v9, 0x0

    .local v9, "in":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {v8}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v9

    .line 563
    .local v9, "in":Ljava/io/FileInputStream;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v9, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 565
    .end local v11    # "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;"
    :cond_1
    :goto_0
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    .local v12, "type":I
    const/4 v1, 0x1

    if-eq v12, v1, :cond_4

    .line 566
    const/4 v1, 0x2

    if-eq v12, v1, :cond_2

    .line 567
    const-string/jumbo v1, "associations"

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 566
    if-nez v1, :cond_1

    .line 569
    :cond_2
    const-string/jumbo v1, "package"

    const/4 v2, 0x0

    invoke-interface {v10, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 570
    .local v5, "appPackage":Ljava/lang/String;
    const-string/jumbo v1, "device"

    const/4 v2, 0x0

    invoke-interface {v10, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 572
    .local v4, "deviceAddress":Ljava/lang/String;
    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    .line 573
    if-eqz p2, :cond_3

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    .line 576
    :cond_3
    new-instance v1, Lcom/android/server/companion/CompanionDeviceManagerService$Association;

    const/4 v6, 0x0

    move-object v2, p0

    move/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/companion/CompanionDeviceManagerService$Association;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/companion/CompanionDeviceManagerService$Association;)V

    .line 575
    invoke-static {v11, v1}, Lcom/android/internal/util/ArrayUtils;->add(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v11

    .local v11, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;"
    goto :goto_0

    .line 582
    .end local v4    # "deviceAddress":Ljava/lang/String;
    .end local v5    # "appPackage":Ljava/lang/String;
    .end local v11    # "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;"
    :cond_4
    if-eqz v9, :cond_5

    :try_start_1
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_5
    :goto_1
    if-eqz v13, :cond_6

    :try_start_2
    throw v13
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 579
    .end local v9    # "in":Ljava/io/FileInputStream;
    .end local v12    # "type":I
    :catch_0
    move-exception v7

    .line 580
    .local v7, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v1, "CompanionDeviceManagerService"

    const-string/jumbo v2, "Error while reading associations file"

    invoke-static {v1, v2, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 581
    const/4 v1, 0x0

    monitor-exit v8

    return-object v1

    .line 582
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v9    # "in":Ljava/io/FileInputStream;
    .restart local v12    # "type":I
    :catch_1
    move-exception v13

    goto :goto_1

    :cond_6
    monitor-exit v8

    .line 578
    return-object v11

    .line 582
    .end local v9    # "in":Ljava/io/FileInputStream;
    .end local v12    # "type":I
    :catch_2
    move-exception v1

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v2

    move-object v14, v2

    move-object v2, v1

    move-object v1, v14

    :goto_2
    if-eqz v9, :cond_7

    :try_start_5
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_7
    :goto_3
    if-eqz v2, :cond_9

    :try_start_6
    throw v2
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 561
    :catchall_1
    move-exception v1

    monitor-exit v8

    throw v1

    .line 582
    :catch_3
    move-exception v3

    if-nez v2, :cond_8

    move-object v2, v3

    goto :goto_3

    :cond_8
    if-eq v2, v3, :cond_7

    :try_start_7
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_9
    throw v1
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_2
    move-exception v1

    move-object v2, v13

    goto :goto_2
.end method

.method private recordAssociation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "priviledgedPackage"    # Ljava/lang/String;
    .param p2, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 495
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->getCallingUserId()I

    move-result v2

    .line 496
    .local v2, "userId":I
    new-instance v0, Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM$8;

    const/4 v1, 0x0

    move-object v3, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM$8;-><init>(BILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->updateAssociations(Ljava/util/function/Function;)V

    .line 498
    return-void
.end method

.method private registerPackageMonitor()V
    .locals 5

    .prologue
    .line 136
    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/companion/CompanionDeviceManagerService$1;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x1

    .line 136
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/companion/CompanionDeviceManagerService$1;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 154
    return-void
.end method

.method private unbind(Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 2
    .param p1, "conn"    # Landroid/content/ServiceConnection;

    .prologue
    const/4 v1, 0x0

    .line 191
    if-eqz p1, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 194
    :cond_0
    return-object v1
.end method

.method private static unlinkToDeath(Landroid/os/IInterface;Landroid/os/IBinder$DeathRecipient;I)Landroid/os/IInterface;
    .locals 2
    .param p1, "deathRecipient"    # Landroid/os/IBinder$DeathRecipient;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">(TT;",
            "Landroid/os/IBinder$DeathRecipient;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .local p0, "iinterface":Landroid/os/IInterface;, "TT;"
    const/4 v1, 0x0

    .line 182
    if-eqz p0, :cond_0

    .line 183
    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 185
    :cond_0
    return-object v1
.end method

.method private updateAssociations(Ljava/util/function/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/companion/CompanionDeviceManagerService$Association;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/companion/CompanionDeviceManagerService$Association;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 501
    .local p1, "update":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Set<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;Ljava/util/Set<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;>;"
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->updateAssociations(Ljava/util/function/Function;I)V

    .line 502
    return-void
.end method

.method private updateAssociations(Ljava/util/function/Function;I)V
    .locals 6
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/companion/CompanionDeviceManagerService$Association;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/companion/CompanionDeviceManagerService$Association;",
            ">;>;I)V"
        }
    .end annotation

    .prologue
    .line 506
    .local p1, "update":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Set<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;Ljava/util/Set<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;>;"
    invoke-direct {p0, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->getStorageFileForUser(I)Landroid/util/AtomicFile;

    move-result-object v1

    .line 507
    .local v1, "file":Landroid/util/AtomicFile;
    monitor-enter v1

    .line 508
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->readAllAssociations(I)Ljava/util/Set;

    move-result-object v0

    .line 509
    .local v0, "associations":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;"
    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->copyOf(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 510
    .local v3, "old":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;"
    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "associations":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;"
    check-cast v0, Ljava/util/Set;

    .line 511
    .restart local v0    # "associations":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;"
    invoke-static {v3}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v4

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-ne v4, v5, :cond_0

    monitor-exit v1

    return-void

    .line 513
    :cond_0
    move-object v2, v0

    .line 514
    .local v2, "finalAssociations":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;"
    :try_start_1
    new-instance v4, Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM$3;

    invoke-direct {v4, v0}, Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM$3;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Landroid/util/AtomicFile;->write(Ljava/util/function/Consumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 538
    return-void

    .line 507
    .end local v0    # "associations":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;"
    .end local v2    # "finalAssociations":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;"
    .end local v3    # "old":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;"
    :catchall_0
    move-exception v4

    monitor-exit v1

    throw v4
.end method

.method private updateSpecialAccessPermissionForAssociatedPackage(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 438
    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 439
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_0

    .line 440
    return-void

    .line 443
    :cond_0
    new-instance v1, Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM$6;

    invoke-direct {v1, p0, v0}, Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM$6;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 469
    return-void
.end method


# virtual methods
.method synthetic -com_android_server_companion_CompanionDeviceManagerService-mthref-0()V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->cleanup()V

    return-void
.end method

.method addAssociation(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 428
    invoke-direct {p0, p2, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->updateSpecialAccessPermissionForAssociatedPackage(Ljava/lang/String;I)V

    .line 429
    invoke-direct {p0, p2, p3}, Lcom/android/server/companion/CompanionDeviceManagerService;->recordAssociation(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    return-void
.end method

.method public binderDied()V
    .locals 2

    .prologue
    .line 163
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM$2;

    invoke-direct {v1, p0}, Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM$2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 164
    return-void
.end method

.method synthetic lambda$-com_android_server_companion_CompanionDeviceManagerService_17294(ILjava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 6
    .param p1, "userId"    # I
    .param p2, "deviceMacAddress"    # Ljava/lang/String;
    .param p3, "pkg"    # Ljava/lang/String;

    .prologue
    .line 434
    .local p4, "associations":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;"
    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$Association;

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/companion/CompanionDeviceManagerService$Association;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/companion/CompanionDeviceManagerService$Association;)V

    .line 433
    invoke-static {p4, v0}, Lcom/android/internal/util/CollectionUtils;->remove(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$-com_android_server_companion_CompanionDeviceManagerService_17698(Landroid/content/pm/PackageInfo;)V
    .locals 6
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    .line 445
    :try_start_0
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 446
    const-string/jumbo v3, "android.permission.RUN_IN_BACKGROUND"

    .line 447
    const-string/jumbo v4, "android.permission.REQUEST_COMPANION_RUN_IN_BACKGROUND"

    .line 445
    invoke-static {v2, v3, v4}, Lcom/android/server/companion/CompanionDeviceManagerService;->containsEither([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 448
    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mIdleController:Landroid/os/IDeviceIdleController;

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/os/IDeviceIdleController;->addPowerSaveWhitelistApp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    .line 457
    .local v1, "networkPolicyManager":Landroid/net/NetworkPolicyManager;
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 458
    const-string/jumbo v3, "android.permission.USE_DATA_IN_BACKGROUND"

    .line 459
    const-string/jumbo v4, "android.permission.REQUEST_COMPANION_USE_DATA_IN_BACKGROUND"

    .line 457
    invoke-static {v2, v3, v4}, Lcom/android/server/companion/CompanionDeviceManagerService;->containsEither([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 461
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 460
    invoke-virtual {v1, v2, v5}, Landroid/net/NetworkPolicyManager;->addUidPolicy(II)V

    :goto_1
    return-void

    .line 450
    .end local v1    # "networkPolicyManager":Landroid/net/NetworkPolicyManager;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mIdleController:Landroid/os/IDeviceIdleController;

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/os/IDeviceIdleController;->removePowerSaveWhitelistApp(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 452
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 465
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "networkPolicyManager":Landroid/net/NetworkPolicyManager;
    :cond_1
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 464
    invoke-virtual {v1, v2, v5}, Landroid/net/NetworkPolicyManager;->removeUidPolicy(II)V

    goto :goto_1
.end method

.method synthetic lambda$-com_android_server_companion_CompanionDeviceManagerService_19290(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 479
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 481
    const/16 v2, 0x5000

    .line 479
    invoke-virtual {v1, p1, v2, p2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 483
    :catch_0
    move-exception v0

    .line 484
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v1, "CompanionDeviceManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to get PackageInfo for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 485
    const/4 v1, 0x0

    return-object v1
.end method

.method synthetic lambda$-com_android_server_companion_CompanionDeviceManagerService_20115(ILjava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 6
    .param p1, "userId"    # I
    .param p2, "deviceAddress"    # Ljava/lang/String;
    .param p3, "priviledgedPackage"    # Ljava/lang/String;

    .prologue
    .line 497
    .local p4, "associations":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;"
    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$Association;

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/companion/CompanionDeviceManagerService$Association;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/companion/CompanionDeviceManagerService$Association;)V

    .line 496
    invoke-static {p4, v0}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 158
    const-string/jumbo v0, "companiondevice"

    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mImpl:Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/companion/CompanionDeviceManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 159
    return-void
.end method

.method removeAssociation(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "deviceMacAddress"    # Ljava/lang/String;

    .prologue
    .line 433
    new-instance v0, Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM$8;

    const/4 v1, 0x1

    move v2, p1

    move-object v3, p0

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM$8;-><init>(BILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->updateAssociations(Ljava/util/function/Function;)V

    .line 435
    return-void
.end method
