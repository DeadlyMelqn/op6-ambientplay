.class public Lcom/android/server/firewall/SenderPackageFilter;
.super Ljava/lang/Object;
.source "SenderPackageFilter.java"

# interfaces
.implements Lcom/android/server/firewall/Filter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/firewall/SenderPackageFilter$1;
    }
.end annotation


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field public static final FACTORY:Lcom/android/server/firewall/FilterFactory;


# instance fields
.field public final mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lcom/android/server/firewall/SenderPackageFilter$1;

    const-string/jumbo v1, "sender-package"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/SenderPackageFilter$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/SenderPackageFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/server/firewall/SenderPackageFilter;->mPackageName:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;I)Z
    .locals 7
    .param p1, "ifw"    # Lcom/android/server/firewall/IntentFirewall;
    .param p2, "resolvedComponent"    # Landroid/content/ComponentName;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "callerUid"    # I
    .param p5, "callerPid"    # I
    .param p6, "resolvedType"    # Ljava/lang/String;
    .param p7, "receivingUid"    # I

    .prologue
    const/4 v6, 0x0

    .line 44
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 46
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    const/4 v1, -0x1

    .line 50
    .local v1, "packageUid":I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/firewall/SenderPackageFilter;->mPackageName:Ljava/lang/String;

    const/high16 v4, 0x400000

    .line 51
    const/4 v5, 0x0

    .line 50
    invoke-interface {v2, v3, v4, v5}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 56
    :goto_0
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 57
    return v6

    .line 60
    :cond_0
    invoke-static {v1, p4}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    return v3

    .line 52
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method
