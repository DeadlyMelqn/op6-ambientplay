.class public Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
.super Ljava/lang/Object;
.source "RestrictedLockUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/RestrictedLockUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnforcedAdmin"
.end annotation


# static fields
.field public static final MULTIPLE_ENFORCED_ADMIN:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;


# instance fields
.field public component:Landroid/content/ComponentName;

.field public userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 729
    new-instance v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-direct {v0}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>()V

    sput-object v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->MULTIPLE_ENFORCED_ADMIN:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 724
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 725
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    .line 726
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    .line 744
    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;I)V
    .locals 1
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    .line 731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 725
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    .line 726
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    .line 732
    iput-object p1, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    .line 733
    iput p2, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    .line 734
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 748
    if-ne p1, p0, :cond_0

    return v4

    .line 749
    :cond_0
    instance-of v1, p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-nez v1, :cond_1

    return v3

    :cond_1
    move-object v0, p1

    .line 750
    check-cast v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 751
    .local v0, "other":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    iget v1, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    iget v2, v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    if-eq v1, v2, :cond_2

    .line 752
    return v3

    .line 754
    :cond_2
    iget-object v1, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    if-nez v1, :cond_4

    .line 756
    :cond_3
    return v4

    .line 755
    :cond_4
    iget-object v1, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    iget-object v2, v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 754
    if-nez v1, :cond_3

    .line 758
    :cond_5
    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "EnforcedAdmin{component="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method