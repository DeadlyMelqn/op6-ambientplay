.class public Lcom/android/settingslib/location/RecentLocationApps$Request;
.super Ljava/lang/Object;
.source "RecentLocationApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/location/RecentLocationApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# instance fields
.field public final contentDescription:Ljava/lang/CharSequence;

.field public final icon:Landroid/graphics/drawable/Drawable;

.field public final isHighBattery:Z

.field public final label:Ljava/lang/CharSequence;

.field public final packageName:Ljava/lang/String;

.field public final uid:I

.field public final userHandle:Landroid/os/UserHandle;


# direct methods
.method private constructor <init>(Ljava/lang/String;ILandroid/os/UserHandle;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "userHandle"    # Landroid/os/UserHandle;
    .param p4, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p5, "label"    # Ljava/lang/CharSequence;
    .param p6, "isHighBattery"    # Z
    .param p7, "contentDescription"    # Ljava/lang/CharSequence;

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p1, p0, Lcom/android/settingslib/location/RecentLocationApps$Request;->packageName:Ljava/lang/String;

    .line 213
    iput-object p3, p0, Lcom/android/settingslib/location/RecentLocationApps$Request;->userHandle:Landroid/os/UserHandle;

    .line 214
    iput-object p4, p0, Lcom/android/settingslib/location/RecentLocationApps$Request;->icon:Landroid/graphics/drawable/Drawable;

    .line 215
    iput-object p5, p0, Lcom/android/settingslib/location/RecentLocationApps$Request;->label:Ljava/lang/CharSequence;

    .line 216
    iput-boolean p6, p0, Lcom/android/settingslib/location/RecentLocationApps$Request;->isHighBattery:Z

    .line 217
    iput-object p7, p0, Lcom/android/settingslib/location/RecentLocationApps$Request;->contentDescription:Ljava/lang/CharSequence;

    .line 218
    iput p2, p0, Lcom/android/settingslib/location/RecentLocationApps$Request;->uid:I

    .line 219
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILandroid/os/UserHandle;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Lcom/android/settingslib/location/RecentLocationApps$Request;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "userHandle"    # Landroid/os/UserHandle;
    .param p4, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p5, "label"    # Ljava/lang/CharSequence;
    .param p6, "isHighBattery"    # Z
    .param p7, "contentDescription"    # Ljava/lang/CharSequence;
    .param p8, "-this7"    # Lcom/android/settingslib/location/RecentLocationApps$Request;

    .prologue
    invoke-direct/range {p0 .. p7}, Lcom/android/settingslib/location/RecentLocationApps$Request;-><init>(Ljava/lang/String;ILandroid/os/UserHandle;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/os/UserHandle;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "label"    # Ljava/lang/CharSequence;
    .param p5, "isHighBattery"    # Z
    .param p6, "contentDescription"    # Ljava/lang/CharSequence;

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p1, p0, Lcom/android/settingslib/location/RecentLocationApps$Request;->packageName:Ljava/lang/String;

    .line 202
    iput-object p2, p0, Lcom/android/settingslib/location/RecentLocationApps$Request;->userHandle:Landroid/os/UserHandle;

    .line 203
    iput-object p3, p0, Lcom/android/settingslib/location/RecentLocationApps$Request;->icon:Landroid/graphics/drawable/Drawable;

    .line 204
    iput-object p4, p0, Lcom/android/settingslib/location/RecentLocationApps$Request;->label:Ljava/lang/CharSequence;

    .line 205
    iput-boolean p5, p0, Lcom/android/settingslib/location/RecentLocationApps$Request;->isHighBattery:Z

    .line 206
    iput-object p6, p0, Lcom/android/settingslib/location/RecentLocationApps$Request;->contentDescription:Ljava/lang/CharSequence;

    .line 207
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settingslib/location/RecentLocationApps$Request;->uid:I

    .line 208
    return-void
.end method
