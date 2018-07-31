.class public Lcom/oneplus/embryo/EmbryoApp;
.super Ljava/lang/Object;
.source "EmbryoApp.java"

# interfaces
.implements Lcom/oneplus/embryo/IEmbryoApp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/embryo/EmbryoApp$NullEmbryo;,
        Lcom/oneplus/embryo/EmbryoApp$ReflectionHelper;
    }
.end annotation


# static fields
.field private static final ENABLE:Z

.field private static final TAG:Ljava/lang/String; = "Embryo"

.field private static helper:Lcom/oneplus/embryo/EmbryoApp$ReflectionHelper;

.field private static instance:Lcom/oneplus/embryo/EmbryoApp;

.field private static isEmbryo:Z


# instance fields
.field private impl:Lcom/oneplus/embryo/IEmbryoApp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const-string/jumbo v0, "persist.sys.embryo"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/embryo/EmbryoApp;->ENABLE:Z

    .line 38
    new-instance v0, Lcom/oneplus/embryo/EmbryoApp$ReflectionHelper;

    invoke-direct {v0}, Lcom/oneplus/embryo/EmbryoApp$ReflectionHelper;-><init>()V

    sput-object v0, Lcom/oneplus/embryo/EmbryoApp;->helper:Lcom/oneplus/embryo/EmbryoApp$ReflectionHelper;

    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/embryo/EmbryoApp;->isEmbryo:Z

    .line 34
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget-boolean v1, Lcom/oneplus/embryo/EmbryoApp;->ENABLE:Z

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    :cond_0
    new-instance v1, Lcom/oneplus/embryo/EmbryoApp$NullEmbryo;

    invoke-direct {v1, v2}, Lcom/oneplus/embryo/EmbryoApp$NullEmbryo;-><init>(Lcom/oneplus/embryo/EmbryoApp$NullEmbryo;)V

    iput-object v1, p0, Lcom/oneplus/embryo/EmbryoApp;->impl:Lcom/oneplus/embryo/IEmbryoApp;

    .line 75
    :goto_0
    return-void

    .line 66
    :cond_1
    sget-object v1, Lcom/oneplus/embryo/EmbryoApp;->helper:Lcom/oneplus/embryo/EmbryoApp$ReflectionHelper;

    invoke-virtual {v1}, Lcom/oneplus/embryo/EmbryoApp$ReflectionHelper;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    :try_start_0
    sget-object v1, Lcom/oneplus/embryo/EmbryoApp;->helper:Lcom/oneplus/embryo/EmbryoApp$ReflectionHelper;

    invoke-virtual {v1}, Lcom/oneplus/embryo/EmbryoApp$ReflectionHelper;->get()Lcom/oneplus/embryo/IEmbryoApp;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/embryo/EmbryoApp;->impl:Lcom/oneplus/embryo/IEmbryoApp;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/oneplus/embryo/EmbryoApp$NullEmbryo;

    invoke-direct {v1, v2}, Lcom/oneplus/embryo/EmbryoApp$NullEmbryo;-><init>(Lcom/oneplus/embryo/EmbryoApp$NullEmbryo;)V

    iput-object v1, p0, Lcom/oneplus/embryo/EmbryoApp;->impl:Lcom/oneplus/embryo/IEmbryoApp;

    goto :goto_0

    .line 73
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v1, Lcom/oneplus/embryo/EmbryoApp$NullEmbryo;

    invoke-direct {v1, v2}, Lcom/oneplus/embryo/EmbryoApp$NullEmbryo;-><init>(Lcom/oneplus/embryo/EmbryoApp$NullEmbryo;)V

    iput-object v1, p0, Lcom/oneplus/embryo/EmbryoApp;->impl:Lcom/oneplus/embryo/IEmbryoApp;

    goto :goto_0
.end method

.method public static final getInstance()Lcom/oneplus/embryo/EmbryoApp;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/oneplus/embryo/EmbryoApp;->instance:Lcom/oneplus/embryo/EmbryoApp;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/oneplus/embryo/EmbryoApp;

    invoke-direct {v0}, Lcom/oneplus/embryo/EmbryoApp;-><init>()V

    sput-object v0, Lcom/oneplus/embryo/EmbryoApp;->instance:Lcom/oneplus/embryo/EmbryoApp;

    .line 45
    :cond_0
    sget-object v0, Lcom/oneplus/embryo/EmbryoApp;->instance:Lcom/oneplus/embryo/EmbryoApp;

    return-object v0
.end method

.method public static final getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/oneplus/embryo/EmbryoApp;->helper:Lcom/oneplus/embryo/EmbryoApp$ReflectionHelper;

    invoke-virtual {v0}, Lcom/oneplus/embryo/EmbryoApp$ReflectionHelper;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isDataAccessable(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 89
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_0

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->isCredentialProtectedStorage()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    const-class v3, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 92
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 91
    invoke-static {v3}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 90
    if-eqz v3, :cond_0

    .line 93
    return v2

    .line 96
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v0

    .line 97
    .local v0, "data":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :cond_1
    return v2

    .line 98
    .end local v0    # "data":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Ljava/lang/Exception;
    return v2
.end method

.method public static isEmbryo()Z
    .locals 1

    .prologue
    .line 57
    sget-boolean v0, Lcom/oneplus/embryo/EmbryoApp;->isEmbryo:Z

    return v0
.end method

.method public static setMyself()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/embryo/EmbryoApp;->isEmbryo:Z

    .line 54
    return-void
.end method


# virtual methods
.method public attach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oneplus/embryo/EmbryoApp;->impl:Lcom/oneplus/embryo/IEmbryoApp;

    invoke-interface {v0, p1}, Lcom/oneplus/embryo/IEmbryoApp;->attach(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method public checkDecorLayout(Landroid/content/Context;I)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutResource"    # I

    .prologue
    .line 120
    invoke-static {p1}, Lcom/oneplus/embryo/EmbryoApp;->isDataAccessable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    const/4 v0, 0x0

    return-object v0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/oneplus/embryo/EmbryoApp;->impl:Lcom/oneplus/embryo/IEmbryoApp;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/embryo/IEmbryoApp;->checkDecorLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public checkHWUI(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    invoke-static {p1}, Lcom/oneplus/embryo/EmbryoApp;->isDataAccessable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/oneplus/embryo/EmbryoApp;->impl:Lcom/oneplus/embryo/IEmbryoApp;

    invoke-interface {v0, p1}, Lcom/oneplus/embryo/IEmbryoApp;->checkHWUI(Landroid/content/Context;)V

    .line 109
    return-void
.end method

.method public checkMainLayout(Landroid/content/Context;I)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutResource"    # I

    .prologue
    .line 113
    invoke-static {p1}, Lcom/oneplus/embryo/EmbryoApp;->isDataAccessable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    const/4 v0, 0x0

    return-object v0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/oneplus/embryo/EmbryoApp;->impl:Lcom/oneplus/embryo/IEmbryoApp;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/embryo/IEmbryoApp;->checkMainLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oneplus/embryo/EmbryoApp;->impl:Lcom/oneplus/embryo/IEmbryoApp;

    invoke-interface {v0}, Lcom/oneplus/embryo/IEmbryoApp;->getRunnable()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method
