.class Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;)V
    .registers 2

    .line 235
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$1;->this$0:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShoulderButtonZoomSwipeEnd()V
    .registers 1

    return-void
.end method

.method public onShoulderButtonZoomSwiping(ZI)V
    .registers 3

    return-void
.end method

.method public onZoomClick(Z)V
    .registers 2

    .line 238
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$1;->this$0:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->-$$Nest$mchangeZoomStateByVolumeClick(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;Z)V

    return-void
.end method

.method public onZoomScaleEnd(Z)V
    .registers 2

    return-void
.end method

.method public onZoomScaleStart(Z)V
    .registers 2

    .line 247
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI$1;->this$0:Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;->-$$Nest$mchangeZoomStateByVolumeClick(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomSettingUI;Z)V

    return-void
.end method

.method public onZoomScaling(Z)V
    .registers 2

    return-void
.end method
