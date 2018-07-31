.class Landroid/app/ApplicationPackageManager$DexModuleRegisterResult;
.super Ljava/lang/Object;
.source "ApplicationPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ApplicationPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DexModuleRegisterResult"
.end annotation


# instance fields
.field final dexModulePath:Ljava/lang/String;

.field final message:Ljava/lang/String;

.field final success:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1, "dexModulePath"    # Ljava/lang/String;
    .param p2, "success"    # Z
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 2860
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2861
    iput-object p1, p0, Landroid/app/ApplicationPackageManager$DexModuleRegisterResult;->dexModulePath:Ljava/lang/String;

    .line 2862
    iput-boolean p2, p0, Landroid/app/ApplicationPackageManager$DexModuleRegisterResult;->success:Z

    .line 2863
    iput-object p3, p0, Landroid/app/ApplicationPackageManager$DexModuleRegisterResult;->message:Ljava/lang/String;

    .line 2864
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZLjava/lang/String;Landroid/app/ApplicationPackageManager$DexModuleRegisterResult;)V
    .locals 0
    .param p1, "dexModulePath"    # Ljava/lang/String;
    .param p2, "success"    # Z
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "-this3"    # Landroid/app/ApplicationPackageManager$DexModuleRegisterResult;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/app/ApplicationPackageManager$DexModuleRegisterResult;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method
