.class Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;)V
    .registers 2

    .line 329
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI$1;->this$0:Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 329
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI$1;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 332
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "key_camera_zoom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    const-string v0, "key_single_blur"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    goto :goto_6c

    .line 349
    :cond_14
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI$1;->this$0:Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;

    const-string v0, "1"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    iput-boolean p2, p1, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mIsIconSelected:Z

    .line 350
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI$1;->this$0:Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;

    iget-object p2, p1, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iget-boolean p1, p1, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mIsIconSelected:Z

    invoke-virtual {p2, p1}, Landroid/view/View;->setSelected(Z)V

    .line 351
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI$1;->this$0:Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mIsIconSelected:Z

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->updateHint(Z)V

    return-void

    .line 334
    :cond_2f
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sget-object p2, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-ge p1, p2, :cond_4c

    .line 335
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI$1;->this$0:Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->-$$Nest$fputmIsWideCamera(Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;Z)V

    .line 336
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI$1;->this$0:Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->hideIcon()V

    .line 337
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI$1;->this$0:Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->-$$Nest$mhideAlwaysHint(Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;)V

    return-void

    .line 339
    :cond_4c
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI$1;->this$0:Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->-$$Nest$fputmIsWideCamera(Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;Z)V

    .line 340
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI$1;->this$0:Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->-$$Nest$fgetmIsZoomWheelShowing(Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;)Z

    move-result p1

    if-nez p1, :cond_6c

    .line 341
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI$1;->this$0:Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->showIcon()V

    .line 342
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI$1;->this$0:Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mIsIconSelected:Z

    if-eqz p1, :cond_6c

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mCanShowPortraitAlwaysHint:Z

    if-eqz p1, :cond_6c

    .line 343
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->-$$Nest$mshowAlwaysHint(Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;)V

    :cond_6c
    :goto_6c
    return-void
.end method
