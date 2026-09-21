.class public Lcom/transsion/camera/ui/setting/widecamera/WideAngleSettingUIEntry;
.super Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;
.source "SourceFile"


# static fields
.field private static final KEY:Ljava/lang/String; = "wide_camera"


# instance fields
.field private mWideAngleItemUI:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 2

    .line 24
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;-><init>(Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createWideCameraItemUI()Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;
    .registers 5

    .line 29
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleSettingUIEntry;->mWideAngleItemUI:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    if-nez v0, :cond_16

    .line 30
    new-instance v0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    new-instance v1, Lcom/transsion/camera/ui/setting/widecamera/WideAngleSettingUISpec;

    const-string v2, "wide_camera"

    iget-object v3, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-direct {v1, v2, v3}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleSettingUISpec;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleSettingUIEntry;->mWideAngleItemUI:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    .line 32
    :cond_16
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/widecamera/WideAngleSettingUIEntry;->mWideAngleItemUI:Lcom/transsion/camera/ui/setting/widecamera/WideAngleItemUI;

    return-object p0
.end method
