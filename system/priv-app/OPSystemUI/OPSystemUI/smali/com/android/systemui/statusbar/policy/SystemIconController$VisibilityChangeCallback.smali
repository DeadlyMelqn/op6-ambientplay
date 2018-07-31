.class public interface abstract Lcom/android/systemui/statusbar/policy/SystemIconController$VisibilityChangeCallback;
.super Ljava/lang/Object;
.source "SystemIconController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/SystemIconController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VisibilityChangeCallback"
.end annotation


# virtual methods
.method public abstract onSystemIconVisibilityChanged(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method
