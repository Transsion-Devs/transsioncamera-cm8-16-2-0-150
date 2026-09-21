.class Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaceDetected([Lcom/transsion/camera/utils/SettingInfo$CameraFace;Landroid/util/Size;Z)Z
    .registers 13

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->-$$Nest$fgetmISDualVideoMode(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    const/4 v0, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_93

    .line 82
    array-length v3, p1

    if-lez v3, :cond_93

    .line 84
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->updateFaceCount(I)V

    .line 85
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v3}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->-$$Nest$fgetmFaceDetectionParameterConfigure(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    move-result-object v3

    if-eqz v3, :cond_91

    .line 86
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v3}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->-$$Nest$fgetmFaceDetectionParameterConfigure(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->getSensorRect()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_5a

    .line 88
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v4, p1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->-$$Nest$mfindOriginalMaxFaceRect(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;[Lcom/transsion/camera/utils/SettingInfo$CameraFace;)Landroid/graphics/Rect;

    move-result-object v4

    .line 89
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v5, v4

    int-to-float v4, v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    mul-int/2addr v5, v3

    int-to-float v3, v5

    div-float/2addr v4, v3

    const v3, 0x3bb43958    # 0.0055f

    cmpl-float v3, v4, v3

    if-lez v3, :cond_51

    move v3, v2

    goto :goto_52

    :cond_51
    move v3, v0

    .line 91
    :goto_52
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->updateMaxFaceRatio(F)V

    goto :goto_5b

    :cond_5a
    move v3, v0

    :goto_5b
    if-eqz p2, :cond_8f

    .line 94
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v4, p1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->-$$Nest$mfindMaxFaceRect(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;[Lcom/transsion/camera/utils/SettingInfo$CameraFace;)Landroid/graphics/Rect;

    move-result-object v4

    .line 95
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/transsion/camera/utils/CoordinatesUtil;->referenceToViewSpace(Landroid/graphics/Rect;II)Landroid/graphics/Rect;

    move-result-object v4

    .line 96
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    mul-int/lit8 v5, v5, 0x64

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v5, v4

    int-to-float v4, v5

    .line 97
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    mul-int/2addr v5, p2

    int-to-float p2, v5

    div-float/2addr v4, p2

    .line 98
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->-$$Nest$fgetmFaceDetectionParameterConfigure(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    move-result-object p2

    invoke-virtual {p2, v4}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->updateFaceProportion(F)V

    :cond_8f
    :goto_8f
    move p2, v2

    goto :goto_a7

    :cond_91
    move v3, v0

    goto :goto_8f

    .line 102
    :cond_93
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->-$$Nest$fgetmFaceDetectionParameterConfigure(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    move-result-object p2

    if-eqz p2, :cond_a5

    .line 103
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->-$$Nest$fgetmFaceDetectionParameterConfigure(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    move-result-object p2

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->updateFaceProportion(F)V

    :cond_a5
    move v3, v0

    move p2, v1

    .line 106
    :goto_a7
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v4}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->-$$Nest$fgetmHasValidFace(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)I

    move-result v4

    if-eq v3, v4, :cond_131

    .line 107
    const-string v4, "key_has_valid_face"

    if-ne v3, v2, :cond_bf

    .line 108
    iget-object v5, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v5}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->-$$Nest$fgetmFaceValidResponder(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v5

    const-string v6, "face_valid"

    invoke-virtual {v5, v4, v6}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_ca

    .line 110
    :cond_bf
    iget-object v5, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v5}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->-$$Nest$fgetmFaceValidResponder(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v5

    const-string v6, "no_valid_face"

    invoke-virtual {v5, v4, v6}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    :goto_ca
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-virtual {v4}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->dxoTestSupport()Z

    move-result v4

    if-eqz v4, :cond_12c

    .line 113
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v4}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->-$$Nest$fgetmHasValidFace(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)I

    move-result v4

    if-ne v4, v2, :cond_dc

    if-ne v3, v2, :cond_e6

    :cond_dc
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v4}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->-$$Nest$fgetmHasValidFace(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)I

    move-result v4

    if-eq v4, v2, :cond_12c

    if-ne v3, v2, :cond_12c

    .line 115
    :cond_e6
    invoke-static {}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "faceStateChanged mHasValidFace: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v6}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->-$$Nest$fgetmHasValidFace(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", currentValidFaceState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 116
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v4, v3}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->-$$Nest$fputmHasValidFace(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;I)V

    .line 117
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v4}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$000(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v4

    if-eqz v4, :cond_12c

    .line 118
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v4}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$100(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-virtual {v5}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->getKey()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    .line 122
    :cond_12c
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v4, v3}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->-$$Nest$fputmHasValidFace(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;I)V

    .line 124
    :cond_131
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v3}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->-$$Nest$fgetmFaceRectResponder(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v3

    const-string v4, "key_face_rect"

    invoke-virtual {v3, v4, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v3

    .line 127
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v4}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->-$$Nest$misSettingSupport(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Z

    move-result v4

    if-eqz v3, :cond_290

    .line 129
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v5

    iget-boolean v5, v5, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsHumanDetectNew:Z

    const/4 v6, 0x0

    if-nez v5, :cond_15b

    iget-object v5, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v5}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->-$$Nest$fgetmIsCapturing(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Z

    move-result v5

    if-nez v5, :cond_15d

    :cond_15b
    if-nez v4, :cond_161

    .line 130
    :cond_15d
    invoke-interface {v3, v6, v1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    return v4

    .line 131
    :cond_161
    iget-object v5, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v7, "on"

    invoke-static {v7, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v7, "1"

    if-eqz v5, :cond_1ef

    if-eqz p3, :cond_177

    .line 133
    invoke-interface {v3, p1, v1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    goto :goto_17a

    .line 135
    :cond_177
    invoke-interface {v3, v6, v1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    .line 137
    :goto_17a
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p3

    invoke-virtual {p3}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->isFaceBeautyMode()Z

    move-result p3

    if-eqz p3, :cond_290

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    invoke-static {p3}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$200(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object p3

    invoke-interface {p3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_290

    if-eqz p2, :cond_290

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->-$$Nest$fgetmFirebaseGenderSupport(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Z

    move-result p2

    if-nez p2, :cond_1a0

    goto/16 :goto_290

    .line 140
    :cond_1a0
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->isFaceInfoDetected()Z

    move-result p2

    if-nez p2, :cond_1d5

    .line 141
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->needFaceInfoDetection()Z

    move-result p2

    if-eqz p2, :cond_1d5

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->-$$Nest$fgetisFaceDetecting(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Z

    move-result p2

    if-nez p2, :cond_1d5

    .line 142
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->-$$Nest$fgetmHandle(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 143
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->-$$Nest$fgetmHandle(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Landroid/os/Handler;

    move-result-object p2

    const-wide/16 v0, 0x3e8

    invoke-virtual {p2, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 144
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p2, v2}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->-$$Nest$fputisFaceDetecting(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;Z)V

    .line 147
    :cond_1d5
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->-$$Nest$fgetisFaceDetecting(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Z

    move-result p2

    if-eqz p2, :cond_290

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->-$$Nest$fgetmFaceDetectionParameterConfigure(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->getFaceDectionMode()I

    move-result p2

    if-ne p2, v2, :cond_290

    .line 148
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->-$$Nest$mcheckTranssionFaceInfo(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;[Lcom/transsion/camera/utils/SettingInfo$CameraFace;)V

    return v4

    .line 150
    :cond_1ef
    iget-object v5, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v8, "gender_indentification"

    invoke-static {v8, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_27f

    if-eqz p3, :cond_203

    .line 152
    invoke-interface {v3, p1, v1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    goto :goto_206

    .line 154
    :cond_203
    invoke-interface {v3, v6, v1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    .line 156
    :goto_206
    iget-object p3, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p3}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->-$$Nest$fgetmFaceDetectionParameterConfigure(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    move-result-object p3

    invoke-virtual {p3}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->getFaceDectionMode()I

    move-result p3

    if-ne p3, v0, :cond_290

    if-eqz p1, :cond_290

    .line 159
    iget-object p3, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p3}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->-$$Nest$fgetmFaceDetectionResponder(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p3

    const-string v1, "key_face_detection"

    invoke-virtual {p3, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p3

    invoke-virtual {p3}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->isFaceBeautyMode()Z

    move-result p3

    if-eqz p3, :cond_290

    iget-object p3, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    invoke-static {p3}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$300(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object p3

    invoke-interface {p3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_290

    if-eqz p2, :cond_290

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->-$$Nest$fgetmFirebaseGenderSupport(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Z

    move-result p2

    if-nez p2, :cond_244

    goto :goto_290

    .line 163
    :cond_244
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->isFaceInfoDetected()Z

    move-result p2

    if-nez p2, :cond_265

    .line 164
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->needFaceInfoDetection()Z

    move-result p2

    if-eqz p2, :cond_265

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->-$$Nest$fgetisFaceDetecting(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Z

    move-result p2

    if-nez p2, :cond_265

    .line 165
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p2, v2}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->-$$Nest$fputisFaceDetecting(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;Z)V

    .line 168
    :cond_265
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->-$$Nest$fgetisFaceDetecting(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Z

    move-result p2

    if-eqz p2, :cond_290

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->-$$Nest$fgetmFaceDetectionParameterConfigure(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->getFaceDectionMode()I

    move-result p2

    if-ne p2, v0, :cond_290

    .line 169
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->-$$Nest$mcheckTranssionFaceInfo(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;[Lcom/transsion/camera/utils/SettingInfo$CameraFace;)V

    return v4

    .line 173
    :cond_27f
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$1;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    const-string p1, "off"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_290

    .line 174
    invoke-interface {v3, v6, v1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_290
    :goto_290
    return v4
.end method
