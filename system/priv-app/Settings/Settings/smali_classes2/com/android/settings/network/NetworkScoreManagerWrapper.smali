.class public Lcom/android/settings/network/NetworkScoreManagerWrapper;
.super Ljava/lang/Object;
.source "NetworkScoreManagerWrapper.java"


# instance fields
.field private final mNetworkScoreManager:Landroid/net/NetworkScoreManager;


# direct methods
.method public constructor <init>(Landroid/net/NetworkScoreManager;)V
    .locals 0
    .param p1, "networkScoreManager"    # Landroid/net/NetworkScoreManager;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/settings/network/NetworkScoreManagerWrapper;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    .line 34
    return-void
.end method


# virtual methods
.method public getActiveScorer()Landroid/net/NetworkScorerAppData;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/network/NetworkScoreManagerWrapper;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    invoke-virtual {v0}, Landroid/net/NetworkScoreManager;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object v0

    return-object v0
.end method

.method public getActiveScorerPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/network/NetworkScoreManagerWrapper;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    invoke-virtual {v0}, Landroid/net/NetworkScoreManager;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllValidScorers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/NetworkScorerAppData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/network/NetworkScoreManagerWrapper;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    invoke-virtual {v0}, Landroid/net/NetworkScoreManager;->getAllValidScorers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setActiveScorer(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/network/NetworkScoreManagerWrapper;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    invoke-virtual {v0, p1}, Landroid/net/NetworkScoreManager;->setActiveScorer(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
