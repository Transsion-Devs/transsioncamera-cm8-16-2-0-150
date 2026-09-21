.class Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/IValueChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;)V
    .registers 2

    .line 405
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI$2;->this$0:Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged(Ljava/lang/String;)V
    .registers 5

    .line 408
    invoke-static {}, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "durationChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI$2;->this$0:Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;

    iget-object v1, v0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mStblurDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v1, :cond_3e

    const/4 v1, 0x1

    .line 410
    iput-boolean v1, v0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mIsBlurOn:Z

    .line 411
    iget-object v0, v0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mBlurTopSwitch:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 412
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI$2;->this$0:Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mBlurBottomSwitch:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 413
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI$2;->this$0:Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mScrollerRulerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setIsDurationAuto(Z)V

    .line 414
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI$2;->this$0:Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mCurrentBlurValue:Ljava/lang/String;

    .line 415
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/stblurlevel/StblurLevelUI;->mStblurDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_3e
    return-void
.end method
