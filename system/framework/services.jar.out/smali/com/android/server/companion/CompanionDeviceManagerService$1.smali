.class Lcom/android/server/companion/CompanionDeviceManagerService$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "CompanionDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/companion/CompanionDeviceManagerService;->registerPackageMonitor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/companion/CompanionDeviceManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/companion/CompanionDeviceManagerService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$1;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 136
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 1
    return-void
.end method

.method static synthetic lambda$-com_android_server_companion_CompanionDeviceManagerService$1_5606(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 141
    .local p1, "as":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;"
    new-instance v0, Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM$5;

    invoke-direct {v0, p0}, Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM$5;-><init>(Ljava/lang/Object;)V

    .line 140
    invoke-static {p1, v0}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/Set;Ljava/util/function/Predicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-com_android_server_companion_CompanionDeviceManagerService$1_5671(Ljava/lang/String;Lcom/android/server/companion/CompanionDeviceManagerService$Association;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "a"    # Lcom/android/server/companion/CompanionDeviceManagerService$Association;

    .prologue
    .line 141
    iget-object v0, p1, Lcom/android/server/companion/CompanionDeviceManagerService$Association;->companionAppPackage:Ljava/lang/String;

    invoke-static {v0, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public onPackageModified(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService$1;->getChangingUserId()I

    move-result v0

    .line 148
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$1;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v1, v0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->-wrap6(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$1;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v1, p1, v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-wrap9(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/lang/String;I)V

    .line 151
    :cond_0
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$1;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 140
    new-instance v1, Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM$4;

    invoke-direct {v1, p1}, Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM$4;-><init>(Ljava/lang/Object;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService$1;->getChangingUserId()I

    move-result v2

    .line 139
    invoke-static {v0, v1, v2}, Lcom/android/server/companion/CompanionDeviceManagerService;->-wrap8(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/util/function/Function;I)V

    .line 143
    return-void
.end method
