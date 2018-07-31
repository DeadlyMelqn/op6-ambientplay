.class public final Landroid/text/FontConfig$Family;
.super Ljava/lang/Object;
.source "FontConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/FontConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Family"
.end annotation


# static fields
.field public static final VARIANT_COMPACT:I = 0x1

.field public static final VARIANT_DEFAULT:I = 0x0

.field public static final VARIANT_ELEGANT:I = 0x2


# instance fields
.field private final mFonts:[Landroid/text/FontConfig$Font;

.field private final mLanguage:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mVariant:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[Landroid/text/FontConfig$Font;Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fonts"    # [Landroid/text/FontConfig$Font;
    .param p3, "language"    # Ljava/lang/String;
    .param p4, "variant"    # I

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-object p1, p0, Landroid/text/FontConfig$Family;->mName:Ljava/lang/String;

    .line 209
    iput-object p2, p0, Landroid/text/FontConfig$Family;->mFonts:[Landroid/text/FontConfig$Font;

    .line 210
    iput-object p3, p0, Landroid/text/FontConfig$Family;->mLanguage:Ljava/lang/String;

    .line 211
    iput p4, p0, Landroid/text/FontConfig$Family;->mVariant:I

    .line 212
    return-void
.end method


# virtual methods
.method public getFonts()[Landroid/text/FontConfig$Font;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Landroid/text/FontConfig$Family;->mFonts:[Landroid/text/FontConfig$Font;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Landroid/text/FontConfig$Family;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Landroid/text/FontConfig$Family;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getVariant()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Landroid/text/FontConfig$Family;->mVariant:I

    return v0
.end method
