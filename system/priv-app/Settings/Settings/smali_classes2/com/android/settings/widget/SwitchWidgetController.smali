.class public abstract Lcom/android/settings/widget/SwitchWidgetController;
.super Ljava/lang/Object;
.source "SwitchWidgetController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;
    }
.end annotation


# instance fields
.field protected mListener:Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getSwitch()Landroid/widget/Switch;
.end method

.method public abstract isChecked()Z
.end method

.method public abstract setChecked(Z)V
.end method

.method public abstract setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
.end method

.method public abstract setEnabled(Z)V
.end method

.method public setListener(Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/settings/widget/SwitchWidgetController;->mListener:Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;

    .line 64
    return-void
.end method

.method public setupView()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public abstract startListening()V
.end method

.method public abstract stopListening()V
.end method

.method public teardownView()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public abstract updateTitle(Z)V
.end method
