.class public Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;
.implements Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;,
        Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyHandler;,
        Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;,
        Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SurfaceTextureListener;,
        Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoRecorderCallback;,
        Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPictureCallback;,
        Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoMsgCallback;,
        Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$TouchInfoCallback;,
        Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SplitStyle;
    }
.end annotation


# static fields
.field private static final AUX_ANIMATION_TIME:I = 0x190

.field private static final AUX_VIEW_TIMEOUT:I = 0xbb8

.field private static final DUAL_PREVIEW_DOWN_SAMPLE_FACTOR:I = 0x10

.field private static final EGL_RES_TAG_DRAW_AUX_VIEW:I = 0x69

.field private static final EGL_RES_TAG_RECORDER_FLAG:I = 0x68

.field private static final EGL_RES_TAG_SPLIT_STYLE_PIP:I = 0x66

.field private static final EGL_RES_TAG_SPLIT_STYLE_UP_DOWN:I = 0x65

.field private static final EGL_RES_TAG_TAKE_PICTURE:I = 0x67

.field private static final EGL_RES_TAG_UPDATE_SURFACE_SIZE:I = 0x64

.field private static final JOIN_THREAD_TIMEOUT:I = 0xc8

.field private static final MSG_FORCE_REFRESH:I = 0x3ea

.field private static final MSG_SET_AUX_VIEW:I = 0x3e8

.field private static final MSG_SWITCH_SCREEN:I = 0x3e9

.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final REFRESH_SCREEN_TIME:I = 0x10

.field public static final SPLIT_STYLE_VALUE_DOWN:I = 0x2

.field public static final SPLIT_STYLE_VALUE_FULL:I = 0x3

.field public static final SPLIT_STYLE_VALUE_SMALL:I = 0x4

.field public static final SPLIT_STYLE_VALUE_UP:I = 0x1

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final VERTEX_DEFAULT_MATRIX:[F


# instance fields
.field private mBigDragHandleTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

.field private mCanvas:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;

.field private mContext:Landroid/content/Context;

.field private mCurrentPosition:I

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mDividerAnimatorSet:Landroid/animation/AnimatorSet;

.field private volatile mDividerDisplayY:F

.field private mDividerDownEdgeOffset:I

.field private mDividerDragHandleInitHeight:I

.field private mDividerDragHandleInitWidth:I

.field private mDividerDragHandleMaxHeight:I

.field private mDividerDragHandleMaxWidth:I

.field private mDividerDragHandleRealHeight:I

.field private mDividerDragHandleRealWidth:I

.field private mDividerLineInitHeight:I

.field private mDividerLineMaxHeight:I

.field private mDividerLineRealHeight:I

.field private mDividerUpEdgeOffset:I

.field private mDragHandleTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

.field private mDrawAuxView:Z

.field private mDualDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mDualPreviewCallback:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;

.field private mDualPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field private mDualVideoInPlatformMTK:Z

.field private mDualVideoMsgCallback:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoMsgCallback;

.field private mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

.field private mDualVideoRender:Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;

.field private final mForceRender:Ljava/lang/Runnable;

.field private mFrameCount:J

.field private mHandler:Landroid/os/Handler;

.field private mIsDividerChanging:Z

.field private mIsPIPRectViewEnable:Z

.field private mLastPost:J

.field private mLineColor:I

.field private mMainAnimatorSet:Landroid/animation/AnimatorSet;

.field private mMainAnimatorSetLock:Ljava/lang/Object;

.field private volatile mMainSplitValue:I

.field private mMainTargetHeight:I

.field private mMainTargetWidth:I

.field private mMainTargetX:I

.field private mMainTargetY:I

.field private mMainTouchArea:Landroid/graphics/Rect;

.field private volatile mMainViewPortHeight:I

.field private volatile mMainViewPortWidth:I

.field private volatile mMainViewPortX:I

.field private volatile mMainViewPortY:I

.field private mNeedGlFinish:Z

.field private mOesTextureId:I

.field private mPaint:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;

.field private mPictureCallback:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPictureCallback;

.field private volatile mPipDisplayHeight:F

.field private volatile mPipDisplayWidth:F

.field private volatile mPipDisplayX:F

.field private volatile mPipDisplayY:F

.field private mPipFrameStrokeWidth:I

.field private mPipInitEdgeOffset:I

.field private mPipInitEdgeYOffset:I

.field private mPipLeftBottomTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

.field private mPipLeftTopTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

.field private mPipRightBottomTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

.field private mPipRightTopTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

.field private mPreviewViewHeight:I

.field private mPreviewViewRect:Landroid/graphics/Rect;

.field private mPreviewViewWidth:I

.field private mRecorderCallback:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoRecorderCallback;

.field private volatile mRecordingFlag:Z

.field private mRectColor:I

.field private volatile mRectHeight:I

.field private volatile mRectPortX:I

.field private volatile mRectPortY:I

.field private volatile mRectWidth:I

.field private mRenderTextures:[I

.field private mRendererRequestHandler:Landroid/os/Handler;

.field private mRendererRequestThread:Landroid/os/HandlerThread;

.field private mScreenFormType:I

.field private mSlaveAnimatorSet:Landroid/animation/AnimatorSet;

.field private mSlaveOESTextureId:I

.field private mSlaveSurfaceListener:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SurfaceTextureListener;

.field private mSlaveSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mSlaveTargetHeight:I

.field private mSlaveTargetWidth:I

.field private mSlaveTargetX:I

.field private mSlaveTargetY:I

.field private mSlaveTouchArea:Landroid/graphics/Rect;

.field private mSlaveViewPortFlip:Z

.field private volatile mSlaveViewPortHeight:I

.field private volatile mSlaveViewPortWidth:I

.field private volatile mSlaveViewPortX:I

.field private volatile mSlaveViewPortY:I

.field private mSurfaceAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

.field private mSurfaceHeight:I

.field private mSurfaceWidth:I

.field private mTakePictureFlag:Z

.field private mTakePictureHandler:Landroid/os/Handler;

.field private mTakePictureThread:Landroid/os/HandlerThread;

.field private mTouchInfoCallback:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$TouchInfoCallback;


# direct methods
.method public static synthetic $r8$lambda$074jRntUKKDxXqsNPZH9lTc9ej4(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->lambda$runSlaveScreenAnimator$8(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$44Iqy8vxPEQaZvWvSFNun3tg5uM(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->lambda$runMainScreenAnimator$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AdVslosdY3JdJSlfzN1YBZzmQNU(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->lambda$runMainScreenAnimator$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BxEHgO91yrhBgOQcblWqnzkNJiU(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->lambda$updateAuxViewInfo$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$Cy4fEYg0dKRP5-MN42jvJH7jtuo(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->lambda$runDividerAnimator$13(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LztL_cGPHvXNWxwFh-cvPEkoskw(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->lambda$updateAuxViewInfo$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$N4Trkdw3SeNOxBg1K8HUdu5hyDE(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->lambda$runMainScreenAnimator$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UgsyT0qWrjpjER5vfPdGlgz7LHg(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->lambda$runSlaveScreenAnimator$9(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UnLSqmzLKx-2eYwchFXrBiUN-9g(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->lambda$runMainScreenAnimator$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W8hXp-vecIDdR14ccdGWEWj-4xs(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->lambda$runDividerAnimator$12(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XOrkNgYfGn8d0eRSwjGRf-6f2q4(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->lambda$runSlaveScreenAnimator$10(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qtnlwH-UU68y9S7u-cP0WJhVBYE(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->lambda$setSplitDividerEnable$14(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$rBEC804nU3MUS9qkz46KrTTLq5w(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->lambda$runSlaveScreenAnimator$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rLtHcUeF0Y4JyxRki6cpC_4dm_c(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->lambda$runDividerAnimator$11(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yMbtoLoFKbojyAYZ95i4aCJqHQk(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->lambda$updatePreviewPortInfo$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDividerDisplayY(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDividerDownEdgeOffset(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDownEdgeOffset:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDividerDragHandleInitHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDragHandleInitHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDividerDragHandleInitWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDragHandleInitWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDividerDragHandleMaxHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDragHandleMaxHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDividerDragHandleMaxWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDragHandleMaxWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDividerLineInitHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerLineInitHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDividerLineMaxHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerLineMaxHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDividerUpEdgeOffset(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerUpEdgeOffset:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDualPreviewCallback(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualPreviewCallback:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDualPreviewOperator(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/app/common/preview/IPreviewOperator;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDualVideoInPlatformMTK(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoInPlatformMTK:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDualVideoPreviewUI(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDualVideoRender(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoRender:Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFrameCount(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mFrameCount:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsDividerChanging(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mIsDividerChanging:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsPIPRectViewEnable(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mIsPIPRectViewEnable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMainSplitValue(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMainViewPortHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainViewPortHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMainViewPortWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainViewPortWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMainViewPortX(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainViewPortX:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMainViewPortY(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainViewPortY:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNeedGlFinish(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mNeedGlFinish:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOesTextureId(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mOesTextureId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPipDisplayHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayHeight:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPipDisplayWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayWidth:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPipDisplayX(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPipDisplayY(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewViewHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewViewWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecorderCallback(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoRecorderCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRecorderCallback:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoRecorderCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecordingFlag(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRecordingFlag:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRenderTextures(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)[I
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRenderTextures:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSlaveOESTextureId(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveOESTextureId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSlaveSurfaceListener(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SurfaceTextureListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveSurfaceListener:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SurfaceTextureListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSlaveSurfaceTexture(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Landroid/graphics/SurfaceTexture;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSlaveViewPortFlip(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortFlip:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSlaveViewPortHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSlaveViewPortWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSlaveViewPortX(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortX:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSlaveViewPortY(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortY:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSurfaceHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSurfaceWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTakePictureFlag(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mTakePictureFlag:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTouchInfoCallback(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$TouchInfoCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mTouchInfoCallback:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$TouchInfoCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDividerDisplayY(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;F)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDividerDragHandleRealHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDragHandleRealHeight:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDividerDragHandleRealWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDragHandleRealWidth:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDividerLineRealHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerLineRealHeight:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDrawAuxView(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDrawAuxView:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDualVideoRender(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoRender:Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFrameCount(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mFrameCount:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsDividerChanging(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mIsDividerChanging:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsPIPRectViewEnable(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mIsPIPRectViewEnable:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastPost(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mLastPost:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMainSplitValue(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMainViewPortHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainViewPortHeight:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMainViewPortWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainViewPortWidth:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMainViewPortX(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainViewPortX:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMainViewPortY(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainViewPortY:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOesTextureId(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mOesTextureId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPipDisplayHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;F)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayHeight:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPipDisplayWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;F)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayWidth:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPipDisplayX(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;F)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayX:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPipDisplayY(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;F)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayY:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRecordingFlag(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRecordingFlag:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRectHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRectHeight:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRectPortX(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRectPortX:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRectPortY(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRectPortY:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRectWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRectWidth:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRenderTextures(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;[I)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRenderTextures:[I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSlaveViewPortFlip(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortFlip:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSlaveViewPortHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortHeight:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSlaveViewPortWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortWidth:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSlaveViewPortX(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortX:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSlaveViewPortY(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortY:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTakePictureFlag(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mTakePictureFlag:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateSurfaceTexture(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->createSurfaceTexture()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdestroySurfaceTexture(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->destroySurfaceTexture()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdrawAuxView(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;II)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->drawAuxView(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misMainThread(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->isMainThread()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mprocessHandleDrawAuxView(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->processHandleDrawAuxView(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessHandleSwitchScreen(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->processHandleSwitchScreen()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrgbToJpeg(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;[III)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->rgbToJpeg([III)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendHandlerMessage(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;IIJ)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->sendHandlerMessage(IIJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mspeedUpRefreshRate(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->speedUpRefreshRate()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtakePicture(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;II)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->takePicture(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRenderSurfaceSize(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;II)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->updateRenderSurfaceSize(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTouchArea(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->updateTouchArea()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateViewPortInfo(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->updateViewPortInfo(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetVERTEX_DEFAULT_MATRIX()[F
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->VERTEX_DEFAULT_MATRIX:[F

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 61
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "DualVideoPreviewProcessor"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/16 v0, 0x10

    .line 119
    new-array v0, v0, [F

    fill-array-data v0, :array_20

    sput-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->VERTEX_DEFAULT_MATRIX:[F

    .line 226
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void

    nop

    :array_20
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .registers 5

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mLastPost:J

    .line 66
    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualPreviewCallback:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;

    const-wide/16 v0, 0x0

    .line 88
    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mFrameCount:J

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoInPlatformMTK:Z

    .line 95
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainAnimatorSetLock:Ljava/lang/Object;

    const/4 v1, -0x1

    .line 109
    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveOESTextureId:I

    const/4 v2, 0x0

    .line 112
    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceWidth:I

    .line 113
    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceHeight:I

    .line 114
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewRect:Landroid/graphics/Rect;

    .line 115
    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    .line 116
    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    .line 134
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    .line 136
    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainViewPortX:I

    .line 137
    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainViewPortY:I

    .line 138
    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainViewPortWidth:I

    .line 139
    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainViewPortHeight:I

    .line 140
    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortX:I

    .line 141
    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortY:I

    .line 142
    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortWidth:I

    .line 143
    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortHeight:I

    .line 144
    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetX:I

    .line 145
    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetY:I

    .line 146
    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetWidth:I

    .line 147
    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetHeight:I

    .line 148
    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetX:I

    .line 149
    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetY:I

    .line 150
    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetWidth:I

    .line 151
    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetHeight:I

    .line 153
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortFlip:Z

    .line 154
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTouchArea:Landroid/graphics/Rect;

    .line 155
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTouchArea:Landroid/graphics/Rect;

    .line 157
    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRectPortX:I

    .line 158
    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRectPortY:I

    .line 159
    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRectWidth:I

    .line 160
    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRectHeight:I

    .line 161
    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipFrameStrokeWidth:I

    .line 162
    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipInitEdgeOffset:I

    .line 163
    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipInitEdgeYOffset:I

    .line 164
    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerLineInitHeight:I

    .line 165
    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerLineMaxHeight:I

    .line 166
    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerLineRealHeight:I

    .line 167
    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDragHandleInitWidth:I

    .line 168
    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDragHandleMaxWidth:I

    .line 169
    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDragHandleRealWidth:I

    .line 170
    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDragHandleInitHeight:I

    .line 171
    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDragHandleMaxHeight:I

    .line 172
    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDragHandleRealHeight:I

    .line 173
    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerUpEdgeOffset:I

    .line 174
    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDownEdgeOffset:I

    .line 201
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mTakePictureFlag:Z

    .line 202
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRecordingFlag:Z

    .line 203
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDrawAuxView:Z

    .line 204
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mIsPIPRectViewEnable:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 215
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    .line 216
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayX:F

    .line 217
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayY:F

    .line 218
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayWidth:F

    .line 219
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayHeight:F

    .line 220
    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mScreenFormType:I

    .line 1226
    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$2;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 1232
    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$3;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mForceRender:Ljava/lang/Runnable;

    return-void
.end method

.method private cancelMainAnimatorSetLocked()V
    .registers 3

    .line 1708
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainAnimatorSetLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1709
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1710
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_15

    :catchall_13
    move-exception p0

    goto :goto_1a

    :cond_15
    :goto_15
    const/4 v1, 0x0

    .line 1712
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1713
    monitor-exit v0

    return-void

    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_13

    throw p0
.end method

.method private createSurfaceTexture()V
    .registers 5

    .line 1097
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_6

    goto/16 :goto_cc

    .line 1100
    :cond_6
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->startRendererRequestThread()V

    .line 1101
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->startTakePictureThread()V

    .line 1102
    invoke-static {}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->createOESTexture()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveOESTextureId:I

    .line 1103
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveOESTextureId:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 1104
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRendererRequestHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 1105
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createSurfaceTexture mSlaveSurfaceTexture:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mSurfaceHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mSurfaceWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1107
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveSurfaceListener:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SurfaceTextureListener;

    if-eqz v0, :cond_5b

    .line 1108
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceHeight:I

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceWidth:I

    invoke-interface {v0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 1111
    :cond_5b
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mCanvas:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;

    if-nez v0, :cond_66

    .line 1112
    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLES20Canvas;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mCanvas:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;

    .line 1115
    :cond_66
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipLeftTopTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    if-nez v0, :cond_77

    .line 1116
    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$drawable;->ic_pip_left_top:I

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->getBitMap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipLeftTopTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    .line 1118
    :cond_77
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipLeftBottomTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    if-nez v0, :cond_88

    .line 1119
    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$drawable;->ic_pip_left_bottom:I

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->getBitMap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipLeftBottomTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    .line 1121
    :cond_88
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipRightTopTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    if-nez v0, :cond_99

    .line 1122
    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$drawable;->ic_pip_right_top:I

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->getBitMap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipRightTopTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    .line 1124
    :cond_99
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipRightBottomTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    if-nez v0, :cond_aa

    .line 1125
    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$drawable;->ic_pip_right_bottom:I

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->getBitMap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipRightBottomTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    .line 1127
    :cond_aa
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDragHandleTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    if-nez v0, :cond_bb

    .line 1128
    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$drawable;->ic_drag_handle:I

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->getBitMap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDragHandleTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    .line 1130
    :cond_bb
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mBigDragHandleTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    if-nez v0, :cond_cc

    .line 1131
    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$drawable;->ic_big_drag_handle:I

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->getBitMap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mBigDragHandleTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    :cond_cc
    :goto_cc
    return-void
.end method

.method private destroySurfaceTexture()V
    .registers 5

    .line 1136
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroySurfaceTexture mSlaveSurfaceTexture:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", currThread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1136
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1138
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveOESTextureId:I

    const/4 v1, 0x0

    if-lez v0, :cond_38

    .line 1140
    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v2, 0x1

    .line 1141
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    const/4 v0, -0x1

    .line 1142
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveOESTextureId:I

    .line 1145
    :cond_38
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveSurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v2, 0x0

    if-eqz v0, :cond_4b

    .line 1146
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveSurfaceListener:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SurfaceTextureListener;

    if-eqz v3, :cond_44

    .line 1147
    invoke-interface {v3, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SurfaceTextureListener;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    .line 1149
    :cond_44
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 1150
    iput-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 1152
    :cond_4b
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->stopRenderRequestThread()V

    .line 1153
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->stopTakePictureThread()V

    .line 1154
    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceWidth:I

    .line 1155
    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceHeight:I

    const-wide/16 v0, 0x0

    .line 1156
    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mFrameCount:J

    .line 1158
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipLeftTopTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    if-eqz v0, :cond_62

    .line 1159
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->recycle()V

    .line 1160
    iput-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipLeftTopTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    .line 1162
    :cond_62
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipLeftBottomTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    if-eqz v0, :cond_6b

    .line 1163
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->recycle()V

    .line 1164
    iput-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipLeftBottomTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    .line 1166
    :cond_6b
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipRightTopTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    if-eqz v0, :cond_74

    .line 1167
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->recycle()V

    .line 1168
    iput-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipRightTopTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    .line 1170
    :cond_74
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipRightBottomTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    if-eqz v0, :cond_7d

    .line 1171
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->recycle()V

    .line 1172
    iput-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipRightBottomTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    .line 1174
    :cond_7d
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDragHandleTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    if-eqz v0, :cond_86

    .line 1175
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->recycle()V

    .line 1176
    iput-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDragHandleTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    .line 1178
    :cond_86
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mBigDragHandleTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    if-eqz v0, :cond_8f

    .line 1179
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->recycle()V

    .line 1180
    iput-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mBigDragHandleTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    .line 1182
    :cond_8f
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mCanvas:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;

    if-eqz v0, :cond_98

    .line 1183
    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;->deleteRecycledResources()V

    .line 1184
    iput-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mCanvas:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;

    :cond_98
    return-void
.end method

.method private drawAuxView(II)V
    .registers 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 581
    iget-boolean v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDrawAuxView:Z

    if-eqz v3, :cond_11f

    iget-object v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mCanvas:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;

    if-eqz v3, :cond_11f

    iget v4, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    if-nez v4, :cond_14

    goto/16 :goto_11f

    .line 585
    :cond_14
    invoke-interface {v3, v1, v2}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;->setSize(II)V

    const/4 v3, 0x0

    .line 586
    invoke-static {v3, v3, v1, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 587
    iget v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v2, v3, :cond_da

    iget v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    if-ne v2, v4, :cond_27

    goto/16 :goto_da

    .line 604
    :cond_27
    iget v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_31

    iget v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_11f

    .line 606
    :cond_31
    iget v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRectPortX:I

    mul-int/lit8 v3, v1, 0x2

    iget v5, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    div-int v5, v3, v5

    sub-int/2addr v2, v5

    .line 607
    iget v5, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRectPortY:I

    iget v6, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    div-int/2addr v3, v6

    sub-int/2addr v5, v3

    .line 608
    iget v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRectWidth:I

    add-int/2addr v3, v4

    .line 609
    iget v6, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRectHeight:I

    add-int/2addr v6, v4

    .line 610
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPaint:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;

    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;->getLineWidth()F

    move-result v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v4, v7

    float-to-int v4, v4

    .line 612
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipLeftTopTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    invoke-virtual {v8}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->getWidth()I

    move-result v8

    mul-int/2addr v8, v1

    iget v9, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    div-int v14, v8, v9

    .line 613
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipLeftTopTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    invoke-virtual {v8}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/UploadedTexture;->getHeight()I

    move-result v8

    mul-int/2addr v8, v1

    iget v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    div-int v15, v8, v1

    .line 614
    iget-object v10, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipLeftTopTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    iget-object v11, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mCanvas:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;

    iget-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPaint:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;->getLineWidth()F

    move-result v1

    float-to-int v1, v1

    add-int v12, v2, v1

    iget-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPaint:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;->getLineWidth()F

    move-result v1

    float-to-int v1, v1

    add-int v13, v5, v1

    invoke-virtual/range {v10 .. v15}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->draw(Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;IIII)V

    .line 615
    iget-object v10, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipLeftBottomTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    iget-object v11, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mCanvas:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;

    iget-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPaint:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;->getLineWidth()F

    move-result v1

    float-to-int v1, v1

    add-int v12, v2, v1

    add-int v1, v5, v6

    sub-int/2addr v1, v14

    mul-int/lit8 v8, v4, 0x2

    add-int v13, v1, v8

    invoke-virtual/range {v10 .. v15}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->draw(Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;IIII)V

    move v1, v13

    .line 616
    iget-object v10, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipRightTopTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    iget-object v11, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mCanvas:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;

    add-int v8, v2, v3

    sub-int/2addr v8, v14

    add-int v12, v8, v4

    iget-object v8, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPaint:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;

    invoke-virtual {v8}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;->getLineWidth()F

    move-result v8

    float-to-int v8, v8

    add-int v13, v5, v8

    invoke-virtual/range {v10 .. v15}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->draw(Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;IIII)V

    .line 617
    iget-object v10, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipRightBottomTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    iget-object v11, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mCanvas:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;

    move v13, v1

    invoke-virtual/range {v10 .. v15}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->draw(Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;IIII)V

    .line 620
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mCanvas:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;

    int-to-float v2, v2

    iget-object v8, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPaint:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;

    invoke-virtual {v8}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;->getLineWidth()F

    move-result v8

    div-float/2addr v8, v7

    add-float v17, v2, v8

    int-to-float v2, v5

    iget-object v5, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPaint:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;

    invoke-virtual {v5}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;->getLineWidth()F

    move-result v5

    add-float v18, v2, v5

    int-to-float v2, v3

    sub-int/2addr v6, v4

    int-to-float v3, v6

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPaint:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;

    move-object/from16 v21, v0

    move-object/from16 v16, v1

    move/from16 v19, v2

    move/from16 v20, v3

    invoke-interface/range {v16 .. v21}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;->drawRect(FFFFLcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;)V

    return-void

    .line 589
    :cond_da
    :goto_da
    iget v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    int-to-float v3, v1

    mul-float/2addr v2, v3

    iget v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    int-to-float v5, v3

    div-float/2addr v2, v5

    float-to-int v2, v2

    .line 593
    iget v5, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDragHandleRealWidth:I

    mul-int v6, v5, v1

    div-int v11, v6, v3

    mul-int/2addr v1, v3

    .line 594
    div-int/2addr v1, v3

    .line 595
    iget v6, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDragHandleRealHeight:I

    iget v7, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceWidth:I

    mul-int/2addr v6, v7

    div-int v12, v6, v3

    .line 596
    iget v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDragHandleInitWidth:I

    if-ne v5, v3, :cond_105

    .line 597
    iget-object v7, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDragHandleTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    iget-object v8, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mCanvas:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;

    sub-int/2addr v1, v11

    div-int/lit8 v9, v1, 0x2

    div-int/lit8 v1, v12, 0x2

    sub-int v10, v2, v1

    invoke-virtual/range {v7 .. v12}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->draw(Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;IIII)V

    goto :goto_113

    .line 600
    :cond_105
    iget-object v7, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mBigDragHandleTexture:Lcom/transsion/camera/feature/mode/dualvideo/glrender/BitmapTexture;

    iget-object v8, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mCanvas:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;

    sub-int/2addr v1, v11

    div-int/lit8 v9, v1, 0x2

    div-int/lit8 v1, v12, 0x2

    sub-int v10, v2, v1

    invoke-virtual/range {v7 .. v12}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->draw(Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;IIII)V

    .line 603
    :goto_113
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mCanvas:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPaint:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;

    move-object v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;->drawLine(FFFFLcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;)V

    :cond_11f
    :goto_11f
    return-void
.end method

.method private getBitMap(I)Landroid/graphics/Bitmap;
    .registers 6

    .line 1645
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 1648
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1649
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1650
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1651
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p1
.end method

.method private isMainThread()Z
    .registers 2

    .line 1394
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p0, v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$runDividerAnimator$11(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 1625
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerLineRealHeight:I

    return-void
.end method

.method private synthetic lambda$runDividerAnimator$12(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 1629
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDragHandleRealWidth:I

    return-void
.end method

.method private synthetic lambda$runDividerAnimator$13(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 1633
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDragHandleRealHeight:I

    return-void
.end method

.method private synthetic lambda$runMainScreenAnimator$3(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 1550
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainViewPortX:I

    return-void
.end method

.method private synthetic lambda$runMainScreenAnimator$4(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 1554
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainViewPortY:I

    return-void
.end method

.method private synthetic lambda$runMainScreenAnimator$5(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 1558
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainViewPortWidth:I

    return-void
.end method

.method private synthetic lambda$runMainScreenAnimator$6(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 1562
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainViewPortHeight:I

    .line 1563
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->speedUpRefreshRate()V

    return-void
.end method

.method private synthetic lambda$runSlaveScreenAnimator$10(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 1605
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortHeight:I

    return-void
.end method

.method private synthetic lambda$runSlaveScreenAnimator$7(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 1593
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortX:I

    return-void
.end method

.method private synthetic lambda$runSlaveScreenAnimator$8(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 1597
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortY:I

    return-void
.end method

.method private synthetic lambda$runSlaveScreenAnimator$9(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 1601
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortWidth:I

    return-void
.end method

.method private synthetic lambda$setSplitDividerEnable$14(Z)V
    .registers 2

    .line 1718
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    if-eqz p0, :cond_7

    .line 1719
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->setSplitDividerEnable(Z)V

    :cond_7
    return-void
.end method

.method private synthetic lambda$updateAuxViewInfo$1()V
    .registers 2

    .line 969
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    if-eqz v0, :cond_a

    .line 970
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    float-to-int p0, p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->updateDividerDisplaySize(I)V

    :cond_a
    return-void
.end method

.method private synthetic lambda$updateAuxViewInfo$2()V
    .registers 5

    .line 987
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    if-eqz v0, :cond_13

    .line 988
    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayX:F

    float-to-int v1, v1

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayY:F

    float-to-int v2, v2

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayWidth:F

    float-to-int v3, v3

    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayHeight:F

    float-to-int p0, p0

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->updatePIPDisplaySize(IIII)V

    :cond_13
    return-void
.end method

.method private synthetic lambda$updatePreviewPortInfo$0()V
    .registers 5

    .line 944
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetX:I

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetY:I

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetWidth:I

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetHeight:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->runMainScreenAnimator(IIII)V

    .line 945
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetX:I

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetY:I

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetWidth:I

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetHeight:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->runSlaveScreenAnimator(IIII)V

    return-void
.end method

.method private loadFromDataStore()V
    .registers 12

    .line 1435
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    .line 1436
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v1

    const-string v2, ", Pip ViewPort:"

    const-string v3, "loadFromDataStore, DividerDisplayY:"

    const/4 v4, 0x3

    if-eqz v1, :cond_c7

    .line 1440
    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mScreenFormType:I

    if-ne v1, v4, :cond_1c

    const/16 v1, 0x528

    const/16 v4, 0x2e6

    goto :goto_20

    :cond_1c
    const/16 v1, 0x780

    const/16 v4, 0x438

    .line 1447
    :goto_20
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v6, "divider_display_y_percent"

    const-string v7, ""

    invoke-virtual {v5, v6, v7, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1448
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_38

    int-to-float v6, v1

    .line 1449
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v6, v5

    iput v6, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    .line 1451
    :cond_38
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v6, "pip_view_x_percent"

    invoke-virtual {v5, v6, v7, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1452
    iget-object v6, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v8, "pip_view_y_percent"

    invoke-virtual {v6, v8, v7, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1453
    iget-object v8, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v9, "pip_view_width_percent"

    invoke-virtual {v8, v9, v7, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1454
    iget-object v9, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v10, "pip_view_height_percent"

    invoke-virtual {v9, v10, v7, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1455
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8e

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8e

    .line 1456
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8e

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8e

    int-to-float v4, v4

    .line 1457
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v4

    iput v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayX:F

    int-to-float v1, v1

    .line 1458
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v5, v1

    iput v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayY:F

    .line 1459
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayWidth:F

    .line 1460
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayHeight:F

    .line 1462
    :cond_8e
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayY:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayWidth:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayHeight:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1465
    :cond_c7
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v5, "divider_display_y"

    const-string v6, "-1"

    invoke-virtual {v1, v5, v6, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1466
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    .line 1468
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v5, "pip_view_port"

    invoke-virtual {v1, v5, v6, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1469
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1470
    array-length v1, v0

    const/4 v5, 0x1

    if-le v1, v5, :cond_110

    const/4 v1, 0x0

    .line 1471
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayX:F

    .line 1472
    aget-object v1, v0, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayY:F

    const/4 v1, 0x2

    .line 1473
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayWidth:F

    .line 1474
    aget-object v1, v0, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayHeight:F

    .line 1476
    :cond_110
    sget-object v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private processHandleDrawAuxView(Z)V
    .registers 4

    .line 1531
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setDrawAuxView(Z)V

    .line 1532
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_11

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    .line 1534
    :cond_11
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->showOrhideDivider(Z)V

    :cond_16
    return-void
.end method

.method private processHandleSwitchScreen()V
    .registers 1

    .line 1539
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoMsgCallback:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoMsgCallback;

    if-eqz p0, :cond_7

    .line 1540
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoMsgCallback;->notifySwitchScreenEnd()V

    :cond_7
    return-void
.end method

.method private processScreenFormChanged(I)V
    .registers 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3c

    .line 845
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->expand_pip_init_edge_x_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipInitEdgeOffset:I

    .line 846
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->expand_pip_init_edge_y_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipInitEdgeYOffset:I

    .line 847
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->expand_divider_up_edge_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerUpEdgeOffset:I

    .line 848
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->expand_divider_down_edge_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDownEdgeOffset:I

    goto :goto_b0

    :cond_3c
    const/4 v0, 0x3

    if-ne p1, v0, :cond_78

    .line 850
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->pip_init_edge_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipInitEdgeOffset:I

    .line 851
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->pip_init_edge_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipInitEdgeYOffset:I

    .line 852
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->hover_divider_up_edge_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerUpEdgeOffset:I

    .line 853
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->hover_divider_down_edge_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDownEdgeOffset:I

    goto :goto_b0

    .line 855
    :cond_78
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->pip_init_edge_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipInitEdgeOffset:I

    .line 856
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->pip_init_edge_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipInitEdgeYOffset:I

    .line 857
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->divider_up_edge_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerUpEdgeOffset:I

    .line 858
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->divider_down_edge_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDownEdgeOffset:I

    .line 860
    :goto_b0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    if-eqz v0, :cond_b7

    .line 861
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->onScreenFormChanged(I)V

    :cond_b7
    const/4 p1, 0x0

    .line 863
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->updateViewPortInfo(Z)V

    return-void
.end method

.method private rgbToJpeg([III)V
    .registers 15

    .line 1063
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getP3VideoPreviewSwitch(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    .line 1065
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 1066
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v2, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    move v9, p2

    move-object v4, p1

    move v6, p2

    move v10, p3

    .line 1067
    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 1068
    sget-object p1, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    invoke-static {p1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object p1

    .line 1069
    invoke-virtual {v3, p1}, Landroid/graphics/Bitmap;->setColorSpace(Landroid/graphics/ColorSpace;)V

    goto :goto_32

    :cond_29
    move-object v4, p1

    move v6, p2

    move v10, p3

    .line 1071
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v6, v10, p1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1082
    :goto_32
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPictureCallback:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPictureCallback;

    if-eqz p0, :cond_3a

    const/4 p1, 0x0

    .line 1083
    invoke-interface {p0, p1, v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPictureCallback;->notifyVideoPictureTaken([BLandroid/graphics/Bitmap;)V

    :cond_3a
    return-void
.end method

.method private saveDividerScreenInfo()V
    .registers 8

    .line 1398
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 1399
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    .line 1398
    const-string v3, "divider_up_screen_height"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1401
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 1402
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 1403
    invoke-virtual {v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    .line 1402
    const-string v6, "divider_up_crop_offset"

    invoke-virtual {v2, v6, v3, v5, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1405
    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    div-float/2addr v2, v1

    float-to-int v1, v2

    .line 1406
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 1407
    invoke-virtual {v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    .line 1406
    const-string v6, "divider_down_crop_offset"

    invoke-virtual {v2, v6, v3, v5, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1408
    sget-object v2, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveDividerScreenInfo, upScreenHeight:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", upScreenCropOffset:"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", downScreenCropOffset:"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private saveToDataStore()V
    .registers 7

    .line 1413
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    .line 1414
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "divider_display_y"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v2, v0, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1416
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayX:F

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayY:F

    float-to-int v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayWidth:F

    float-to-int v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayHeight:F

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pip_view_port"

    invoke-virtual {v1, v3, v2, v0, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1418
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_e1

    .line 1419
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 1420
    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    .line 1419
    const-string v3, "divider_display_y_percent"

    invoke-virtual {v1, v3, v2, v0, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1421
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayX:F

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 1422
    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    .line 1421
    const-string v3, "pip_view_x_percent"

    invoke-virtual {v1, v3, v2, v0, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1423
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayY:F

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 1424
    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    .line 1423
    const-string v3, "pip_view_y_percent"

    invoke-virtual {v1, v3, v2, v0, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1425
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayWidth:F

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 1426
    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    .line 1425
    const-string v3, "pip_view_width_percent"

    invoke-virtual {v1, v3, v2, v0, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1427
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayHeight:F

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 1428
    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    .line 1427
    const-string v3, "pip_view_height_percent"

    invoke-virtual {v1, v3, v2, v0, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1429
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveToDataStore, DividerDisplayY:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", Pip ViewPort:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayY:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayWidth:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayHeight:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_e1
    return-void
.end method

.method private sendHandlerMessage(IIJ)V
    .registers 7

    .line 1481
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_5

    return-void

    .line 1485
    :cond_5
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    const/4 v1, 0x0

    if-nez v0, :cond_19

    .line 1487
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 1489
    :cond_19
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private setDrawAuxView(Z)V
    .registers 5

    .line 1088
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDrawAuxView, isDraw:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v0, 0x69

    .line 1091
    filled-new-array {v0, p1}, [I

    move-result-object v0

    .line 1092
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0, v2}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->loadGLResources(Z[II)V

    .line 1093
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->setPIPViewSelected(Z)V

    return-void
.end method

.method private setSplitDividerEnable(Z)V
    .registers 4

    .line 1717
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda10;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private speedUpRefreshRate()V
    .registers 7

    .line 1243
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1244
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mHandler:Landroid/os/Handler;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mLastPost:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x10

    sub-long/2addr v4, v2

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private startRendererRequestThread()V
    .registers 3

    .line 1189
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SlaveRenderReqThd"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRendererRequestThread:Landroid/os/HandlerThread;

    .line 1190
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1191
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRendererRequestThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRendererRequestHandler:Landroid/os/Handler;

    return-void
.end method

.method private startTakePictureThread()V
    .registers 3

    .line 1208
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DualVideoTakePicThd"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mTakePictureThread:Landroid/os/HandlerThread;

    .line 1209
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1210
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mTakePictureThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mTakePictureHandler:Landroid/os/Handler;

    return-void
.end method

.method private stopRenderRequestThread()V
    .registers 4

    .line 1195
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRendererRequestThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1c

    .line 1196
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 1198
    :try_start_7
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRendererRequestThread:Landroid/os/HandlerThread;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V

    const/4 v0, 0x0

    .line 1199
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRendererRequestThread:Landroid/os/HandlerThread;

    .line 1200
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRendererRequestHandler:Landroid/os/Handler;
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    .line 1202
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Interrupted while trying to join mRespondThread"

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1c
    return-void
.end method

.method private stopTakePictureThread()V
    .registers 4

    .line 1214
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mTakePictureThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1c

    .line 1215
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 1217
    :try_start_7
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mTakePictureThread:Landroid/os/HandlerThread;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V

    const/4 v0, 0x0

    .line 1218
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mTakePictureThread:Landroid/os/HandlerThread;

    .line 1219
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mTakePictureHandler:Landroid/os/Handler;
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    .line 1221
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Interrupted while trying to join DualVideoTakePicThd"

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1c
    return-void
.end method

.method private takePicture(II)V
    .registers 16

    .line 1025
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    mul-int v2, p1, p2

    .line 1026
    new-array v3, v2, [I

    .line 1028
    invoke-static {v3}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v10

    const/4 v11, 0x0

    .line 1029
    invoke-virtual {v10, v11}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 1030
    sget-object v12, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v4, "glReadPixels E"

    invoke-static {v12, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v8, 0x1908

    const/16 v9, 0x1401

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, p1

    move v7, p2

    .line 1031
    invoke-static/range {v4 .. v10}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 1033
    const-string p1, "glReadPixels X"

    invoke-static {v12, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1035
    new-array p1, v2, [I

    move p2, v11

    :goto_2a
    if-ge p2, v7, :cond_53

    mul-int v2, p2, v6

    sub-int v4, v7, p2

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v4, v6

    move v5, v11

    :goto_34
    if-ge v5, v6, :cond_50

    add-int v8, v2, v5

    .line 1041
    aget v8, v3, v8

    shr-int/lit8 v9, v8, 0x10

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v10, v8, 0x10

    const/high16 v12, 0xff0000

    and-int/2addr v10, v12

    const v12, -0xff0100

    and-int/2addr v8, v12

    or-int/2addr v8, v10

    or-int/2addr v8, v9

    add-int v9, v4, v5

    .line 1045
    aput v8, p1, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    :cond_50
    add-int/lit8 p2, p2, 0x1

    goto :goto_2a

    .line 1048
    :cond_53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1049
    sget-object p2, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "glReadPixels time : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v0

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1050
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mTakePictureHandler:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$1;

    invoke-direct {v0, p0, p1, v6, v7}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$1;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;[III)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateAuxViewInfo()V
    .registers 4

    .line 966
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_bc

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    goto/16 :goto_bc

    .line 979
    :cond_c
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_18

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_17

    goto :goto_18

    :cond_17
    return-void

    :cond_18
    :goto_18
    const/4 v0, 0x0

    .line 981
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDrawAuxView:Z

    .line 982
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayX:F

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceWidth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRectPortX:I

    .line 983
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayY:F

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceHeight:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRectPortY:I

    .line 984
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayWidth:F

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceWidth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRectWidth:I

    .line 985
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayHeight:F

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceHeight:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRectHeight:I

    .line 986
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 991
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPaint:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRectColor:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;->setColor(I)V

    .line 992
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPaint:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipFrameStrokeWidth:I

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceWidth:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    div-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;->setLineWidth(F)V

    .line 993
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAuxViewInfo, pip display, x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayWidth:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayHeight:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 968
    :cond_bc
    :goto_bc
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 974
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerLineInitHeight:I

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerLineRealHeight:I

    .line 975
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDragHandleInitWidth:I

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDragHandleRealWidth:I

    .line 976
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDragHandleInitHeight:I

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDragHandleRealHeight:I

    .line 977
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPaint:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mLineColor:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;->setColor(I)V

    .line 978
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAuxViewInfo, divider display Y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updatePreviewPortInfo(Z)V
    .registers 11

    .line 879
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v0, v7, :cond_5b

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    if-ne v0, v3, :cond_12

    goto :goto_5b

    .line 891
    :cond_12
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    if-eq v0, v2, :cond_1b

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v8, 0x4

    if-ne v0, v8, :cond_74

    .line 893
    :cond_1b
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayX:F

    cmpg-float v0, v0, v5

    if-ltz v0, :cond_33

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayY:F

    cmpg-float v0, v0, v5

    if-ltz v0, :cond_33

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayWidth:F

    cmpg-float v0, v0, v5

    if-ltz v0, :cond_33

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayHeight:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_53

    .line 894
    :cond_33
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    iget v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipInitEdgeOffset:I

    int-to-float v5, v5

    sub-float/2addr v0, v5

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayX:F

    .line 895
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipInitEdgeYOffset:I

    int-to-float v0, v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayY:F

    .line 896
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    div-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayWidth:F

    .line 897
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    div-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayHeight:F

    .line 899
    :cond_53
    iput-boolean v6, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mIsDividerChanging:Z

    .line 900
    iput-boolean v6, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mIsPIPRectViewEnable:Z

    .line 901
    invoke-direct {p0, v6}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setSplitDividerEnable(Z)V

    goto :goto_74

    .line 881
    :cond_5b
    :goto_5b
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_68

    .line 882
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    div-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    :cond_68
    if-eqz p1, :cond_6d

    .line 885
    iput-boolean v6, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDrawAuxView:Z

    goto :goto_6f

    .line 887
    :cond_6d
    iput-boolean v7, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDrawAuxView:Z

    .line 889
    :goto_6f
    iput-boolean v6, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mIsPIPRectViewEnable:Z

    .line 890
    invoke-direct {p0, v7}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->setSplitDividerEnable(Z)V

    .line 904
    :cond_74
    :goto_74
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    if-ne v0, v7, :cond_9a

    .line 905
    iput v6, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetX:I

    .line 906
    iput v6, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetY:I

    .line 907
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceHeight:I

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetHeight:I

    .line 908
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceWidth:I

    int-to-float v2, v1

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetX:I

    .line 909
    iput v6, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetY:I

    sub-int/2addr v1, v0

    .line 910
    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetWidth:I

    .line 911
    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceHeight:I

    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetHeight:I

    .line 912
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetWidth:I

    goto/16 :goto_16b

    .line 913
    :cond_9a
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    if-ne v0, v3, :cond_be

    .line 914
    iput v6, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetY:I

    .line 915
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceWidth:I

    int-to-float v2, v1

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetX:I

    sub-int/2addr v1, v0

    .line 916
    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetWidth:I

    .line 917
    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceHeight:I

    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetHeight:I

    .line 918
    iput v6, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetX:I

    .line 919
    iput v6, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetY:I

    .line 920
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetWidth:I

    .line 921
    iput v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetHeight:I

    goto/16 :goto_16b

    .line 922
    :cond_be
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    if-ne v0, v2, :cond_117

    .line 923
    iput v6, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetX:I

    .line 924
    iput v6, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetY:I

    .line 925
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceWidth:I

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetWidth:I

    .line 926
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceHeight:I

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetHeight:I

    .line 927
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayY:F

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceWidth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetX:I

    .line 928
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayX:F

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceHeight:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetY:I

    .line 929
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayHeight:F

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceWidth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetWidth:I

    .line 930
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayWidth:F

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceHeight:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetHeight:I

    goto :goto_16b

    .line 932
    :cond_117
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayY:F

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceWidth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetX:I

    .line 933
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayX:F

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceHeight:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetY:I

    .line 934
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayHeight:F

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceWidth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetWidth:I

    .line 935
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayWidth:F

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceHeight:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetHeight:I

    .line 936
    iput v6, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetX:I

    .line 937
    iput v6, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetY:I

    .line 938
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceWidth:I

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetWidth:I

    .line 939
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceHeight:I

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetHeight:I

    :goto_16b
    if-eqz p1, :cond_17a

    .line 943
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda15;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_19a

    .line 948
    :cond_17a
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetX:I

    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainViewPortX:I

    .line 949
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetY:I

    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainViewPortY:I

    .line 950
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetWidth:I

    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainViewPortWidth:I

    .line 951
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetHeight:I

    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainViewPortHeight:I

    .line 952
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetX:I

    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortX:I

    .line 953
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetY:I

    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortY:I

    .line 954
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetWidth:I

    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortWidth:I

    .line 955
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetHeight:I

    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortHeight:I

    .line 958
    :goto_19a
    sget-object p1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateViewPortInfo, main SplitValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", x:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetY:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", width:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetWidth:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", height:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTargetHeight:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 960
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateViewPortInfo, slave x:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetX:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTargetHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 962
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateViewPortInfo, preview view width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateRenderSurfaceSize(II)V
    .registers 5

    .line 833
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceWidth:I

    if-ne v0, p1, :cond_28

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceHeight:I

    if-ne v0, p2, :cond_28

    .line 834
    sget-object p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateRenderSurfaceSize not changed, width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", height:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 837
    :cond_28
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceWidth:I

    .line 838
    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceHeight:I

    .line 839
    sget-object p1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateRenderSurfaceSize changed, mSurfaceWidth:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceWidth:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mSurfaceHeight:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceHeight:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 840
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->updateViewPortInfo(Z)V

    return-void
.end method

.method private updateTouchArea()V
    .registers 7

    .line 999
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->saveDividerScreenInfo()V

    .line 1001
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_31

    .line 1002
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTouchArea:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    iget v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1004
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTouchArea:Landroid/graphics/Rect;

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v4, v3

    add-float/2addr v1, v4

    float-to-int v1, v1

    iget v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    add-int/2addr p0, v3

    invoke-virtual {v0, v2, v1, v4, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 1006
    :cond_31
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5e

    .line 1007
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTouchArea:Landroid/graphics/Rect;

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v4, v3

    add-float/2addr v1, v4

    float-to-int v1, v1

    iget v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    iget v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    add-int/2addr v5, v3

    invoke-virtual {v0, v2, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1009
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTouchArea:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    iget v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    add-float/2addr v4, p0

    float-to-int p0, v4

    invoke-virtual {v0, v2, v1, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 1011
    :cond_5e
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_77

    .line 1012
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTouchArea:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    iget v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    add-int/2addr v4, v1

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1014
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTouchArea:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 1016
    :cond_77
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTouchArea:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1017
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTouchArea:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    add-int/2addr p0, v1

    invoke-virtual {v0, v2, v1, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private updateViewPortInfo(Z)V
    .registers 4

    .line 867
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceWidth:I

    if-eqz v0, :cond_1b

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceHeight:I

    if-eqz v0, :cond_1b

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    if-eqz v0, :cond_1b

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    if-nez v0, :cond_11

    goto :goto_1b

    .line 873
    :cond_11
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->updatePreviewPortInfo(Z)V

    .line 874
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->updateAuxViewInfo()V

    .line 875
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->updateTouchArea()V

    return-void

    .line 868
    :cond_1b
    :goto_1b
    sget-object p1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateViewPortInfo return, mSurfaceWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSurfaceHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSurfaceHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPreviewViewWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPreviewViewHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDualSwitchButtonVisible()Z
    .registers 1

    .line 1677
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    if-eqz p0, :cond_9

    .line 1678
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->getDualSwitchButtonVisible()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method protected getDualVideoPreviewUI()Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;
    .registers 1

    .line 1703
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    return-object p0
.end method

.method public getItemVisibility()I
    .registers 1

    .line 1694
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->getItemVisibility()I

    move-result p0

    return p0
.end method

.method public getMainAndSlaveRatio()F
    .registers 3

    .line 1657
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainViewPortWidth:I

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainViewPortHeight:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortWidth:I

    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortHeight:I

    mul-int/2addr v1, p0

    int-to-float p0, v1

    div-float/2addr v0, p0

    return v0
.end method

.method public hideDualDeviceItem(Z)V
    .registers 2

    .line 1661
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    if-eqz p0, :cond_7

    .line 1662
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->hideDualDeviceRoot(Z)V

    :cond_7
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/storage/DataStore;ILcom/transsion/camera/app/common/preview/IPreviewOperator;Landroid/view/ViewGroup;Ljava/util/List;ILcom/transsion/camera/app/common/setting/ISetting;Lcom/transsion/camera/app/common/IAppUI;I)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/transsion/camera/app/common/storage/DataStore;",
            "I",
            "Lcom/transsion/camera/app/common/preview/IPreviewOperator;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/dualvideo/widght/DualDeviceGroupItem;",
            ">;I",
            "Lcom/transsion/camera/app/common/setting/ISetting;",
            "Lcom/transsion/camera/app/common/IAppUI;",
            "I)V"
        }
    .end annotation

    .line 232
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mContext:Landroid/content/Context;

    .line 233
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 234
    iput p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mScreenFormType:I

    .line 235
    sget-object p2, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init mScreenFormType: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mScreenFormType:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 236
    new-instance p2, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyHandler;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyHandler;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor-IA;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mHandler:Landroid/os/Handler;

    .line 237
    iput-object p6, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDataList:Ljava/util/List;

    move/from16 p2, p7

    .line 238
    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mCurrentPosition:I

    move-object/from16 p2, p8

    .line 239
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 241
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x106000b

    .line 242
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRectColor:I

    const v0, 0x106000c

    .line 243
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mLineColor:I

    .line 244
    sget v0, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->pip_frame_stroke_width:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipFrameStrokeWidth:I

    .line 245
    sget v0, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->divider_line_init_height:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerLineInitHeight:I

    .line 246
    sget v0, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->divider_line_max_height:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerLineMaxHeight:I

    .line 247
    sget v0, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->divider_drag_handle_init_width:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDragHandleInitWidth:I

    .line 248
    sget v0, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->divider_drag_handle_max_width:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDragHandleMaxWidth:I

    .line 249
    sget v0, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->divider_drag_handle_init_height:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDragHandleInitHeight:I

    .line 250
    sget v0, Lcom/transsion/camera/feature/mode/dualvideo/R$dimen;->divider_drag_handle_max_height:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDragHandleMaxHeight:I

    .line 251
    new-instance p2, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-direct {p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    .line 252
    new-instance p2, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;

    invoke-direct {p2}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;-><init>()V

    sget-object v0, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;->UI5:Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;

    const-string v1, "com.transsion.camera.feature.mode.dualvideo.DualVideoPreviewUI5"

    .line 253
    invoke-virtual {p2, v0, v1}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;->add(Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Version;Ljava/lang/String;)Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;

    move-result-object p2

    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda2;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 254
    invoke-virtual {p2, v0, v1}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;->build(Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    .line 255
    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mScreenFormType:I

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDataList:Ljava/util/List;

    iget v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mCurrentPosition:I

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    move-object v1, p1

    move-object v2, p5

    move-object/from16 v7, p9

    move/from16 v8, p10

    invoke-virtual/range {v0 .. v8}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->init(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/util/List;ILcom/transsion/camera/app/common/setting/ISetting;Lcom/transsion/camera/app/common/IAppUI;I)V

    .line 256
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;

    invoke-direct {v0, p0, p3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor-IA;)V

    invoke-virtual {p2, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->setPreviewUICallback(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;)V

    .line 258
    new-instance p2, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;

    invoke-direct {p2, p1}, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoRender:Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;

    .line 259
    iput-object p4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz p4, :cond_ce

    .line 261
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualPreviewCallback:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;

    invoke-interface {p4, p1}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeInit(Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V

    .line 263
    :cond_ce
    new-instance p1, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;

    invoke-direct {p1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPaint:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLPaint;

    .line 264
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->loadFromDataStore()V

    .line 266
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mScreenFormType:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->processScreenFormChanged(I)V

    .line 267
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/mode/dualvideo/R$bool;->dual_video_need_gl_finish:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mNeedGlFinish:Z

    return-void
.end method

.method public isPopSettingShow(Z)V
    .registers 2

    .line 1667
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->isPopSettingShow(Z)Z

    return-void
.end method

.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method public bridge synthetic onDoubleTap(FF)Z
    .registers 3

    .line 0
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onDoubleTap(FF)Z

    move-result p0

    return p0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 505
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_19

    .line 507
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->shouldPIPViewRespond(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 508
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->imitatePIPViewsTouch(Landroid/view/MotionEvent;)V

    const/4 p0, 0x1

    return p0

    .line 512
    :cond_19
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onDragMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 7

    .line 529
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_19

    .line 531
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->getOutAreaShouldPIPViewRespond()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 532
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->imitatePIPViewsTouch(Landroid/view/MotionEvent;)V

    const/4 p0, 0x1

    return p0

    .line 536
    :cond_19
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onDragMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    .line 0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public bridge synthetic onLongPress(FF)Z
    .registers 3

    .line 0
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onLongPress(FF)Z

    move-result p0

    return p0
.end method

.method public onRelativePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 8

    .line 436
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRelativePreviewRectChanged, rect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", rect width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mScreenFormType:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mScreenFormType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", preview view width:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 436
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 440
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-double v2, v0

    const-wide v4, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    .line 441
    invoke-static {v2, v3, v4, v5}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v0

    if-eqz v0, :cond_e3

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mScreenFormType:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_73

    if-eqz v0, :cond_73

    const/4 v2, 0x3

    if-eq v0, v2, :cond_73

    goto :goto_e3

    .line 448
    :cond_73
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 449
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 450
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    .line 451
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    .line 453
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9f

    if-nez v0, :cond_98

    .line 455
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->loadFromDataStore()V

    goto :goto_9f

    .line 458
    :cond_98
    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    int-to-float v0, v0

    div-float v1, v2, v0

    .line 461
    :cond_9f
    :goto_9f
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_ab

    .line 462
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    .line 465
    :cond_ab
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayX:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_d7

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayY:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_d7

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayWidth:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_d7

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayHeight:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_d7

    .line 466
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayX:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayX:F

    .line 467
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayY:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayY:F

    .line 468
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayWidth:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayWidth:F

    .line 469
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayHeight:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayHeight:F

    .line 472
    :cond_d7
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    if-eqz v0, :cond_de

    .line 473
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->setPreviewRect(Landroid/graphics/Rect;)V

    .line 476
    :cond_de
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mScreenFormType:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->processScreenFormChanged(I)V

    :cond_e3
    :goto_e3
    return-void
.end method

.method public bridge synthetic onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 6

    .line 481
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mTouchInfoCallback:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$TouchInfoCallback;

    if-eqz p1, :cond_7

    .line 482
    invoke-interface {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$TouchInfoCallback;->sendScaleArea()V

    .line 484
    :cond_7
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_12

    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_19

    :cond_12
    const/16 p1, 0x3e8

    const-wide/16 v2, 0x0

    .line 486
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->sendHandlerMessage(IIJ)V

    :cond_19
    return v1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)Z
    .registers 5

    .line 493
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_b

    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_19

    .line 495
    :cond_b
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->processHandleDrawAuxView(Z)V

    .line 496
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRecordingFlag:Z

    if-eqz p1, :cond_19

    const/16 p1, 0x3e8

    const-wide/16 v1, 0xbb8

    .line 497
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->sendHandlerMessage(IIJ)V

    :cond_19
    return v0
.end method

.method public onScreenFormChanged(IZLandroid/graphics/Rect;)V
    .registers 7

    .line 407
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mScreenFormType:I

    .line 408
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenFormChanged, preview view rect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", preview view width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mScreenFormType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mScreenFormType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 408
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_66

    .line 413
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->resetAuxData()V

    .line 414
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 415
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewWidth:I

    .line 416
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPreviewViewHeight:I

    .line 418
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    if-eqz v0, :cond_66

    .line 419
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->onScreenFormChanged(I)V

    .line 420
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-virtual {v0, p3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->setPreviewRect(Landroid/graphics/Rect;)V

    .line 424
    :cond_66
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    if-eqz p3, :cond_6d

    .line 425
    invoke-virtual {p3, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->onScreenFormChanged(IZ)V

    .line 427
    :cond_6d
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mScreenFormType:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->processScreenFormChanged(I)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 7

    .line 517
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_19

    .line 519
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->getOutAreaShouldPIPViewRespond()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 520
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->imitatePIPViewsTouch(Landroid/view/MotionEvent;)V

    const/4 p0, 0x1

    return p0

    .line 524
    :cond_19
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onDragMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onSingleTapConfirmed(FF)Z
    .registers 3

    .line 0
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onSingleTapConfirmed(FF)Z

    move-result p0

    return p0
.end method

.method public onSingleTapUp(FF)Z
    .registers 8

    .line 556
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSingleTapUp, x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 557
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRecordingFlag:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_37

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2d

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_37

    .line 559
    :cond_2d
    invoke-direct {p0, v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->processHandleDrawAuxView(Z)V

    const/16 v1, 0x3e8

    const-wide/16 v3, 0xbb8

    .line 560
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->sendHandlerMessage(IIJ)V

    .line 563
    :cond_37
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainTouchArea:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_63

    iget v3, v1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_63

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    cmpl-float v3, p2, v3

    if-lez v3, :cond_63

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_63

    .line 565
    const-string v1, "onSingleTapUp, in main touch area"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 566
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mTouchInfoCallback:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$TouchInfoCallback;

    if-eqz v1, :cond_63

    .line 567
    const-string v3, "device_main"

    invoke-interface {v1, v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$TouchInfoCallback;->sendSingleUpAreaName(Ljava/lang/String;)V

    .line 570
    :cond_63
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveTouchArea:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_8f

    iget v3, v1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    cmpg-float p1, p1, v3

    if-gtz p1, :cond_8f

    iget p1, v1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_8f

    iget p1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gez p1, :cond_8f

    .line 572
    const-string p1, "onSingleTapUp, in slave touch area"

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 573
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mTouchInfoCallback:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$TouchInfoCallback;

    if-eqz p0, :cond_8f

    .line 574
    const-string p1, "device_slave"

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$TouchInfoCallback;->sendSingleUpAreaName(Ljava/lang/String;)V

    :cond_8f
    return v2
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 541
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_b

    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainSplitValue:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_19

    .line 543
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->getOutAreaShouldPIPViewRespond()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 544
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->imitatePIPViewsTouch(Landroid/view/MotionEvent;)V

    return v2

    .line 548
    :cond_19
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->isDualDeviceRootHide()Z

    move-result v0

    if-nez v0, :cond_28

    .line 549
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->hideDualDeviceRoot(Z)V

    .line 551
    :cond_28
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public pause()V
    .registers 3

    .line 303
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    if-eqz v0, :cond_7

    .line 304
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->pause()V

    .line 306
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 307
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 308
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->cancelMainAnimatorSetLocked()V

    .line 309
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 310
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_27
    const/4 v0, 0x0

    .line 312
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveAnimatorSet:Landroid/animation/AnimatorSet;

    .line 313
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_39

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 314
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 316
    :cond_39
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerAnimatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public resetAuxData()V
    .registers 2

    const/high16 v0, -0x40800000    # -1.0f

    .line 320
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerDisplayY:F

    .line 321
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayX:F

    .line 322
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayY:F

    .line 323
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayWidth:F

    .line 324
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPipDisplayHeight:F

    return-void
.end method

.method public resume()V
    .registers 1

    .line 297
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    if-eqz p0, :cond_7

    .line 298
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->resume()V

    :cond_7
    return-void
.end method

.method public runDividerAnimator(IIIIII)V
    .registers 8

    .line 1618
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1619
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_f
    const/4 v0, 0x0

    .line 1621
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1623
    filled-new-array {p1, p2}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 1624
    new-instance p2, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1627
    filled-new-array {p3, p4}, [I

    move-result-object p2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 1628
    new-instance p3, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda8;

    invoke-direct {p3, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda8;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1631
    filled-new-array {p5, p6}, [I

    move-result-object p3

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p3

    .line 1632
    new-instance p4, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda9;

    invoke-direct {p4, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda9;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    invoke-virtual {p3, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1636
    new-instance p4, Landroid/animation/AnimatorSet;

    invoke-direct {p4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 p5, 0x12c

    .line 1637
    invoke-virtual {p4, p5, p6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1638
    iget-object p4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerAnimatorSet:Landroid/animation/AnimatorSet;

    sget-object p5, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p4, p5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1639
    iget-object p4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 p5, 0x3

    new-array p5, p5, [Landroid/animation/Animator;

    const/4 p6, 0x0

    aput-object p1, p5, p6

    const/4 p1, 0x1

    aput-object p2, p5, p1

    const/4 p1, 0x2

    aput-object p3, p5, p1

    invoke-virtual {p4, p5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1640
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDividerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public runMainScreenAnimator(IIII)V
    .registers 9

    .line 1546
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->cancelMainAnimatorSetLocked()V

    .line 1548
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainViewPortX:I

    filled-new-array {v0, p1}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 1549
    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda11;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1552
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainViewPortY:I

    filled-new-array {v0, p2}, [I

    move-result-object p2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 1553
    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda12;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1556
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainViewPortWidth:I

    filled-new-array {v0, p3}, [I

    move-result-object p3

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p3

    .line 1557
    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda13;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1560
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainViewPortHeight:I

    filled-new-array {v0, p4}, [I

    move-result-object p4

    invoke-static {p4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p4

    .line 1561
    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda14;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    invoke-virtual {p4, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1566
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainAnimatorSetLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1567
    :try_start_4e
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x190

    .line 1568
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1569
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainAnimatorSet:Landroid/animation/AnimatorSet;

    sget-object v2, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1570
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v2, 0x4

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    aput-object p3, v2, p1

    const/4 p1, 0x3

    aput-object p4, v2, p1

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1571
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$4;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$4;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1581
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mMainAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 1582
    monitor-exit v0

    return-void

    :catchall_86
    move-exception p0

    monitor-exit v0
    :try_end_88
    .catchall {:try_start_4e .. :try_end_88} :catchall_86

    throw p0
.end method

.method public runSlaveScreenAnimator(IIII)V
    .registers 8

    .line 1586
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1587
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_f
    const/4 v0, 0x0

    .line 1589
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1591
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortX:I

    filled-new-array {v0, p1}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 1592
    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1595
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortY:I

    filled-new-array {v0, p2}, [I

    move-result-object p2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 1596
    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1599
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortWidth:I

    filled-new-array {v0, p3}, [I

    move-result-object p3

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p3

    .line 1600
    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1603
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveViewPortHeight:I

    filled-new-array {v0, p4}, [I

    move-result-object p4

    invoke-static {p4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p4

    .line 1604
    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    invoke-virtual {p4, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1608
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x190

    .line 1609
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1610
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveAnimatorSet:Landroid/animation/AnimatorSet;

    sget-object v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1611
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    const/4 p1, 0x3

    aput-object p4, v1, p1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1612
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public setDualDeviceButtonEnable(Z)V
    .registers 2

    .line 1688
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    if-eqz p0, :cond_7

    .line 1689
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->setDualDeviceButtonEnable(Z)V

    :cond_7
    return-void
.end method

.method public setDualDeviceGroupRootVisibility(I)V
    .registers 2

    .line 291
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    if-eqz p0, :cond_7

    .line 292
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->setDualDeviceGroupRootVisibility(I)V

    :cond_7
    return-void
.end method

.method public setDualDeviceItemEnable(Z)V
    .registers 2

    .line 285
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    if-eqz p0, :cond_7

    .line 286
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->setDualDeviceItemEnable(Z)V

    :cond_7
    return-void
.end method

.method public setDualVideoInPlatformMTK(Z)V
    .registers 2

    .line 1699
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoInPlatformMTK:Z

    return-void
.end method

.method public setOrientation(I)V
    .registers 2

    .line 1684
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->setOrientation(I)V

    return-void
.end method

.method public setRecordingFlag(Z)V
    .registers 5

    .line 382
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-nez v0, :cond_5

    return-void

    .line 385
    :cond_5
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRecordingFlag, flag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v0, 0x68

    .line 388
    filled-new-array {v0, p1}, [I

    move-result-object v0

    .line 389
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0, v2}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->loadGLResources(Z[II)V

    .line 390
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->getMainAndSlaveRatio()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setDualVideoWindowCutRatio(F)V

    .line 391
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->dualVideo(I)V

    return-void
.end method

.method public setSplitStyleAndValue(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SplitStyle;IZZZ)V
    .registers 9

    .line 356
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-nez v0, :cond_5

    return-void

    .line 360
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 361
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->cancelMainAnimatorSetLocked()V

    .line 363
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 364
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1e
    const/4 v0, 0x0

    .line 366
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v0, 0x5

    .line 368
    new-array v0, v0, [I

    .line 369
    sget-object v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SplitStyle;->STYLE_UP_DOWN:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SplitStyle;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_2e

    const/16 p1, 0x65

    .line 370
    aput p1, v0, v2

    goto :goto_32

    :cond_2e
    const/16 p1, 0x66

    .line 372
    aput p1, v0, v2

    :goto_32
    const/4 p1, 0x1

    .line 374
    aput p2, v0, p1

    const/4 p2, 0x2

    .line 375
    aput p3, v0, p2

    const/4 p2, 0x3

    .line 376
    aput p4, v0, p2

    const/4 p2, 0x4

    .line 377
    aput p5, v0, p2

    .line 378
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    invoke-interface {p0, p1, v0, p1}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->loadGLResources(Z[II)V

    return-void
.end method

.method public setSurfaceTextureListener(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SurfaceTextureListener;)V
    .registers 2

    .line 328
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mSlaveSurfaceListener:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SurfaceTextureListener;

    return-void
.end method

.method public setTouchInfoCallback(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$TouchInfoCallback;)V
    .registers 2

    .line 344
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mTouchInfoCallback:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$TouchInfoCallback;

    return-void
.end method

.method public setVideoMsgCallback(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoMsgCallback;)V
    .registers 2

    .line 340
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoMsgCallback:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoMsgCallback;

    return-void
.end method

.method public setVideoPictureCallback(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPictureCallback;)V
    .registers 2

    .line 336
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mPictureCallback:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPictureCallback;

    return-void
.end method

.method public setVideoRecorderCallback(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoRecorderCallback;)V
    .registers 2

    .line 332
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mRecorderCallback:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoRecorderCallback;

    return-void
.end method

.method public showOrHideDualDeviceButton(Z)V
    .registers 2

    .line 1671
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    if-eqz p0, :cond_7

    .line 1672
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->showOrHideDualDeviceButton(Z)V

    :cond_7
    return-void
.end method

.method public startRecordHideRoot(Z)V
    .registers 2

    .line 271
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->startRecordingHideDeviceRoot(Z)V

    return-void
.end method

.method public takeVideoPicture()V
    .registers 3

    .line 348
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "takeVideoPicture"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 349
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz p0, :cond_11

    const/4 v0, 0x1

    const/16 v1, 0x67

    .line 350
    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->loadGLResource(ZI)V

    :cond_11
    return-void
.end method

.method public unInit()V
    .registers 2

    .line 275
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v0, :cond_7

    .line 276
    invoke-interface {v0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeUninit()V

    .line 278
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualVideoPreviewUI:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    if-eqz v0, :cond_e

    .line 279
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->unInit()V

    .line 281
    :cond_e
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->saveToDataStore()V

    return-void
.end method

.method public updateSurfaceSize(II)V
    .registers 6

    .line 395
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-nez v0, :cond_5

    return-void

    .line 398
    :cond_5
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSurfaceSize, width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v0, 0x64

    .line 402
    filled-new-array {v0, p1, p2}, [I

    move-result-object p1

    .line 403
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->mDualPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    const/4 p2, 0x1

    invoke-interface {p0, p2, p1, p2}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->loadGLResources(Z[II)V

    return-void
.end method
