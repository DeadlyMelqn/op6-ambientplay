.class public abstract Landroid/app/KeyguardManager$KeyguardDismissCallback;
.super Ljava/lang/Object;
.source "KeyguardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/KeyguardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "KeyguardDismissCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissCancelled()V
    .locals 0

    .prologue
    .line 323
    return-void
.end method

.method public onDismissError()V
    .locals 0

    .prologue
    .line 312
    return-void
.end method

.method public onDismissSucceeded()V
    .locals 0

    .prologue
    .line 317
    return-void
.end method
