.class public Lcom/transsion/camera/ui/setting/focalzoom/FocalZoomSecondEntry;
.super Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;
.source "SourceFile"


# static fields
.field private static final KEY:Ljava/lang/String; = "key_camera_zoom"


# instance fields
.field private mFocalZoomSecondItemUI:Lcom/transsion/camera/ui/setting/focalzoom/FocalZoomSecondItemUI;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 2

    .line 15
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;-><init>(Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createWideCameraItemUI()Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;
    .registers 5

    .line 20
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focalzoom/FocalZoomSecondEntry;->mFocalZoomSecondItemUI:Lcom/transsion/camera/ui/setting/focalzoom/FocalZoomSecondItemUI;

    if-nez v0, :cond_16

    .line 21
    new-instance v0, Lcom/transsion/camera/ui/setting/focalzoom/FocalZoomSecondItemUI;

    new-instance v1, Lcom/transsion/camera/ui/setting/focalzoom/FocalZoomSecondItemUISpec;

    const-string v2, "key_camera_zoom"

    iget-object v3, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-direct {v1, v2, v3}, Lcom/transsion/camera/ui/setting/focalzoom/FocalZoomSecondItemUISpec;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/ui/setting/focalzoom/FocalZoomSecondItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/focalzoom/FocalZoomSecondEntry;->mFocalZoomSecondItemUI:Lcom/transsion/camera/ui/setting/focalzoom/FocalZoomSecondItemUI;

    .line 23
    :cond_16
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focalzoom/FocalZoomSecondEntry;->mFocalZoomSecondItemUI:Lcom/transsion/camera/ui/setting/focalzoom/FocalZoomSecondItemUI;

    return-object p0
.end method
