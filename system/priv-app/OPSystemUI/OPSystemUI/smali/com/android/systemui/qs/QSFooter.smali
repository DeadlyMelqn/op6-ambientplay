.class public interface abstract Lcom/android/systemui/qs/QSFooter;
.super Ljava/lang/Object;
.source "QSFooter.java"


# virtual methods
.method public abstract getHeight()I
.end method

.method public abstract notifyBtFooterChanged(I)V
.end method

.method public abstract setExpanded(Z)V
.end method

.method public abstract setExpansion(F)V
.end method

.method public abstract setKeyguardShowing(Z)V
.end method

.method public abstract setListening(Z)V
.end method

.method public abstract setQSPanel(Lcom/android/systemui/qs/QSPanel;)V
    .param p1    # Lcom/android/systemui/qs/QSPanel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setVisibility(I)V
.end method
