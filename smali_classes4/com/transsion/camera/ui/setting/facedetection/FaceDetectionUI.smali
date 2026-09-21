.class public Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$StatusChangeListener;,
        Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$UIHandler;,
        Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$FaceResultCallbackImpl;
    }
.end annotation


# static fields
.field private static final FACEVIEW_HIDE_TIME:I

.field private static final KEY:Ljava/lang/String; = "key_face_detection"

.field private static final MSG_UPDATE_FACES:I = 0x64

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mActiveFaceView:Z

.field private mCanShowFaceView:Z

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mFaceView:Lcom/transsion/camera/ui/setting/facedetection/FaceView;

.field private mFaceViewState:Lcom/transsion/camera/app/common/ui/helper/ViewState;

.field private mIsAutoFocusSwitchOn:Z

.field private volatile mIsCapturing:Z

.field private mIsFaceViewShowing:Z

.field private mNumOfFaces:I

.field private mPreviewViewRect:Landroid/graphics/Rect;

.field private mStartTime:J

.field private mStatusChangeListener:Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private final mUIHandler:Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$UIHandler;


# direct methods
.method public static synthetic $r8$lambda$1jZRez30C5YsaP7mA2Qf8rimsBA(Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->lambda$doUpdateFaceView$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$f5IeVY01duZyiI8_wLoUh1s4Sok([B)[B
    .registers 2

    .line 76
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-static {v0, p0}, Lcom/transsion/camera/ui/setting/facedetection/debug/FaceOfflineRenderHelper;->render(Landroid/content/Context;[B)[B

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;)Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$UIHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mUIHandler:Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$UIHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmActiveFaceView(Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mActiveFaceView:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsAutoFocusSwitchOn(Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mIsAutoFocusSwitchOn:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoUpdateFaceView(Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;[Lcom/transsion/camera/utils/SettingInfo$CameraFace;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->doUpdateFaceView([Lcom/transsion/camera/utils/SettingInfo$CameraFace;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 54
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FaceDetectionUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 57
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportGenderDetection()Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x7530

    goto :goto_14

    :cond_12
    const/16 v0, 0x5dc

    :goto_14
    sput v0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->FACEVIEW_HIDE_TIME:I

    .line 76
    new-instance v0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;->sDebugRenderFaceInfoToImageFunction:Ljava/util/function/Function;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 4

    .line 79
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const/4 p1, 0x0

    .line 59
    iput p1, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mNumOfFaces:I

    const-wide/16 v0, 0x0

    .line 60
    iput-wide v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mStartTime:J

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    .line 66
    new-instance v0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$StatusChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$StatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$StatusChangeListener;

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mActiveFaceView:Z

    .line 69
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mIsFaceViewShowing:Z

    .line 70
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mCanShowFaceView:Z

    .line 71
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mIsCapturing:Z

    .line 72
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mIsAutoFocusSwitchOn:Z

    .line 80
    new-instance p1, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$UIHandler;

    invoke-direct {p1, p0, v1}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI-IA;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mUIHandler:Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$UIHandler;

    return-void
.end method

.method private doUpdateFaceView([Lcom/transsion/camera/utils/SettingInfo$CameraFace;)V
    .registers 10

    .line 227
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mActiveFaceView:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8c

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mCanShowFaceView:Z

    if-eqz v0, :cond_8c

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mIsCapturing:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mIsAutoFocusSwitchOn:Z

    if-nez v0, :cond_13

    goto/16 :goto_8c

    :cond_13
    const-wide/16 v2, 0x0

    if-eqz p1, :cond_7f

    .line 232
    array-length v0, p1

    if-nez v0, :cond_1b

    goto :goto_7f

    .line 239
    :cond_1b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 240
    iget v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mNumOfFaces:I

    array-length v6, p1

    if-eq v0, v6, :cond_26

    .line 242
    iput-wide v4, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mStartTime:J

    .line 244
    :cond_26
    array-length v0, p1

    iput v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mNumOfFaces:I

    .line 245
    iget-wide v6, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mStartTime:J

    sub-long/2addr v4, v6

    .line 246
    sget-boolean v0, Lcom/transsion/camera/utils/FeatureSupport;->sShowFaceInfoForever:Z

    if-nez v0, :cond_51

    .line 247
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsHumanDetectNew:Z

    if-eqz v0, :cond_3c

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mIsAutoFocusSwitchOn:Z

    if-nez v0, :cond_51

    :cond_3c
    cmp-long v0, v4, v2

    if-ltz v0, :cond_48

    sget v0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->FACEVIEW_HIDE_TIME:I

    int-to-long v2, v0

    cmp-long v0, v4, v2

    if-gez v0, :cond_48

    goto :goto_51

    .line 259
    :cond_48
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mFaceView:Lcom/transsion/camera/ui/setting/facedetection/FaceView;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/facedetection/FaceView;->clearFaces()V

    .line 260
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->notifyFaceViewState(Z)V

    return-void

    .line 251
    :cond_51
    :goto_51
    array-length v0, p1

    :goto_52
    if-ge v1, v0, :cond_70

    aget-object v2, p1, v1

    .line 252
    invoke-virtual {v2}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    .line 253
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 252
    invoke-static {v3, v4, v5}, Lcom/transsion/camera/utils/CoordinatesUtil;->referenceToViewSpace(Landroid/graphics/Rect;II)Landroid/graphics/Rect;

    move-result-object v3

    .line 254
    invoke-virtual {v2, v3}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->setBounds(Landroid/graphics/Rect;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_52

    .line 256
    :cond_70
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mFaceView:Lcom/transsion/camera/ui/setting/facedetection/FaceView;

    new-instance v1, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;)V

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/ui/setting/facedetection/FaceView;->setFaces([Lcom/transsion/camera/utils/SettingInfo$CameraFace;Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    .line 257
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->notifyFaceViewState(Z)V

    return-void

    .line 234
    :cond_7f
    :goto_7f
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mFaceView:Lcom/transsion/camera/ui/setting/facedetection/FaceView;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/facedetection/FaceView;->clearFaces()V

    .line 235
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->notifyFaceViewState(Z)V

    .line 236
    iput v1, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mNumOfFaces:I

    .line 237
    iput-wide v2, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mStartTime:J

    return-void

    .line 228
    :cond_8c
    :goto_8c
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mFaceView:Lcom/transsion/camera/ui/setting/facedetection/FaceView;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/facedetection/FaceView;->clearFaces()V

    .line 229
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->notifyFaceViewState(Z)V

    return-void
.end method

.method private synthetic lambda$doUpdateFaceView$1()V
    .registers 2

    const/4 v0, 0x0

    .line 256
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->setFaceViewVisibility(I)V

    return-void
.end method

.method private notifyFaceViewState(Z)V
    .registers 4

    .line 308
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mIsFaceViewShowing:Z

    if-eq v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 309
    :goto_7
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v1, :cond_1f

    if-eqz v0, :cond_1f

    .line 310
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mIsFaceViewShowing:Z

    if-eqz p1, :cond_14

    .line 311
    const-string p0, "show_face_view"

    goto :goto_16

    :cond_14
    const-string p0, "hide_face_view"

    .line 312
    :goto_16
    const-string p1, "key_face_view_state"

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1f
    return-void
.end method

.method private registerKeyToMonitor(Ljava/lang/String;)V
    .registers 3

    .line 350
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private setFaceViewVisibility(I)V
    .registers 4

    .line 390
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mFaceViewState:Lcom/transsion/camera/app/common/ui/helper/ViewState;

    if-eqz v0, :cond_17

    .line 391
    new-instance v1, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;

    invoke-direct {v1, v0}, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;-><init>(Lcom/transsion/camera/app/common/ui/helper/ViewState;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Runnable;

    .line 392
    invoke-virtual {v1, p1, v0}, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;->setVisibility(I[Ljava/lang/Runnable;)Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;

    move-result-object p1

    .line 393
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;->build()Lcom/transsion/camera/app/common/ui/helper/ViewState;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mFaceViewState:Lcom/transsion/camera/app/common/ui/helper/ViewState;

    return-void

    .line 396
    :cond_17
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mFaceView:Lcom/transsion/camera/ui/setting/facedetection/FaceView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private unRegisterKeyToMonitor(Ljava/lang/String;)V
    .registers 3

    .line 354
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private updateGenderFactor()V
    .registers 2

    .line 343
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mFaceView:Lcom/transsion/camera/ui/setting/facedetection/FaceView;

    if-eqz v0, :cond_d

    .line 344
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportGenderDetection()Z

    move-result v0

    .line 345
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mFaceView:Lcom/transsion/camera/ui/setting/facedetection/FaceView;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/facedetection/FaceView;->showGender(Z)V

    :cond_d
    return-void
.end method

.method private updateRootLayoutRect()V
    .registers 6

    .line 217
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    .line 218
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 219
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 220
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 221
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iput p0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 222
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 111
    sget v0, Lcom/transsion/camera/R$layout;->face_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 112
    sget p2, Lcom/transsion/camera/R$id;->face_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/ui/setting/facedetection/FaceView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mFaceView:Lcom/transsion/camera/ui/setting/facedetection/FaceView;

    return-object p1
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFaceView()Lcom/transsion/camera/ui/setting/facedetection/FaceView;
    .registers 1

    .line 358
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mFaceView:Lcom/transsion/camera/ui/setting/facedetection/FaceView;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 159
    const-string p0, "key_face_detection"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 164
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 167
    :cond_6
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideEntryView()V
    .registers 3

    const/4 v0, 0x0

    .line 134
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mCanShowFaceView:Z

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mUIHandler:Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mFaceView:Lcom/transsion/camera/ui/setting/facedetection/FaceView;

    if-eqz v0, :cond_14

    .line 137
    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/facedetection/FaceView;->clearFaces()V

    const/4 v0, 0x4

    .line 138
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->setFaceViewVisibility(I)V

    :cond_14
    return-void
.end method

.method public bridge synthetic isNeedResetPrivacyMode()Z
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/IPrivacyCallback;->isNeedResetPrivacyMode()Z

    move-result p0

    return p0
.end method

.method public isSupportPrivacyMode()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_51

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-eq p1, v1, :cond_4a

    const/4 v1, 0x3

    if-eq p1, v1, :cond_51

    const/4 v1, 0x5

    if-eq p1, v1, :cond_51

    const/4 v1, 0x7

    if-eq p1, v1, :cond_51

    const/16 v1, 0x9

    if-eq p1, v1, :cond_42

    const/16 v1, 0x12

    if-eq p1, v1, :cond_3d

    const/16 v1, 0x14

    if-eq p1, v1, :cond_51

    const/16 v1, 0x1c

    if-eq p1, v1, :cond_39

    const/16 v1, 0x20

    if-eq p1, v1, :cond_3d

    const/16 v1, 0x63

    if-eq p1, v1, :cond_36

    const/16 v1, 0xd

    if-eq p1, v1, :cond_33

    const/16 v0, 0xe

    if-eq p1, v0, :cond_36

    return-void

    .line 281
    :cond_33
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mIsCapturing:Z

    return-void

    .line 295
    :cond_36
    iput-boolean v4, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mIsCapturing:Z

    return-void

    .line 278
    :cond_39
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->hideEntryView()V

    return-void

    .line 299
    :cond_3d
    iput v4, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mNumOfFaces:I

    .line 300
    iput-wide v2, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mStartTime:J

    return-void

    .line 284
    :cond_42
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->updateRootLayoutRect()V

    .line 285
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mActiveFaceView:Z

    .line 286
    iput-boolean v4, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mIsCapturing:Z

    return-void

    .line 289
    :cond_4a
    iput-boolean v4, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mIsCapturing:Z

    .line 290
    iput v4, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mNumOfFaces:I

    .line 291
    iput-wide v2, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mStartTime:J

    return-void

    .line 274
    :cond_51
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->updateRootLayoutRect()V

    .line 275
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mActiveFaceView:Z

    return-void
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 2

    .line 118
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onOrientationChanged(I)V

    .line 119
    sput p1, Lcom/transsion/camera/ui/setting/facedetection/debug/FaceOfflineRenderHelper;->sOrientation:I

    return-void
.end method

.method public onPrivacyModeChange(ZF)V
    .registers 5

    .line 363
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->isSupportPrivacyMode()Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_48

    .line 366
    :cond_7
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mFaceView:Lcom/transsion/camera/ui/setting/facedetection/FaceView;

    if-eqz p2, :cond_48

    .line 367
    sget-object p2, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPrivacyModeChange: enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_3b

    .line 369
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mFaceViewState:Lcom/transsion/camera/app/common/ui/helper/ViewState;

    if-nez p1, :cond_34

    .line 370
    new-instance p1, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mFaceView:Lcom/transsion/camera/ui/setting/facedetection/FaceView;

    invoke-direct {p1, p2}, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;-><init>(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;->build()Lcom/transsion/camera/app/common/ui/helper/ViewState;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mFaceViewState:Lcom/transsion/camera/app/common/ui/helper/ViewState;

    .line 372
    :cond_34
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mFaceView:Lcom/transsion/camera/ui/setting/facedetection/FaceView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 374
    :cond_3b
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mFaceViewState:Lcom/transsion/camera/app/common/ui/helper/ViewState;

    if-nez p1, :cond_40

    goto :goto_48

    .line 377
    :cond_40
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mFaceView:Lcom/transsion/camera/ui/setting/facedetection/FaceView;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ui/helper/ViewState;->restore(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 378
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mFaceViewState:Lcom/transsion/camera/app/common/ui/helper/ViewState;

    :cond_48
    :goto_48
    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 4

    .line 187
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_c

    .line 189
    sget-object p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 192
    :cond_c
    new-instance v0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$FaceResultCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$FaceResultCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI-IA;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 193
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v0, "key_auto_focus_switch"

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "on"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mIsAutoFocusSwitchOn:Z

    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 2

    .line 198
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_e

    .line 200
    const-string p1, "key_focus_state"

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 201
    const-string p1, "key_auto_focus_switch"

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->registerKeyToMonitor(Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method public setupEntryView()V
    .registers 2

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mCanShowFaceView:Z

    .line 126
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mFaceView:Lcom/transsion/camera/ui/setting/facedetection/FaceView;

    if-eqz v0, :cond_e

    const/4 v0, 0x4

    .line 127
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->setFaceViewVisibility(I)V

    .line 128
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->updateGenderFactor()V

    :cond_e
    return-void
.end method

.method public unInit()V
    .registers 3

    .line 173
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mUIHandler:Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mFaceView:Lcom/transsion/camera/ui/setting/facedetection/FaceView;

    if-eqz v0, :cond_15

    .line 176
    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/facedetection/FaceView;->clearFaces()V

    const/16 v0, 0x8

    .line 177
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->setFaceViewVisibility(I)V

    .line 179
    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_23

    .line 180
    const-string v0, "key_focus_state"

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 181
    const-string v0, "key_auto_focus_switch"

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    :cond_23
    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 3

    .line 144
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 145
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->updateRootLayoutRect()V

    .line 146
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    sput-object v0, Lcom/transsion/camera/ui/setting/facedetection/debug/FaceOfflineRenderHelper;->sPreviewRect:Landroid/graphics/Rect;

    .line 147
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mFaceView:Lcom/transsion/camera/ui/setting/facedetection/FaceView;

    if-eqz p0, :cond_13

    .line 148
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/FaceEyeView;->setPreviewRect(Landroid/graphics/Rect;)V

    :cond_13
    return-void
.end method
