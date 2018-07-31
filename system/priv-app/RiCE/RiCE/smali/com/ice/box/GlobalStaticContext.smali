.class public Lcom/ice/box/GlobalStaticContext;
.super Landroid/app/Application;
.source "GlobalStaticContext.java"


# static fields
.field private static context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct/range {p0 .. p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .line 16
    sget-object v0, Lcom/ice/box/GlobalStaticContext;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .line 11
    invoke-super/range {p0 .. p0}, Landroid/app/Application;->onCreate()V

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/GlobalStaticContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/ice/box/GlobalStaticContext;->context:Landroid/content/Context;

    return-void
.end method
