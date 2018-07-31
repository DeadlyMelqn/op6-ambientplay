.class public Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl_dumy;
.super Ljava/lang/Object;
.source "OPZenModeControllerImpl_dumy.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OPZenModeController;


# static fields
.field private static DEBUG:Z


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDndEnable:Z

.field private mHandler:Landroid/os/Handler;

.field private mThreeKeySatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/android/systemui/util/Utils;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl_dumy;->DEBUG:Z

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl_dumy;->mDndEnable:Z

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl_dumy;->mThreeKeySatus:I

    .line 44
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl_dumy;->mCallbacks:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl_dumy;->mHandler:Landroid/os/Handler;

    .line 54
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;

    .prologue
    .line 67
    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 64
    check-cast p1, Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl_dumy;->addCallback(Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;)V

    return-void
.end method

.method public getDndEnable()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl_dumy;->mDndEnable:Z

    return v0
.end method

.method public getThreeKeySatus()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl_dumy;->mThreeKeySatus:I

    return v0
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;

    .prologue
    .line 72
    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 69
    check-cast p1, Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl_dumy;->removeCallback(Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;)V

    return-void
.end method

.method public setDndEnable(Z)V
    .locals 0
    .param p1, "isEnable"    # Z

    .prologue
    .line 58
    return-void
.end method
