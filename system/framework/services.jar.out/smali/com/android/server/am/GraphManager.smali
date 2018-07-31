.class Lcom/android/server/am/GraphManager;
.super Ljava/lang/Object;
.source "GraphManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/GraphManager$1;
    }
.end annotation


# static fields
.field private static final DEBUG_ONEPLUS:Z

.field private static final GRAPH_CONFIG_NAME:Ljava/lang/String; = "GraphConfig"

.field private static final TAG:Ljava/lang/String; = "GraphManager"

.field private static sInstance:Lcom/android/server/am/GraphManager;


# instance fields
.field private mConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mConfigUpdater:Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/am/GraphManager;Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/am/GraphManager;
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/GraphManager;->resolveConfig(Lorg/json/JSONArray;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/GraphManager;->DEBUG_ONEPLUS:Z

    .line 44
    new-instance v0, Lcom/android/server/am/GraphManager;

    invoke-direct {v0}, Lcom/android/server/am/GraphManager;-><init>()V

    sput-object v0, Lcom/android/server/am/GraphManager;->sInstance:Lcom/android/server/am/GraphManager;

    .line 38
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/GraphManager;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 55
    new-instance v0, Lcom/android/server/am/GraphManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/GraphManager$1;-><init>(Lcom/android/server/am/GraphManager;)V

    iput-object v0, p0, Lcom/android/server/am/GraphManager;->mConfigUpdater:Lcom/oneplus/config/ConfigObserver$ConfigUpdater;

    .line 49
    return-void
.end method

.method public static getInstance()Lcom/android/server/am/GraphManager;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/android/server/am/GraphManager;->sInstance:Lcom/android/server/am/GraphManager;

    return-object v0
.end method

.method private resolveConfig(Lorg/json/JSONArray;)V
    .locals 10
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 70
    const-string/jumbo v7, "GraphManager"

    const-string/jumbo v8, "[OnlineConfig] GraphConfig jsonArray is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void

    .line 74
    :cond_0
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_7

    .line 75
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 76
    .local v5, "json":Lorg/json/JSONObject;
    const-string/jumbo v7, "name"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 77
    .local v6, "name":Ljava/lang/String;
    const-string/jumbo v7, "hwui_reduce_overdraw"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 78
    const-string/jumbo v7, "value"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 79
    .local v4, "jasonArray":Lorg/json/JSONArray;
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 80
    .local v2, "enable":Z
    const-string/jumbo v7, "persist.hwui.rehearsal"

    const/4 v8, 0x1

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 82
    .local v0, "curEnable":Z
    if-eq v2, v0, :cond_1

    .line 83
    const-string/jumbo v8, "persist.hwui.rehearsal"

    if-eqz v2, :cond_2

    const-string/jumbo v7, "1"

    :goto_1
    invoke-static {v8, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string/jumbo v7, "GraphManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[OnlineConfig] change hwui reduce overdraw "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .end local v0    # "curEnable":Z
    .end local v2    # "enable":Z
    .end local v4    # "jasonArray":Lorg/json/JSONArray;
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 83
    .restart local v0    # "curEnable":Z
    .restart local v2    # "enable":Z
    .restart local v4    # "jasonArray":Lorg/json/JSONArray;
    :cond_2
    const-string/jumbo v7, "0"

    goto :goto_1

    .line 86
    .end local v0    # "curEnable":Z
    .end local v2    # "enable":Z
    .end local v4    # "jasonArray":Lorg/json/JSONArray;
    :cond_3
    const-string/jumbo v7, "hwui_multi_bitmaps"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 87
    const-string/jumbo v7, "value"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 88
    .restart local v4    # "jasonArray":Lorg/json/JSONArray;
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 89
    .restart local v2    # "enable":Z
    const-string/jumbo v7, "persist.hwui.multidraw.bitmaps"

    const/4 v8, 0x1

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 91
    .restart local v0    # "curEnable":Z
    if-eq v2, v0, :cond_1

    .line 92
    const-string/jumbo v8, "persist.hwui.multidraw.bitmaps"

    if-eqz v2, :cond_4

    const-string/jumbo v7, "1"

    :goto_3
    invoke-static {v8, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string/jumbo v7, "GraphManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[OnlineConfig] change hwui multi bitmaps "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 107
    .end local v0    # "curEnable":Z
    .end local v2    # "enable":Z
    .end local v4    # "jasonArray":Lorg/json/JSONArray;
    .end local v5    # "json":Lorg/json/JSONObject;
    .end local v6    # "name":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "GraphManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[OnlineConfig] resolve error message:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4
    return-void

    .line 92
    .restart local v0    # "curEnable":Z
    .restart local v2    # "enable":Z
    .restart local v4    # "jasonArray":Lorg/json/JSONArray;
    .restart local v5    # "json":Lorg/json/JSONObject;
    .restart local v6    # "name":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string/jumbo v7, "0"

    goto :goto_3

    .line 95
    .end local v0    # "curEnable":Z
    .end local v2    # "enable":Z
    .end local v4    # "jasonArray":Lorg/json/JSONArray;
    :cond_5
    const-string/jumbo v7, "hwui_reinforce_program"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 96
    const-string/jumbo v7, "value"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 97
    .restart local v4    # "jasonArray":Lorg/json/JSONArray;
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 98
    .restart local v2    # "enable":Z
    const-string/jumbo v7, "persist.hwui.reinforce.program"

    const/4 v8, 0x1

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 100
    .restart local v0    # "curEnable":Z
    if-eq v2, v0, :cond_1

    .line 101
    const-string/jumbo v8, "persist.hwui.reinforce.program"

    if-eqz v2, :cond_6

    const-string/jumbo v7, "1"

    :goto_5
    invoke-static {v8, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string/jumbo v7, "GraphManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[OnlineConfig] change hwui reinforce program "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 101
    :cond_6
    const-string/jumbo v7, "0"

    goto :goto_5

    .line 106
    .end local v0    # "curEnable":Z
    .end local v2    # "enable":Z
    .end local v4    # "jasonArray":Lorg/json/JSONArray;
    .end local v5    # "json":Lorg/json/JSONObject;
    .end local v6    # "name":Ljava/lang/String;
    :cond_7
    const-string/jumbo v7, "GraphManager"

    const-string/jumbo v8, "[OnlineConfig] GraphConfig updated complete"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method


# virtual methods
.method public initiate(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 63
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/am/GraphManager;->mConfigUpdater:Lcom/oneplus/config/ConfigObserver$ConfigUpdater;

    const-string/jumbo v2, "GraphConfig"

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/GraphManager;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 64
    iget-object v0, p0, Lcom/android/server/am/GraphManager;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 65
    const-string/jumbo v0, "GraphManager"

    const-string/jumbo v1, "initiate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method
