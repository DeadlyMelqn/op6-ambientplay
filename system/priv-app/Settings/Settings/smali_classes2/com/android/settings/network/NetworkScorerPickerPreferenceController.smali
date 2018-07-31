.class public Lcom/android/settings/network/NetworkScorerPickerPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "NetworkScorerPickerPreferenceController.java"


# static fields
.field private static final KEY_NETWORK_SCORER_PICKER:Ljava/lang/String; = "network_scorer_picker"


# instance fields
.field private final mNetworkScoreManager:Lcom/android/settings/network/NetworkScoreManagerWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/network/NetworkScoreManagerWrapper;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "networkScoreManager"    # Lcom/android/settings/network/NetworkScoreManagerWrapper;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p2, p0, Lcom/android/settings/network/NetworkScorerPickerPreferenceController;->mNetworkScoreManager:Lcom/android/settings/network/NetworkScoreManagerWrapper;

    .line 41
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string/jumbo v0, "network_scorer_picker"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v4, 0x0

    .line 51
    iget-object v3, p0, Lcom/android/settings/network/NetworkScorerPickerPreferenceController;->mNetworkScoreManager:Lcom/android/settings/network/NetworkScoreManagerWrapper;

    invoke-virtual {v3}, Lcom/android/settings/network/NetworkScoreManagerWrapper;->getAllValidScorers()Ljava/util/List;

    move-result-object v0

    .line 52
    .local v0, "allValidScorers":Ljava/util/List;, "Ljava/util/List<Landroid/net/NetworkScorerAppData;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    xor-int/lit8 v1, v3, 0x1

    .line 53
    .local v1, "enabled":Z
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 54
    if-nez v1, :cond_0

    .line 55
    invoke-virtual {p1, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 56
    return-void

    .line 59
    :cond_0
    iget-object v3, p0, Lcom/android/settings/network/NetworkScorerPickerPreferenceController;->mNetworkScoreManager:Lcom/android/settings/network/NetworkScoreManagerWrapper;

    invoke-virtual {v3}, Lcom/android/settings/network/NetworkScoreManagerWrapper;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object v2

    .line 60
    .local v2, "scorer":Landroid/net/NetworkScorerAppData;
    if-nez v2, :cond_1

    .line 61
    iget-object v3, p0, Lcom/android/settings/network/NetworkScorerPickerPreferenceController;->mContext:Landroid/content/Context;

    .line 62
    const v4, 0x7f0f123a

    .line 61
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkScorerAppData;->getRecommendationServiceLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
