.class public abstract Landroid/app/backup/SelectBackupTransportCallback;
.super Ljava/lang/Object;
.source "SelectBackupTransportCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 43
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 0
    .param p1, "transportName"    # Ljava/lang/String;

    .prologue
    .line 36
    return-void
.end method
