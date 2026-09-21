.class public Lcom/transsion/camera/feature/mode/doc/DocumentMode;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI$IDocStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;,
        Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;,
        Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/CommonPhotoMode;",
        "Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI$IDocStatusListener;"
    }
.end annotation


# static fields
.field public static final DOC_LICENCE_BASE_64:Ljava/lang/String; = "oWxLt1xJmA3f1sRtPJwbY9frvu8+7f7ZeOnf6Ug//BSuDF40cJoVL+9UUfHwStdYs6QEDV1cYTSlM9QXA4QDWjpDdjS+cxEHmjwL7aH6PV5W2eQ6EMKft7c9kEfODN327rIyVrzIfIGsssT/Y5RJ4K0cIcsI6a3xvsUeJLthdq+/LKGWev8rl9ao0cALG4+HpwWzksjF3w96Gaz8PZ5VCtr0bec4SGXzWhLGDN/nzsQE8l3uYLZ8IKQkrbUL8A/NpZ32SXyB4MqSA6oIJS7yghon4f9E69pOk+Mp/RQ4TxnDtWK6tG7FIsO1Yrq0bsUiw7ViurRuxSLDtWK6tG7FIsO1Yrq0bsUiw7ViurRuxSLDtWK6tG7FIsO1Yrq0bsUiw7ViurRuxSLDtWK6tG7FIsO1Yrq0bsUiEPnlM7fbvD4fcRLEWmhUozSiQw5euy2yWx5UVPr2LoHH7n/2kSmAc3sImRfKMek4BrhYOYfNKMQcvUN0+epDRxF0ZeDAu1dY"

.field public static final MSG_DOC_DETECTOR_HANDLE:I = 0x65

.field public static final MSG_DOC_HIDE_DIALOG:I = 0x2

.field public static final MSG_DOC_INIT_HANDLE:I = 0x66

.field public static final MSG_DOC_SHOW_DIALOG:I = 0x1

.field public static final MSG_DOC_UNINIT_HANDLE:I = 0x67

.field public static final MSG_DOC_UPDATE_THUMBNAIL:I = 0x3

.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field public static sCheckDetectorLicense:Z


# instance fields
.field cameraOperateActionCallback:Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;

.field private mCallBack:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;

.field private mCount:I

.field private mCurrentEnable:Z

.field private mCurrentUri:Landroid/net/Uri;

.field private mDocDetectorHandler:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;

.field mDocHDSupport:Z

.field private mDocHandler:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;

.field mDocSupport3dnr:Z

.field private mDocUI:Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;

.field private mEnableMFNR:Z

.field private mFlagDraw:Z

.field private final mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

.field private mGLLine:Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;

.field private final mHintInfoAlways:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mIgnoreFrame:I

.field private mIsCheck:Z

.field private mIsModeInit:Z

.field private mIsPause:Z

.field private mIsShowDialog:Z

.field private mLimitBV:I

.field private mMaxHeight:F

.field private mMfnrISO:I

.field private mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field private mShutterClick:Z

.field private mThrLevelLuminanceSupported:Z

.field private mXnetDocDetector:Lcom/youtu/ocr/ximage/DocDetector;

.field mYUVCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;


# direct methods
.method public static synthetic $r8$lambda$K67dOMZemXufj95VziHXbNnNRyw(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->doOnFrameResultCallback(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentUri(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Landroid/net/Uri;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mCurrentUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDocHandler(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocHandler:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDocUI(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocUI:Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFlagDraw(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mFlagDraw:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmGLLine(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mGLLine:Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIgnoreFrame(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIgnoreFrame:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsCheck(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsCheck:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsModeInit(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsModeInit:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsPause(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsPause:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmShutterClick(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mShutterClick:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmXnetDocDetector(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/youtu/ocr/ximage/DocDetector;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mXnetDocDetector:Lcom/youtu/ocr/ximage/DocDetector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmFlagDraw(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mFlagDraw:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmGLLine(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mGLLine:Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIgnoreFrame(Lcom/transsion/camera/feature/mode/doc/DocumentMode;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIgnoreFrame:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsCheck(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsCheck:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mdetectorImage(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Landroid/media/Image;II)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->detectorImage(Landroid/media/Image;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideTip(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->hideTip()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreadModel(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Landroid/content/Context;)[B
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->readModel(Landroid/content/Context;)[B

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mresetTips(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->resetTips()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowTip(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->showTip()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartVibrator(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->startVibrator()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 70
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "DocumentMode"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 138
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;-><init>(Ljava/lang/String;)V

    .line 85
    sget-object p1, Lcom/youtu/ocr/ximage/DocDetector;->sharedInstance:Lcom/youtu/ocr/ximage/DocDetector;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mXnetDocDetector:Lcom/youtu/ocr/ximage/DocDetector;

    .line 86
    new-instance p1, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mHintInfoAlways:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 95
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsModeInit:Z

    const/4 p1, 0x1

    .line 96
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsCheck:Z

    .line 97
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsPause:Z

    .line 98
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsShowDialog:Z

    .line 99
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mFlagDraw:Z

    .line 100
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mShutterClick:Z

    .line 103
    new-instance v1, Lcom/transsion/camera/feature/mode/doc/DocumentMode$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    const/16 v1, 0x2710

    .line 104
    iput v1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mLimitBV:I

    .line 105
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mCurrentEnable:Z

    .line 106
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocHDSupport:Z

    .line 107
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocSupport3dnr:Z

    .line 208
    new-instance p1, Lcom/transsion/camera/feature/mode/doc/DocumentMode$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode$1;-><init>(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->cameraOperateActionCallback:Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;

    .line 490
    new-instance p1, Lcom/transsion/camera/feature/mode/doc/DocumentMode$2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode$2;-><init>(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mYUVCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Landroid/content/Context;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Landroid/content/Context;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private detectorImage(Landroid/media/Image;II)V
    .registers 6

    .line 503
    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->getNV21Buffer(Landroid/media/Image;)[B

    move-result-object p1

    .line 504
    iget v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mCount:I

    div-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_27

    const/4 v0, 0x0

    .line 505
    iput v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mCount:I

    .line 506
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocDetectorHandler:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 507
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 508
    iput v1, v0, Landroid/os/Message;->what:I

    .line 509
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 510
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 511
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 512
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocDetectorHandler:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_27
    add-int/lit8 v0, v0, 0x1

    .line 514
    iput v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mCount:I

    return-void
.end method

.method private doOnFrameResultCallback(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 7

    .line 114
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkBrightnessResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p2

    .line 115
    invoke-interface {p3, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkNightResult(Landroid/hardware/camera2/CaptureResult;)I

    move-result p3

    .line 116
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocHDSupport:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3c

    .line 117
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 118
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mMfnrISO:I

    if-gt p1, v0, :cond_25

    const/16 p1, 0x6e

    if-ne p3, p1, :cond_23

    goto :goto_25

    :cond_23
    move p1, v2

    goto :goto_26

    :cond_25
    :goto_25
    move p1, v1

    .line 119
    :goto_26
    iget-boolean p3, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mEnableMFNR:Z

    if-eq p3, p1, :cond_3c

    .line 120
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mEnableMFNR:Z

    .line 121
    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz p1, :cond_35

    invoke-static {}, Lcom/transsion/camera/feature/mode/doc/DocumentRestriction;->getMFNRRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    goto :goto_39

    .line 122
    :cond_35
    invoke-static {}, Lcom/transsion/camera/feature/mode/doc/DocumentRestriction;->getMFNRRelationOff()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    .line 121
    :goto_39
    invoke-interface {p3, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 126
    :cond_3c
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocHDSupport:Z

    if-eqz p1, :cond_63

    if-eqz p2, :cond_63

    array-length p1, p2

    if-lez p1, :cond_63

    .line 128
    aget p1, p2, v2

    iget p2, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mLimitBV:I

    if-le p1, p2, :cond_4c

    goto :goto_4d

    :cond_4c
    move v1, v2

    .line 129
    :goto_4d
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mCurrentEnable:Z

    if-eq p1, v1, :cond_63

    .line 130
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mCurrentEnable:Z

    .line 131
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v1, :cond_5c

    invoke-static {}, Lcom/transsion/camera/feature/mode/doc/DocumentRestriction;->getSuperDefinitionRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    goto :goto_60

    .line 132
    :cond_5c
    invoke-static {}, Lcom/transsion/camera/feature/mode/doc/DocumentRestriction;->getMFNRRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    .line 131
    :goto_60
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    :cond_63
    return-void
.end method

.method private hideTip()V
    .registers 2

    .line 233
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_9

    .line 234
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mHintInfoAlways:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_9
    return-void
.end method

.method private readModel(Landroid/content/Context;)[B
    .registers 6

    const-string v0, "camasset/etc/asset/TranssionCamera/DocDetectV15.xbin"

    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/FileUtil;->readStream(Ljava/io/InputStream;I)[B

    move-result-object v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_13

    return-object v0

    :catch_13
    move-exception v1

    sget-object v2, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/camera/utils/manager/CamAssetManager;->getInstance()Lcom/transsion/camera/utils/manager/CamAssetManager;

    move-result-object v1

    const-string v2, "DocDetectV15.xbin"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/utils/manager/CamAssetManager;->getAssetPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/utils/FileUtil;->getFileData(Ljava/io/File;)[B

    move-result-object v0

    return-object v0
.end method

.method private resetTips()V
    .registers 4

    .line 548
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsModeInit:Z

    if-eqz v0, :cond_18

    .line 549
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mHintInfoAlways:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/mode/doc/R$string;->doc_mode_tips:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 550
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->showTip()V

    :cond_18
    return-void
.end method

.method private showTip()V
    .registers 3

    .line 227
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_13

    .line 228
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mHintInfoAlways:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_13
    return-void
.end method

.method private startVibrator()V
    .registers 4

    .line 465
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    const-wide/16 v0, 0x32

    const/4 v2, -0x1

    .line 466
    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    if-eqz p0, :cond_17

    .line 468
    invoke-virtual {p0, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_17
    return-void
.end method


# virtual methods
.method public buildCaptureInfo()Lcom/transsion/camera/app/common/mode/CaptureInfo;
    .registers 4

    .line 556
    new-instance v0, Lcom/transsion/camera/app/common/mode/CaptureInfo;

    iget v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureOrientation:I

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->needMirror()Z

    move-result v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->autoWatermark()Z

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/transsion/camera/app/common/mode/CaptureInfo;-><init>(IZZ)V

    return-object v0
.end method

.method public bridge synthetic createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .registers 1

    .line 69
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->createImageProcessor()Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    move-result-object p0

    return-object p0
.end method

.method public createImageProcessor()Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;
    .registers 2

    .line 561
    new-instance v0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-direct {v0, p0, p0}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V

    return-object v0
.end method

.method public doOnFileSaved(Landroid/net/Uri;ZZ)V
    .registers 7

    .line 530
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->doOnFileSaved(Landroid/net/Uri;ZZ)V

    const/4 p2, 0x0

    .line 531
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mShutterClick:Z

    .line 532
    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p3, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-virtual {p3}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->shouldDiaplay()Z

    move-result p3

    .line 533
    sget-object v0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doOnFileSaved show dialog = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsShowDialog = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsShowDialog:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p3, :cond_49

    .line 534
    iget-boolean p3, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsShowDialog:Z

    if-eqz p3, :cond_49

    .line 535
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocHandler:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 536
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    .line 537
    iput v0, p2, Landroid/os/Message;->what:I

    .line 538
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mCurrentUri:Landroid/net/Uri;

    .line 539
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocHandler:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 541
    :cond_49
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsCheck:Z

    .line 542
    iput p2, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIgnoreFrame:I

    .line 543
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->resetTips()V

    return-void
.end method

.method protected getBackMaxZoomRatio()I
    .registers 1

    .line 716
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomRatioFor13M:Z

    if-nez p0, :cond_14

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomRatioFor8M:Z

    if-eqz p0, :cond_11

    goto :goto_14

    .line 719
    :cond_11
    sget p0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_10X:I

    return p0

    .line 717
    :cond_14
    :goto_14
    sget p0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_4X:I

    return p0
.end method

.method protected getBackZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;
    .registers 6

    .line 708
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getBackZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object p0

    const/16 v0, 0x10

    const/16 v1, 0x80

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/16 v4, 0x8

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ZoomConfig;->setSupportedZoomTypes([I)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object p0

    return-object p0
.end method

.method public getDataFlowType()I
    .registers 2

    const/4 p0, 0x1

    const/4 v0, 0x4

    .line 327
    invoke-static {p0, v0}, Lcom/transsion/camera/adapter/DataFlowSpec;->makeDataFlowSpec(II)I

    move-result p0

    return p0
.end method

.method public getExpectBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 9

    .line 473
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 474
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 477
    iget v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mMaxHeight:F

    int-to-float v1, v3

    cmpg-float v2, v0, v1

    const/high16 v5, 0x3f800000    # 1.0f

    if-gez v2, :cond_14

    div-float v1, v0, v1

    goto :goto_15

    :cond_14
    move v1, v5

    :goto_15
    int-to-float v2, v4

    cmpg-float v6, v0, v2

    if-gez v6, :cond_1c

    div-float v5, v0, v2

    :cond_1c
    cmpg-float v0, v5, v1

    if-gez v0, :cond_21

    move v1, v5

    .line 484
    :cond_21
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 485
    invoke-virtual {v5, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 486
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result p0

    rsub-int p0, p0, 0x168

    int-to-float p0, p0

    invoke-virtual {v5, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    move-object v0, p1

    .line 487
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .registers 3

    .line 337
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 338
    const-string v0, "key_mood_light"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    const-string v0, "key_tran_plugin"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    const-string v0, "key_shutter_sound_optional"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    const-string v0, "key_distortion_correction"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    const-string v0, "key_fingerprint_capture"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    const-string v0, "key_setting_smart_denoise"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    const-string v0, "key_in_sensor_zoom"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    const-string v0, "key_voice_detection"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocHDSupport:Z

    if-eqz v0, :cond_3b

    .line 347
    const-string v0, "key_super_definition"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    const-string v0, "key_high_resolution"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    :cond_3b
    const-string v0, "key_taint_detection"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocSupport3dnr:Z

    if-eqz p0, :cond_49

    .line 352
    const-string p0, "key_night_3dnr"

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    :cond_49
    const-string p0, "key_touch_capture"

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 357
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .registers 13

    .line 362
    invoke-static {}, Lcom/transsion/camera/feature/mode/doc/DocumentRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v0

    const-string v1, "on"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 364
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v3, "key_picture_size"

    invoke-interface {v1, v3}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryEntryValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x0

    if-eqz v1, :cond_5b

    .line 366
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_5b

    .line 369
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_20
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 370
    invoke-static {v6}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v7

    .line 371
    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    int-to-double v10, v7

    div-double/2addr v8, v10

    const-wide v10, 0x3ff5555555555555L    # 1.3333333333333333

    sub-double/2addr v8, v10

    .line 372
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v7, v7, v9

    if-gtz v7, :cond_20

    move-object v4, v6

    :cond_4f
    if-nez v4, :cond_58

    .line 379
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v4, v1

    .line 381
    :cond_58
    invoke-virtual {v0, v3, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :cond_5b
    sget-object v1, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "defaultPictureSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 385
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocHDSupport:Z

    if-eqz p0, :cond_7c

    .line 386
    const-string p0, "key_super_definition"

    const-string v1, "off"

    invoke-virtual {v0, p0, v1, v1}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :cond_7c
    invoke-static {}, Lcom/transsion/camera/feature/mode/doc/DocumentRestriction;->getCamModeRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->mergeRelation(Lcom/transsion/camera/app/common/relation/Relation;Lcom/transsion/camera/app/common/relation/Relation;)V

    return-object v0
.end method

.method protected getOpenCamerId(Ljava/lang/String;Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 8

    .line 698
    invoke-virtual {p0, p2, p3, p4}, Lcom/transsion/camera/app/common/mode/CameraMode;->isSupportSAT(Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)Z

    move-result p0

    if-nez p0, :cond_13

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_13

    .line 699
    const-string p0, "0"

    return-object p0

    :cond_13
    return-object p5
.end method

.method public getSettingGroup()J
    .registers 5

    .line 332
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getSettingGroup()J

    move-result-wide v0

    const-wide/32 v2, 0x1000000

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public getThumbnailSource()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public hideDialog()V
    .registers 2

    .line 405
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocHandler:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .registers 8

    .line 180
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 181
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mDocHDSupport:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocHDSupport:Z

    .line 182
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mDocSupport3dnr:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocSupport3dnr:Z

    .line 183
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mDocSupportMfnrIso:I

    iput p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mMfnrISO:I

    .line 184
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mLuminanceAdjustSupportForCamera:[I

    const/4 p2, 0x0

    aget p1, p1, p2

    const/4 p4, 0x1

    if-gtz p1, :cond_31

    .line 185
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mLuminanceAdjustSupportForCamera:[I

    aget p1, p1, p4

    if-lez p1, :cond_32

    :cond_31
    move p2, p4

    :cond_32
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mThrLevelLuminanceSupported:Z

    .line 186
    new-instance p1, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;-><init>(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Lcom/transsion/camera/feature/mode/doc/DocumentMode-IA;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mCallBack:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;

    .line 187
    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    .line 188
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mCallBack:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeInit(Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V

    .line 189
    new-instance p1, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;-><init>(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocHandler:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;

    .line 190
    new-instance p1, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;

    invoke-static {}, Lcom/transsion/camera/feature/mode/doc/DocumentThread;->getInstance()Lcom/transsion/camera/feature/mode/doc/DocumentThread;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;-><init>(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocDetectorHandler:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;

    .line 191
    iput-boolean p4, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsModeInit:Z

    .line 192
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/mode/doc/R$dimen;->dialog_image_max_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mMaxHeight:F

    .line 193
    new-instance p1, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUI;->getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object p3

    sget p4, Lcom/transsion/camera/feature/mode/doc/R$layout;->doc_layout:I

    iget-object p5, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-direct {p1, p2, p3, p4, p5}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/transsion/camera/app/common/IAppUI;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocUI:Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;

    .line 194
    iget p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    invoke-virtual {p1, p2, p7}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->initScreenForm(II)V

    .line 195
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocUI:Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->setDocStatusListener(Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI$IDocStatusListener;)V

    .line 196
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocUI:Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 197
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mHintInfoAlways:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/camera/feature/mode/doc/R$string;->doc_mode_tips:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 198
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p2, 0x10f

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 199
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->cameraOperateActionCallback:Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUI;->setModeNotifyCameraOperateActionCallBack(Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;)V

    .line 200
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mThrLevelLuminanceSupported:Z

    if-eqz p1, :cond_d0

    .line 201
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mHintInfoAlways:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/camera/feature/mode/doc/R$string;->doc_mode_tips:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 202
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->cameraOperateActionCallback:Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUI;->setModeNotifyCameraOperateActionCallBack(Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;)V

    .line 204
    :cond_d0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mDocAlgoIntensity:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->setIntensity(Ljava/lang/String;)V

    return-void
.end method

.method protected isShot2ShotEnable()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public onBackPressed()Z
    .registers 2

    .line 566
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocUI:Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 567
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocHandler:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 p0, 0x1

    return p0

    .line 570
    :cond_10
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onCameraStateChanged(I)V
    .registers 3

    .line 171
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onCameraStateChanged(I)V

    const/4 v0, 0x6

    if-ne p1, v0, :cond_d

    .line 172
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mThrLevelLuminanceSupported:Z

    if-nez p1, :cond_d

    .line 173
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->resetTips()V

    :cond_d
    return-void
.end method

.method public onModeCaptureFailed(Z[J)V
    .registers 3

    .line 520
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onModeCaptureFailed(Z[J)V

    .line 521
    sget-object p1, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "onModeCaptureFailed"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 522
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mShutterClick:Z

    const/4 p2, 0x1

    .line 523
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsCheck:Z

    .line 524
    iput p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIgnoreFrame:I

    .line 525
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->resetTips()V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 2

    .line 311
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->onOrientationChanged(I)V

    .line 312
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocUI:Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->onOrientationChanged(I)V

    return-void
.end method

.method public onPostViewData([BIIIIJ)V
    .registers 8

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 7

    .line 300
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->onScreenFormChanged(IZ)V

    .line 301
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocHandler:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p2

    if-eqz p2, :cond_24

    .line 302
    sget-object p2, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onScreenFormChanged hasMessages MSG_DOC_HIDE_DIALOG"

    invoke-static {p2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 303
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocHandler:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 304
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocHandler:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p2, v0, v3, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 306
    :cond_24
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocUI:Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->onScreenFormChanged(I)V

    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 143
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string p2, "key_fold_switch_preview"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 146
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocHandler:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 147
    sget-object p1, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "KEY_FOLD_SWITCH_PREVIEW changed hasMessages MSG_DOC_HIDE_DIALOG"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 148
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocHandler:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 149
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocHandler:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;

    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p2, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_2c
    return-void
.end method

.method public onSettingReady()V
    .registers 4

    .line 156
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingReady()V

    .line 157
    sget-object v0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCameraDeviceControl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 158
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsCheck:Z

    .line 159
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocDetectorHandler:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 160
    new-instance v0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;

    invoke-static {}, Lcom/transsion/camera/feature/mode/doc/DocumentThread;->getInstance()Lcom/transsion/camera/feature/mode/doc/DocumentThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;-><init>(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocDetectorHandler:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;

    .line 162
    :cond_3d
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocDetectorHandler:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_54

    .line 164
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mYUVCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->addPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V

    .line 165
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    :cond_54
    return-void
.end method

.method protected onShutterClickBefore(I)Z
    .registers 5

    .line 240
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onShutterClickBefore(I)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_27

    .line 241
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mHintInfoAlways:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/mode/doc/R$string;->doc_mode_tips_correcting:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 242
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mHintInfoAlways:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    const/4 p1, 0x1

    .line 243
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsShowDialog:Z

    .line 244
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsCheck:Z

    .line 245
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mShutterClick:Z

    return p1

    :cond_27
    return v0
.end method

.method public pause()V
    .registers 6

    .line 264
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->pause()V

    const/4 v0, 0x0

    .line 265
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsShowDialog:Z

    const/4 v1, 0x1

    .line 266
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsPause:Z

    .line 267
    iput v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIgnoreFrame:I

    .line 268
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mHintInfoAlways:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/mode/doc/R$string;->doc_mode_tips:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 269
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mHintInfoAlways:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 270
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocUI:Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->hideView()V

    .line 271
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v2, :cond_31

    .line 272
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mFrameResultCallback:Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    .line 274
    :cond_31
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mCurrentEnable:Z

    .line 275
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mEnableMFNR:Z

    return-void
.end method

.method public performAeAfLock(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;Z)V
    .registers 4

    .line 394
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->performAeAfLock(Lcom/transsion/camera/app/common/mode/IAeAfLock$State;Z)V

    if-nez p2, :cond_17

    .line 396
    invoke-static {}, Lcom/transsion/camera/feature/mode/doc/DocumentRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p1

    const-string p2, "on"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 398
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    :cond_17
    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public resume()V
    .registers 2

    .line 258
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->resume()V

    const/4 v0, 0x0

    .line 259
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsPause:Z

    return-void
.end method

.method public unInit()V
    .registers 4

    .line 280
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->unInit()V

    .line 281
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocUI:Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 282
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeUninit()V

    const/4 v0, 0x0

    .line 283
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsModeInit:Z

    .line 284
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mFlagDraw:Z

    .line 285
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mHintInfoAlways:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 286
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    .line 287
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->addPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V

    .line 288
    :cond_23
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocUI:Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->unInit()V

    .line 289
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocDetectorHandler:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;

    const/16 v2, 0x67

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 290
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v2, 0x110

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 291
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setModeNotifyCameraOperateActionCallBack(Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;)V

    .line 292
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mThrLevelLuminanceSupported:Z

    if-eqz v0, :cond_44

    .line 293
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setModeNotifyCameraOperateActionCallBack(Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;)V

    .line 295
    :cond_44
    invoke-static {}, Lcom/transsion/camera/feature/mode/doc/DocumentThread;->quitDocThread()V

    return-void
.end method
