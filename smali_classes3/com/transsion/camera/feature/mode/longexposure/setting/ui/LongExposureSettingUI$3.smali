.class Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$ScrollerViewStateCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;)V
    .registers 2

    .line 806
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$3;->this$0:Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDown()Z
    .registers 1

    .line 809
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI$3;->this$0:Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI;->mCaptureTimeScrollerView:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->getIsDown()Z

    move-result p0

    return p0
.end method
