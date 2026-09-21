.class public Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field public static final FACE_DECTION_MODE_OFF:I = 0x0

.field public static final FACE_DECTION_MODE_ON:I = 0x1

.field public static final FACE_DECTION_ONLY_GENDER:I = 0x2

.field private static final FACE_PROPORTION_THRESHOLD:F = 8.0f

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy;

.field private mFaceDectMode:I

.field private mFaceDetection:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

.field private mFaceDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;

.field private mFaceProportion:F

.field private mIsFaceDetectionStarted:Z

.field private mSensorRect:Landroid/graphics/Rect;

.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 32
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FaceDetectionPC"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .registers 4

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mFaceDectMode:I

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy;

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mFaceProportion:F

    .line 51
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mFaceDetection:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    .line 52
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .registers 5

    .line 120
    sget-object v0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configCommand,mFaceDetectionCallback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mFaceDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mIsFaceDetectionStarted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mIsFaceDetectionStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " cameraProxy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mFaceDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;

    if-eqz v1, :cond_58

    .line 122
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mFaceDetection:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->isCurrentModeNotSupportFD()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 123
    const-string p0, "[configCommand] current mode not support FD, return"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 126
    :cond_3c
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mIsFaceDetectionStarted:Z

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy;

    if-ne p1, v1, :cond_4a

    .line 127
    const-string p0, "[configCommand] already started, return"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 130
    :cond_4a
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mFaceDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy;->setFaceDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;)V

    .line 131
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraProxy;->startFaceDetection()V

    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mIsFaceDetectionStarted:Z

    .line 133
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy;

    return-void

    .line 135
    :cond_58
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mIsFaceDetectionStarted:Z

    if-nez v1, :cond_62

    .line 136
    const-string p0, "[configCommand] already stopped, return"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_62
    const/4 v0, 0x0

    .line 139
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy;->setFaceDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;)V

    .line 140
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraProxy;->stopFaceDetection()V

    const/4 p1, 0x0

    .line 141
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mIsFaceDetectionStarted:Z

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .registers 6

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mFaceDetection:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gender_indentification"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    const/4 v0, 0x2

    .line 86
    iput v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mFaceDectMode:I

    goto :goto_23

    .line 87
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mFaceDetection:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "off"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 88
    iput v1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mFaceDectMode:I

    .line 90
    :cond_23
    :goto_23
    sget-object v0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[configParameters] mFaceDectMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mFaceDectMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", hasValidFace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mFaceDetection:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->hasValidFace()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mFaceProportion:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 91
    iget v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mFaceDectMode:I

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranFaceDetectMode(I)V

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mFaceDetection:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->dxoTestSupport()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mFaceDetection:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->hasValidFace()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->hasValidFace(Z)V

    .line 95
    :cond_69
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mFaceDetection:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->isCurrentModeNotSupportFD()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 96
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setFaceDetectionEnable(Z)V

    const/4 p0, 0x0

    .line 97
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setFaceProportion(F)V

    goto :goto_7e

    .line 99
    :cond_79
    iget p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mFaceProportion:F

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setFaceProportion(F)V

    :goto_7e
    return v1
.end method

.method getFaceDectionMode()I
    .registers 1

    .line 146
    iget p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mFaceDectMode:I

    return p0
.end method

.method getSensorRect()Landroid/graphics/Rect;
    .registers 1

    .line 172
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mSensorRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method resetFaceDetectionState()V
    .registers 2

    const/4 v0, 0x0

    .line 168
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mIsFaceDetectionStarted:Z

    return-void
.end method

.method public sendSettingChangeRequest()V
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mFaceDetection:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .registers 9

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    const-string v1, "on"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    const-string v2, "off"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    const-string v2, "gender_indentification"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mFaceDetection:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v3

    .line 70
    sget-object v4, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setCameraCapabilities] mFaceDetection.getCurrentCameraId(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mFaceDetection:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", isSatFocusCamera: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v5

    iget-boolean v5, v5, Lcom/transsion/camera/utils/CustomConfigUtil;->mGenderIdentificationDefaultOn:Z

    if-eqz v5, :cond_57

    iget-object v5, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mFaceDetection:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    iget-boolean v5, v5, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->mIsAsdMode:Z

    if-eqz v5, :cond_57

    if-eqz v3, :cond_57

    move-object v1, v2

    .line 78
    :cond_57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setCameraCapabilities] defaultValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 79
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mFaceDetection:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-virtual {v2, v0, v1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    .line 80
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSensorRect()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mSensorRect:Landroid/graphics/Rect;

    return-void
.end method

.method setFaceDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;)V
    .registers 2

    .line 164
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mFaceDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;

    return-void
.end method

.method startFaceInfoDection()V
    .registers 2

    const/4 v0, 0x1

    .line 150
    iput v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mFaceDectMode:I

    .line 151
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mFaceDetection:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method stopFaceInfoDection(Z)V
    .registers 5

    const/4 v0, 0x0

    .line 155
    iput v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mFaceDectMode:I

    .line 156
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mFaceDetection:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy;

    if-eqz v1, :cond_1d

    if-eqz p1, :cond_1d

    const/4 p1, 0x0

    .line 158
    invoke-virtual {v1, p1}, Lcom/transsion/camera/adapter/CameraProxy;->setFaceDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$FaceDetectionCallback;)V

    .line 159
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraProxy;->stopFaceDetection(Z)V

    :cond_1d
    return-void
.end method

.method public updateFaceProportion(F)V
    .registers 4

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mCameraProxy:Lcom/transsion/camera/adapter/CameraProxy;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraProxy;->isQcomCaptureFlow()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 107
    sget-object p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "Qcom not support, shouldn\'t requestChangeSettingValue"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_12
    const/high16 v0, 0x41000000    # 8.0f

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_1e

    .line 111
    iget v1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mFaceProportion:F

    cmpg-float v1, v1, v0

    if-ltz v1, :cond_28

    :cond_1e
    cmpg-float v1, p1, v0

    if-gez v1, :cond_39

    iget v1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mFaceProportion:F

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_39

    .line 113
    :cond_28
    iput p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mFaceProportion:F

    .line 114
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->mFaceDetection:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->getKey()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    :cond_39
    return-void
.end method
