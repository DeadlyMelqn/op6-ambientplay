.class public final Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;
.super Ljava/lang/Object;
.source "Policy.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/pps/Policy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RoamingPartner"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCountries:Ljava/lang/String;

.field private mFqdn:Ljava/lang/String;

.field private mFqdnExactMatch:Z

.field private mPriority:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 283
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner$1;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner$1;-><init>()V

    .line 282
    sput-object v0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 159
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdn:Ljava/lang/String;

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdnExactMatch:Z

    .line 189
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mPriority:I

    .line 201
    iput-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mCountries:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;)V
    .locals 2
    .param p1, "source"    # Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;

    .prologue
    const/4 v1, 0x0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdn:Ljava/lang/String;

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdnExactMatch:Z

    .line 189
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mPriority:I

    .line 201
    iput-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mCountries:Ljava/lang/String;

    .line 212
    if-eqz p1, :cond_0

    .line 213
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdn:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdn:Ljava/lang/String;

    .line 214
    iget-boolean v0, p1, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdnExactMatch:Z

    iput-boolean v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdnExactMatch:Z

    .line 215
    iget v0, p1, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mPriority:I

    iput v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mPriority:I

    .line 216
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mCountries:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mCountries:Ljava/lang/String;

    .line 218
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "thatObject"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 235
    if-ne p0, p1, :cond_0

    .line 236
    const/4 v1, 0x1

    return v1

    .line 238
    :cond_0
    instance-of v2, p1, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;

    if-nez v2, :cond_1

    .line 239
    return v1

    :cond_1
    move-object v0, p1

    .line 242
    check-cast v0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;

    .line 243
    .local v0, "that":Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;
    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdn:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdn:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 244
    iget-boolean v2, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdnExactMatch:Z

    iget-boolean v3, v0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdnExactMatch:Z

    if-ne v2, v3, :cond_2

    .line 245
    iget v2, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mPriority:I

    iget v3, v0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mPriority:I

    if-ne v2, v3, :cond_2

    .line 246
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mCountries:Ljava/lang/String;

    iget-object v2, v0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mCountries:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 243
    :cond_2
    return v1
.end method

.method public getCountries()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mCountries:Ljava/lang/String;

    return-object v0
.end method

.method public getFqdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdn:Ljava/lang/String;

    return-object v0
.end method

.method public getFqdnExactMatch()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdnExactMatch:Z

    return v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mPriority:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 251
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdn:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdnExactMatch:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mPriority:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mCountries:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setCountries(Ljava/lang/String;)V
    .locals 0
    .param p1, "countries"    # Ljava/lang/String;

    .prologue
    .line 203
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mCountries:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public setFqdn(Ljava/lang/String;)V
    .locals 0
    .param p1, "fqdn"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdn:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setFqdnExactMatch(Z)V
    .locals 0
    .param p1, "fqdnExactMatch"    # Z

    .prologue
    .line 179
    iput-boolean p1, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdnExactMatch:Z

    .line 180
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 191
    iput p1, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mPriority:I

    .line 192
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "FQDN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    const-string/jumbo v1, "ExactMatch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mFqdnExactMatch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    const-string/jumbo v1, "Priority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mPriority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    const-string/jumbo v1, "Countries: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mCountries:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public validate()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 271
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    const-string/jumbo v0, "Policy"

    const-string/jumbo v1, "Missing FQDN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return v2

    .line 275
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mCountries:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    const-string/jumbo v0, "Policy"

    const-string/jumbo v1, "Missing countries"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return v2

    .line 279
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 227
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    iget-boolean v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdnExactMatch:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    iget v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mCountries:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    return-void

    .line 228
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
