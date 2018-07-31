.class public final Landroid/content/pm/InstantAppRequest;
.super Ljava/lang/Object;
.source "InstantAppRequest.java"


# instance fields
.field public final callingPackage:Ljava/lang/String;

.field public final origIntent:Landroid/content/Intent;

.field public final resolveForStart:Z

.field public final resolvedType:Ljava/lang/String;

.field public final responseObj:Landroid/content/pm/AuxiliaryResolveInfo;

.field public final userId:I

.field public final verificationBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Z)V
    .locals 0
    .param p1, "responseObj"    # Landroid/content/pm/AuxiliaryResolveInfo;
    .param p2, "origIntent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .param p6, "verificationBundle"    # Landroid/os/Bundle;
    .param p7, "resolveForStart"    # Z

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroid/content/pm/InstantAppRequest;->responseObj:Landroid/content/pm/AuxiliaryResolveInfo;

    .line 48
    iput-object p2, p0, Landroid/content/pm/InstantAppRequest;->origIntent:Landroid/content/Intent;

    .line 49
    iput-object p3, p0, Landroid/content/pm/InstantAppRequest;->resolvedType:Ljava/lang/String;

    .line 50
    iput-object p4, p0, Landroid/content/pm/InstantAppRequest;->callingPackage:Ljava/lang/String;

    .line 51
    iput p5, p0, Landroid/content/pm/InstantAppRequest;->userId:I

    .line 52
    iput-object p6, p0, Landroid/content/pm/InstantAppRequest;->verificationBundle:Landroid/os/Bundle;

    .line 53
    iput-boolean p7, p0, Landroid/content/pm/InstantAppRequest;->resolveForStart:Z

    .line 54
    return-void
.end method
