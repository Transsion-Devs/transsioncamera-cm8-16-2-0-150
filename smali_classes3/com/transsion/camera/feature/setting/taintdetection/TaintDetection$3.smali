.class Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)V
    .registers 2

    .line 524
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$3;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCaptureEnd()V
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;->onCaptureEnd()V

    return-void
.end method

.method public onCaptureStart()V
    .registers 1

    return-void
.end method

.method public takePictureEnd(Z)V
    .registers 2

    return-void
.end method

.method public takePictureStart()V
    .registers 3

    .line 527
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$3;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mModeKey:Ljava/lang/String;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->access$100(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.transsion.camera.feature.mode.doc.DocumentEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 528
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection$3;->this$0:Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;->-$$Nest$mhideTaintHint(Lcom/transsion/camera/feature/setting/taintdetection/TaintDetection;)V

    :cond_13
    return-void
.end method
