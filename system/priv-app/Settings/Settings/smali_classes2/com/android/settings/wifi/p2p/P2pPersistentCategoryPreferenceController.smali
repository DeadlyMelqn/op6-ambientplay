.class public Lcom/android/settings/wifi/p2p/P2pPersistentCategoryPreferenceController;
.super Lcom/android/settings/wifi/p2p/P2pCategoryPreferenceController;
.source "P2pPersistentCategoryPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/p2p/P2pCategoryPreferenceController;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string/jumbo v0, "p2p_persistent_group"

    return-object v0
.end method
