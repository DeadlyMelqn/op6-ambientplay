.class final Lcom/android/server/power/PowerManagerService$UidState;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UidState"
.end annotation


# instance fields
.field mActive:Z

.field mNumWakeLocks:I

.field mProcState:I

.field final mUid:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 5806
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5807
    iput p1, p0, Lcom/android/server/power/PowerManagerService$UidState;->mUid:I

    .line 5808
    return-void
.end method
