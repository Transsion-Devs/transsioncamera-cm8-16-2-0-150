.class public Lcom/transsion/camera/ui/setting/zoom/TeleZoomSettingUIEntry;
.super Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;
.source "SourceFile"


# static fields
.field private static final KEY:Ljava/lang/String; = "key_camera_zoom"


# instance fields
.field private mTeleZoomItemUI:Lcom/transsion/camera/ui/setting/zoom/TeleZoomItemUI;


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

    .line 21
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/TeleZoomSettingUIEntry;->mTeleZoomItemUI:Lcom/transsion/camera/ui/setting/zoom/TeleZoomItemUI;

    if-nez v0, :cond_16

    .line 22
    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/TeleZoomItemUI;

    new-instance v1, Lcom/transsion/camera/ui/setting/zoom/SecondZoomItemUISpec;

    const-string v2, "key_camera_zoom"

    iget-object v3, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-direct {v1, v2, v3}, Lcom/transsion/camera/ui/setting/zoom/SecondZoomItemUISpec;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    iget-object v2, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/ui/setting/zoom/TeleZoomItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/TeleZoomSettingUIEntry;->mTeleZoomItemUI:Lcom/transsion/camera/ui/setting/zoom/TeleZoomItemUI;

    .line 24
    :cond_16
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/TeleZoomSettingUIEntry;->mTeleZoomItemUI:Lcom/transsion/camera/ui/setting/zoom/TeleZoomItemUI;

    return-object p0
.end method
