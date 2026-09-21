.class public Lcom/transsion/camera/feature/mode/autoscenedetection/IntentASDImageProcessor;
.super Lcom/transsion/camera/feature/mode/autoscenedetection/ASDImageProcessor;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V
    .registers 3

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/autoscenedetection/ASDImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V

    return-void
.end method


# virtual methods
.method public supportProcessingMedia()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
