.class public Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUIEntry;
.super Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;
.source "SourceFile"


# static fields
.field private static final KEY:Ljava/lang/String; = "front_crop_fov"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 2

    .line 16
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;-><init>(Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createWideCameraItemUI()Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;
    .registers 5

    .line 22
    new-instance v0, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;

    new-instance v1, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUISpec;

    const-string v2, "front_crop_fov"

    iget-object v3, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-direct {v1, v2, v3}, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUISpec;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-direct {v0, v1, p0}, Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Landroid/content/res/Resources;)V

    return-object v0
.end method
