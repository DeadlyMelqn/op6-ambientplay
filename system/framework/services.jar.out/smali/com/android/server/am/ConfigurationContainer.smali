.class abstract Lcom/android/server/am/ConfigurationContainer;
.super Ljava/lang/Object;
.source "ConfigurationContainer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/android/server/am/ConfigurationContainer;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mFullConfiguration:Landroid/content/res/Configuration;

.field private mMergedOverrideConfiguration:Landroid/content/res/Configuration;

.field private mOverrideConfiguration:Landroid/content/res/Configuration;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 27
    .local p0, "this":Lcom/android/server/am/ConfigurationContainer;, "Lcom/android/server/am/ConfigurationContainer<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ConfigurationContainer;->mOverrideConfiguration:Landroid/content/res/Configuration;

    .line 36
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    .line 43
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    .line 27
    return-void
.end method

.method private onMergedOverrideConfigurationChanged()V
    .locals 5

    .prologue
    .line 101
    .local p0, "this":Lcom/android/server/am/ConfigurationContainer;, "Lcom/android/server/am/ConfigurationContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ConfigurationContainer;->getParent()Lcom/android/server/am/ConfigurationContainer;

    move-result-object v2

    .line 102
    .local v2, "parent":Lcom/android/server/am/ConfigurationContainer;
    if-eqz v2, :cond_0

    .line 103
    iget-object v3, p0, Lcom/android/server/am/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2}, Lcom/android/server/am/ConfigurationContainer;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 104
    iget-object v3, p0, Lcom/android/server/am/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v4, p0, Lcom/android/server/am/ConfigurationContainer;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 108
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/ConfigurationContainer;->getChildCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 109
    invoke-virtual {p0, v1}, Lcom/android/server/am/ConfigurationContainer;->getChildAt(I)Lcom/android/server/am/ConfigurationContainer;

    move-result-object v0

    .line 110
    .local v0, "child":Lcom/android/server/am/ConfigurationContainer;
    invoke-direct {v0}, Lcom/android/server/am/ConfigurationContainer;->onMergedOverrideConfigurationChanged()V

    .line 108
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 106
    .end local v0    # "child":Lcom/android/server/am/ConfigurationContainer;
    .end local v1    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v4, p0, Lcom/android/server/am/ConfigurationContainer;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 112
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract getChildAt(I)Lcom/android/server/am/ConfigurationContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method protected abstract getChildCount()I
.end method

.method getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 51
    .local p0, "this":Lcom/android/server/am/ConfigurationContainer;, "Lcom/android/server/am/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/am/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method getMergedOverrideConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 91
    .local p0, "this":Lcom/android/server/am/ConfigurationContainer;, "Lcom/android/server/am/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/am/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method getOverrideConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 69
    .local p0, "this":Lcom/android/server/am/ConfigurationContainer;, "Lcom/android/server/am/ConfigurationContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/am/ConfigurationContainer;->mOverrideConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method protected abstract getParent()Lcom/android/server/am/ConfigurationContainer;
.end method

.method onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 59
    .local p0, "this":Lcom/android/server/am/ConfigurationContainer;, "Lcom/android/server/am/ConfigurationContainer<TE;>;"
    iget-object v2, p0, Lcom/android/server/am/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 60
    iget-object v2, p0, Lcom/android/server/am/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v3, p0, Lcom/android/server/am/ConfigurationContainer;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 61
    invoke-virtual {p0}, Lcom/android/server/am/ConfigurationContainer;->getChildCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 62
    invoke-virtual {p0, v1}, Lcom/android/server/am/ConfigurationContainer;->getChildAt(I)Lcom/android/server/am/ConfigurationContainer;

    move-result-object v0

    .line 63
    .local v0, "child":Lcom/android/server/am/ConfigurationContainer;
    iget-object v2, p0, Lcom/android/server/am/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 61
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 65
    .end local v0    # "child":Lcom/android/server/am/ConfigurationContainer;
    :cond_0
    return-void
.end method

.method onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "overrideConfiguration"    # Landroid/content/res/Configuration;

    .prologue
    .line 78
    .local p0, "this":Lcom/android/server/am/ConfigurationContainer;, "Lcom/android/server/am/ConfigurationContainer<TE;>;"
    iget-object v1, p0, Lcom/android/server/am/ConfigurationContainer;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/server/am/ConfigurationContainer;->getParent()Lcom/android/server/am/ConfigurationContainer;

    move-result-object v0

    .line 81
    .local v0, "parent":Lcom/android/server/am/ConfigurationContainer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/server/am/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 83
    invoke-direct {p0}, Lcom/android/server/am/ConfigurationContainer;->onMergedOverrideConfigurationChanged()V

    .line 84
    return-void

    .line 81
    :cond_0
    sget-object v1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    goto :goto_0
.end method

.method onParentChanged()V
    .locals 2

    .prologue
    .line 118
    .local p0, "this":Lcom/android/server/am/ConfigurationContainer;, "Lcom/android/server/am/ConfigurationContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ConfigurationContainer;->getParent()Lcom/android/server/am/ConfigurationContainer;

    move-result-object v0

    .line 121
    .local v0, "parent":Lcom/android/server/am/ConfigurationContainer;
    if-eqz v0, :cond_0

    .line 123
    iget-object v1, v0, Lcom/android/server/am/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v1}, Lcom/android/server/am/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 125
    invoke-direct {p0}, Lcom/android/server/am/ConfigurationContainer;->onMergedOverrideConfigurationChanged()V

    .line 127
    :cond_0
    return-void
.end method
