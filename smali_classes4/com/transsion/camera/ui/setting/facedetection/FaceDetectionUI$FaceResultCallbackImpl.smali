.class Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$FaceResultCallbackImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaceResultCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;)V
    .registers 2

    .line 205
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$FaceResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$FaceResultCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;)V

    return-void
.end method


# virtual methods
.method public onDataCallback(Ljava/lang/Object;I)V
    .registers 4

    .line 208
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$FaceResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;)Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$UIHandler;

    move-result-object p2

    const/16 v0, 0x64

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 209
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$FaceResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;)Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$UIHandler;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
