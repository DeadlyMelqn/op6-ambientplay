.class public final Lcom/oneplus/display/ColorBalanceManager;
.super Ljava/lang/Object;
.source "ColorBalanceManager.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final MSG_ACTIVE_MODE:I = 0x5

.field public static final MSG_CHECK_LIGHT:I = 0x10

.field public static final MSG_CHECK_SRGBSEN:I = 0xf

.field public static final MSG_DEFAULT_MODE:I = 0x6

.field public static final MSG_NIGHT2READING:I = 0xd

.field public static final MSG_NIGHT_ENVIRONMENT_CHANGED:I = 0x8

.field public static final MSG_NIGHT_SWITCH:I = 0xa

.field public static final MSG_READING2NIGHT:I = 0xe

.field public static final MSG_READING_ENVIRONMENT_CHANGED:I = 0x9

.field public static final MSG_READING_SWITCH:I = 0xb

.field public static final MSG_REVERT_STATUS:I = 0xc

.field public static final MSG_SAVE_MODE:I = 0x4

.field public static final MSG_SCREEN_AFTER_ON:I = 0x7

.field public static final MSG_SCREEN_OFF:I = 0x2

.field public static final MSG_SCREEN_ON:I = 0x1

.field public static final MSG_SET_COLORBALANCE:I = 0x3

.field public static final TAG:Ljava/lang/String; = "ColorBalanceManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGlobal:Lcom/oneplus/display/ColorBalanceManagerGlobal;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/display/ColorBalanceManager;->mLock:Ljava/lang/Object;

    .line 50
    iput-object p1, p0, Lcom/oneplus/display/ColorBalanceManager;->mContext:Landroid/content/Context;

    .line 51
    invoke-static {}, Lcom/oneplus/display/ColorBalanceManagerGlobal;->getInstance()Lcom/oneplus/display/ColorBalanceManagerGlobal;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/display/ColorBalanceManager;->mGlobal:Lcom/oneplus/display/ColorBalanceManagerGlobal;

    .line 52
    iget-object v0, p0, Lcom/oneplus/display/ColorBalanceManager;->mGlobal:Lcom/oneplus/display/ColorBalanceManagerGlobal;

    if-nez v0, :cond_0

    .line 53
    const-string/jumbo v0, "ColorBalanceManager"

    const-string/jumbo v1, "ColorBalanceManager service error!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    return-void
.end method


# virtual methods
.method public sendMsg(I)V
    .locals 2
    .param p1, "v"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcom/oneplus/display/ColorBalanceManager;->mGlobal:Lcom/oneplus/display/ColorBalanceManagerGlobal;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/oneplus/display/ColorBalanceManager;->mGlobal:Lcom/oneplus/display/ColorBalanceManagerGlobal;

    invoke-virtual {v0, p1}, Lcom/oneplus/display/ColorBalanceManagerGlobal;->sendMsg(I)V

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_0
    const-string/jumbo v0, "ColorBalanceManager"

    const-string/jumbo v1, "mGlobal null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setActiveMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/oneplus/display/ColorBalanceManager;->mGlobal:Lcom/oneplus/display/ColorBalanceManagerGlobal;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/oneplus/display/ColorBalanceManager;->mGlobal:Lcom/oneplus/display/ColorBalanceManagerGlobal;

    invoke-virtual {v0, p1}, Lcom/oneplus/display/ColorBalanceManagerGlobal;->setActiveMode(I)V

    .line 72
    :goto_0
    return-void

    .line 71
    :cond_0
    const-string/jumbo v0, "ColorBalanceManager"

    const-string/jumbo v1, "mGlobal null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setColorBalance(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oneplus/display/ColorBalanceManager;->mGlobal:Lcom/oneplus/display/ColorBalanceManagerGlobal;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/oneplus/display/ColorBalanceManager;->mGlobal:Lcom/oneplus/display/ColorBalanceManagerGlobal;

    invoke-virtual {v0, p1}, Lcom/oneplus/display/ColorBalanceManagerGlobal;->setColorBalance(I)V

    .line 90
    :goto_0
    return-void

    .line 89
    :cond_0
    const-string/jumbo v0, "ColorBalanceManager"

    const-string/jumbo v1, "mGlobal null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDefaultMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lcom/oneplus/display/ColorBalanceManager;->mGlobal:Lcom/oneplus/display/ColorBalanceManagerGlobal;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/oneplus/display/ColorBalanceManager;->mGlobal:Lcom/oneplus/display/ColorBalanceManagerGlobal;

    invoke-virtual {v0, p1}, Lcom/oneplus/display/ColorBalanceManagerGlobal;->setDefaultMode(I)V

    .line 81
    :goto_0
    return-void

    .line 80
    :cond_0
    const-string/jumbo v0, "ColorBalanceManager"

    const-string/jumbo v1, "mGlobal null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
