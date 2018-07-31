.class public Lcom/android/systemui/SystemUIService;
.super Landroid/app/Service;
.source "SystemUIService.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mFontConfig:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 34
    const-string/jumbo v0, "SystemUIService"

    iput-object v0, p0, Lcom/android/systemui/SystemUIService;->TAG:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/SystemUIService;->mFontConfig:I

    .line 31
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/SystemUIService;->getApplication()Landroid/app/Application;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/SystemUIApplication;

    invoke-virtual {v4}, Lcom/android/systemui/SystemUIApplication;->getServices()[Lcom/android/systemui/SystemUI;

    move-result-object v1

    .line 71
    .local v1, "services":[Lcom/android/systemui/SystemUI;
    if-eqz p3, :cond_0

    array-length v4, p3

    if-nez v4, :cond_1

    .line 72
    :cond_0
    array-length v4, v1

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v3, v1, v5

    .line 73
    .local v3, "ui":Lcom/android/systemui/SystemUI;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "dumping service: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/systemui/SystemUI;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui/SystemUI;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 72
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 77
    .end local v3    # "ui":Lcom/android/systemui/SystemUI;
    :cond_1
    aget-object v2, p3, v5

    .line 78
    .local v2, "svc":Ljava/lang/String;
    array-length v6, v1

    move v4, v5

    :goto_1
    if-ge v4, v6, :cond_3

    aget-object v3, v1, v4

    .line 79
    .restart local v3    # "ui":Lcom/android/systemui/SystemUI;
    invoke-virtual {v3}, Lcom/android/systemui/SystemUI;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 81
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui/SystemUI;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 78
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 85
    .end local v0    # "name":Ljava/lang/String;
    .end local v2    # "svc":Ljava/lang/String;
    .end local v3    # "ui":Lcom/android/systemui/SystemUI;
    :cond_3
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 90
    iget v0, p1, Landroid/content/res/Configuration;->oneplusfont:I

    iget v1, p0, Lcom/android/systemui/SystemUIService;->mFontConfig:I

    if-eq v0, v1, :cond_0

    .line 91
    iget v0, p1, Landroid/content/res/Configuration;->oneplusfont:I

    invoke-static {v0}, Landroid/graphics/Typeface;->changeFont(I)V

    .line 92
    iget v0, p1, Landroid/content/res/Configuration;->oneplusfont:I

    iput v0, p0, Lcom/android/systemui/SystemUIService;->mFontConfig:I

    .line 94
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 40
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 41
    invoke-virtual {p0}, Lcom/android/systemui/SystemUIService;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/SystemUIApplication;

    invoke-virtual {v2}, Lcom/android/systemui/SystemUIApplication;->startServicesIfNeeded()V

    .line 44
    const/4 v1, 0x1

    .line 46
    .local v1, "fontId":I
    :try_start_0
    const-string/jumbo v2, "persist.sys.font"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 51
    :goto_0
    iget v2, p0, Lcom/android/systemui/SystemUIService;->mFontConfig:I

    if-eq v2, v1, :cond_0

    .line 52
    invoke-static {v1}, Landroid/graphics/Typeface;->changeFont(I)V

    .line 53
    iput v1, p0, Lcom/android/systemui/SystemUIService;->mFontConfig:I

    .line 58
    :cond_0
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "debug.crash_sysui"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 59
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SystemUIService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[Font]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 61
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method
