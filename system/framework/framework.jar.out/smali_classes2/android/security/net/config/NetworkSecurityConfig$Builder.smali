.class public final Landroid/security/net/config/NetworkSecurityConfig$Builder;
.super Ljava/lang/Object;
.source "NetworkSecurityConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/net/config/NetworkSecurityConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCertificatesEntryRefs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/security/net/config/CertificatesEntryRef;",
            ">;"
        }
    .end annotation
.end field

.field private mCleartextTrafficPermitted:Z

.field private mCleartextTrafficPermittedSet:Z

.field private mHstsEnforced:Z

.field private mHstsEnforcedSet:Z

.field private mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

.field private mPinSet:Landroid/security/net/config/PinSet;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCleartextTrafficPermitted:Z

    .line 204
    iput-boolean v1, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mHstsEnforced:Z

    .line 205
    iput-boolean v1, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCleartextTrafficPermittedSet:Z

    .line 206
    iput-boolean v1, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mHstsEnforcedSet:Z

    .line 200
    return-void
.end method

.method private getEffectiveCertificatesEntryRefs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/security/net/config/CertificatesEntryRef;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    return-object v0

    .line 298
    :cond_0
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    invoke-direct {v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getEffectiveCertificatesEntryRefs()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 301
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getEffectiveCleartextTrafficPermitted()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCleartextTrafficPermittedSet:Z

    if-eqz v0, :cond_0

    .line 254
    iget-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCleartextTrafficPermitted:Z

    return v0

    .line 256
    :cond_0
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    invoke-direct {v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getEffectiveCleartextTrafficPermitted()Z

    move-result v0

    return v0

    .line 259
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private getEffectiveHstsEnforced()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mHstsEnforcedSet:Z

    if-eqz v0, :cond_0

    .line 270
    iget-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mHstsEnforced:Z

    return v0

    .line 272
    :cond_0
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    invoke-direct {v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getEffectiveHstsEnforced()Z

    move-result v0

    return v0

    .line 275
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private getEffectivePinSet()Landroid/security/net/config/PinSet;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mPinSet:Landroid/security/net/config/PinSet;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mPinSet:Landroid/security/net/config/PinSet;

    return-object v0

    .line 240
    :cond_0
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    invoke-direct {v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getEffectivePinSet()Landroid/security/net/config/PinSet;

    move-result-object v0

    return-object v0

    .line 243
    :cond_1
    sget-object v0, Landroid/security/net/config/PinSet;->EMPTY_PINSET:Landroid/security/net/config/PinSet;

    return-object v0
.end method


# virtual methods
.method public addCertificatesEntryRef(Landroid/security/net/config/CertificatesEntryRef;)Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .locals 1
    .param p1, "ref"    # Landroid/security/net/config/CertificatesEntryRef;

    .prologue
    .line 279
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    .line 282
    :cond_0
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    return-object p0
.end method

.method public addCertificatesEntryRefs(Ljava/util/Collection;)Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Landroid/security/net/config/CertificatesEntryRef;",
            ">;)",
            "Landroid/security/net/config/NetworkSecurityConfig$Builder;"
        }
    .end annotation

    .prologue
    .line 287
    .local p1, "refs":Ljava/util/Collection;, "Ljava/util/Collection<+Landroid/security/net/config/CertificatesEntryRef;>;"
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    .line 290
    :cond_0
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 291
    return-object p0
.end method

.method public build()Landroid/security/net/config/NetworkSecurityConfig;
    .locals 6

    .prologue
    .line 313
    invoke-direct {p0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getEffectiveCleartextTrafficPermitted()Z

    move-result v1

    .line 314
    .local v1, "cleartextPermitted":Z
    invoke-direct {p0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getEffectiveHstsEnforced()Z

    move-result v2

    .line 315
    .local v2, "hstsEnforced":Z
    invoke-direct {p0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getEffectivePinSet()Landroid/security/net/config/PinSet;

    move-result-object v3

    .line 316
    .local v3, "pinSet":Landroid/security/net/config/PinSet;
    invoke-direct {p0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getEffectiveCertificatesEntryRefs()Ljava/util/List;

    move-result-object v4

    .line 317
    .local v4, "entryRefs":Ljava/util/List;, "Ljava/util/List<Landroid/security/net/config/CertificatesEntryRef;>;"
    new-instance v0, Landroid/security/net/config/NetworkSecurityConfig;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/security/net/config/NetworkSecurityConfig;-><init>(ZZLandroid/security/net/config/PinSet;Ljava/util/List;Landroid/security/net/config/NetworkSecurityConfig;)V

    return-object v0
.end method

.method getCertificatesEntryRefs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/security/net/config/CertificatesEntryRef;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    return-object v0
.end method

.method public getParent()Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    return-object v0
.end method

.method public hasCertificatesEntryRefs()Z
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCertificatesEntryRefs:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCleartextTrafficPermitted(Z)Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .locals 1
    .param p1, "cleartextTrafficPermitted"    # Z

    .prologue
    .line 247
    iput-boolean p1, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCleartextTrafficPermitted:Z

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mCleartextTrafficPermittedSet:Z

    .line 249
    return-object p0
.end method

.method public setHstsEnforced(Z)Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .locals 1
    .param p1, "hstsEnforced"    # Z

    .prologue
    .line 263
    iput-boolean p1, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mHstsEnforced:Z

    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mHstsEnforcedSet:Z

    .line 265
    return-object p0
.end method

.method public setParent(Landroid/security/net/config/NetworkSecurityConfig$Builder;)Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .locals 3
    .param p1, "parent"    # Landroid/security/net/config/NetworkSecurityConfig$Builder;

    .prologue
    .line 216
    move-object v0, p1

    .line 217
    .local v0, "current":Landroid/security/net/config/NetworkSecurityConfig$Builder;
    :goto_0
    if-eqz v0, :cond_1

    .line 218
    if-ne v0, p0, :cond_0

    .line 219
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Loops are not allowed in Builder parents"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 221
    :cond_0
    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getParent()Landroid/security/net/config/NetworkSecurityConfig$Builder;

    move-result-object v0

    goto :goto_0

    .line 223
    :cond_1
    iput-object p1, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mParentBuilder:Landroid/security/net/config/NetworkSecurityConfig$Builder;

    .line 224
    return-object p0
.end method

.method public setPinSet(Landroid/security/net/config/PinSet;)Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .locals 0
    .param p1, "pinSet"    # Landroid/security/net/config/PinSet;

    .prologue
    .line 232
    iput-object p1, p0, Landroid/security/net/config/NetworkSecurityConfig$Builder;->mPinSet:Landroid/security/net/config/PinSet;

    .line 233
    return-object p0
.end method
