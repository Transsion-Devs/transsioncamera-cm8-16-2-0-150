.class public Lcom/transsion/camera/feature/setting/restoredefault/RestoreDefaultEntry;
.super Lcom/transsion/camera/app/common/provider/FeatureEntryBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/transsion/camera/app/common/provider/SettingClassCategory;
    group = 0x1L
.end annotation


# instance fields
.field mRestoreDefault:Lcom/transsion/camera/feature/setting/restoredefault/RestoreDefault;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 3

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createFeature()Ljava/lang/Object;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/restoredefault/RestoreDefaultEntry;->mRestoreDefault:Lcom/transsion/camera/feature/setting/restoredefault/RestoreDefault;

    if-nez v0, :cond_b

    .line 26
    new-instance v0, Lcom/transsion/camera/feature/setting/restoredefault/RestoreDefault;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/restoredefault/RestoreDefault;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/restoredefault/RestoreDefaultEntry;->mRestoreDefault:Lcom/transsion/camera/feature/setting/restoredefault/RestoreDefault;

    .line 28
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/restoredefault/RestoreDefaultEntry;->mRestoreDefault:Lcom/transsion/camera/feature/setting/restoredefault/RestoreDefault;

    return-object p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .registers 1

    .line 38
    const-class p0, Lcom/transsion/camera/feature/setting/restoredefault/RestoreDefaultEntry;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .registers 1

    .line 33
    const-class p0, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    return-object p0
.end method
