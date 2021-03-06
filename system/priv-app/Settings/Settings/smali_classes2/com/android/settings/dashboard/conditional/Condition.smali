.class public abstract Lcom/android/settings/dashboard/conditional/Condition;
.super Ljava/lang/Object;
.source "Condition.java"


# static fields
.field private static final KEY_ACTIVE:Ljava/lang/String; = "active"

.field private static final KEY_LAST_STATE:Ljava/lang/String; = "last_state"

.field private static final KEY_SILENCE:Ljava/lang/String; = "silence"


# instance fields
.field private mIsActive:Z

.field private mIsSilenced:Z

.field private mLastStateChange:J

.field protected final mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V
    .locals 0
    .param p1, "manager"    # Lcom/android/settings/dashboard/conditional/ConditionManager;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/settings/dashboard/conditional/Condition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    .line 43
    return-void
.end method

.method private onSilenceChanged(Z)V
    .locals 5
    .param p1, "silenced"    # Z

    .prologue
    const/4 v3, 0x1

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/dashboard/conditional/Condition;->getReceiverClass()Ljava/lang/Class;

    move-result-object v0

    .line 106
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 107
    return-void

    .line 110
    :cond_0
    iget-object v2, p0, Lcom/android/settings/dashboard/conditional/Condition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 111
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/settings/dashboard/conditional/Condition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v4, v2, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    if-eqz p1, :cond_1

    move v2, v3

    .line 111
    :goto_0
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 115
    return-void

    .line 113
    :cond_1
    const/4 v2, 0x2

    goto :goto_0
.end method


# virtual methods
.method public abstract getActions()[Ljava/lang/CharSequence;
.end method

.method public abstract getIcon()Landroid/graphics/drawable/Icon;
.end method

.method getLastChange()J
    .locals 2

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mLastStateChange:J

    return-wide v0
.end method

.method public abstract getMetricsConstant()I
.end method

.method protected getReceiverClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 118
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getSummary()Ljava/lang/CharSequence;
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsActive:Z

    return v0
.end method

.method public isSilenced()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    return v0
.end method

.method protected notifyChanged()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0, p0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->notifyChanged(Lcom/android/settings/dashboard/conditional/Condition;)V

    .line 64
    return-void
.end method

.method public abstract onActionClick(I)V
.end method

.method public abstract onPrimaryClick()V
.end method

.method public abstract refreshState()V
.end method

.method restoreState(Landroid/os/PersistableBundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/PersistableBundle;

    .prologue
    .line 46
    const-string/jumbo v0, "silence"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    .line 47
    const-string/jumbo v0, "active"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsActive:Z

    .line 48
    const-string/jumbo v0, "last_state"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mLastStateChange:J

    .line 49
    return-void
.end method

.method saveState(Landroid/os/PersistableBundle;)Z
    .locals 4
    .param p1, "bundle"    # Landroid/os/PersistableBundle;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    if-eqz v0, :cond_0

    .line 53
    const-string/jumbo v0, "silence"

    iget-boolean v1, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 55
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsActive:Z

    if-eqz v0, :cond_1

    .line 56
    const-string/jumbo v0, "active"

    iget-boolean v1, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsActive:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 57
    const-string/jumbo v0, "last_state"

    iget-wide v2, p0, Lcom/android/settings/dashboard/conditional/Condition;->mLastStateChange:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 59
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsActive:Z

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected setActive(Z)V
    .locals 3
    .param p1, "active"    # Z

    .prologue
    .line 81
    const-class v0, Lcom/android/settings/dashboard/conditional/Condition;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsActive = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " active = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mIsSilenced = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsActive:Z

    if-ne v0, p1, :cond_0

    .line 83
    return-void

    .line 85
    :cond_0
    iput-boolean p1, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsActive:Z

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mLastStateChange:J

    .line 87
    iget-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    if-eqz v0, :cond_1

    xor-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    .line 89
    iget-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/conditional/Condition;->onSilenceChanged(Z)V

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/dashboard/conditional/Condition;->notifyChanged()V

    .line 92
    return-void
.end method

.method public setSilenced()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    .line 77
    return-void
.end method

.method public shouldShow()Z
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/android/settings/dashboard/conditional/Condition;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/dashboard/conditional/Condition;->isSilenced()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public silence()V
    .locals 3

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    if-nez v0, :cond_0

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    .line 97
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/dashboard/conditional/Condition;->getMetricsConstant()I

    move-result v1

    const/16 v2, 0x174

    .line 97
    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 99
    iget-boolean v0, p0, Lcom/android/settings/dashboard/conditional/Condition;->mIsSilenced:Z

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/conditional/Condition;->onSilenceChanged(Z)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/dashboard/conditional/Condition;->notifyChanged()V

    .line 102
    :cond_0
    return-void
.end method
