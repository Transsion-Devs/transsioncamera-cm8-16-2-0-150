.class public Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;
.super Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/aiartmuseum/ui/IPreviewWindowController;


# static fields
.field private static final GUIDE_ANIMATION_SHOW:Ljava/lang/String; = "ai_art_museum_guide_animation_show"

.field private static final PREVIEW_GESTURE_PRIORITY:I = 0x5

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCurrentPointId:I

.field private final mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mEffect:Ljava/lang/String;

.field private mGuideAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

.field private mLastX:F

.field private mLastY:F

.field private final mPreviewGestureListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;

.field private final mPreviewRect:Landroid/graphics/Rect;

.field private final mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

.field private mPreviewWindowListener:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/IPreviewWindowController$IPreviewWindowListener;

.field private mRootView:Landroid/view/ViewGroup;

.field private mSteadyFrame:Z

.field private final mTouchRect:Landroid/graphics/Rect;

.field private mTouchRoot:Landroid/view/View;

.field private mTouchView:Landroid/view/View;

.field private mTranslateX:F

.field private mTranslateY:F


# direct methods
.method static bridge synthetic -$$Nest$fgetmPreviewRect(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;)Landroid/graphics/Rect;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mPreviewRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTouchRoot(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mTouchRoot:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTouchView(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mTouchView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$minTouchRect(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;FF)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->inTouchRect(FF)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monClick(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->onClick(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessDrag(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->processDrag(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLayout(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->updateLayout()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 45
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PreviewTouchUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 3

    .line 161
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;)V

    .line 73
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mTouchRect:Landroid/graphics/Rect;

    .line 75
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mPreviewRect:Landroid/graphics/Rect;

    .line 79
    new-instance p1, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI$1;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

    .line 107
    new-instance p1, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI$2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI$2;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mPreviewGestureListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;

    .line 162
    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUI;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-void
.end method

.method private guideAnimationShowed()V
    .registers 5

    .line 316
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v1, 0x0

    .line 317
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    .line 316
    const-string v3, "ai_art_museum_guide_animation_show"

    invoke-virtual {v0, v3, v1, p0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private hideGuideAnimation()V
    .registers 3

    .line 306
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mGuideAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 307
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mGuideAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    return-void
.end method

.method private inTouchRect(FF)Z
    .registers 3

    .line 176
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mTouchRect:Landroid/graphics/Rect;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method private initView()V
    .registers 5

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mRootView:Landroid/view/ViewGroup;

    .line 206
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/aiartmuseum/R$layout;->ai_art_museum_preview_touch_layout:I

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mRootView:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    .line 207
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mTouchRoot:Landroid/view/View;

    .line 209
    sget v1, Lcom/transsion/camera/feature/aiartmuseum/R$id;->ai_art_museum_preview_touch:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mTouchView:Landroid/view/View;

    .line 211
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mTouchRoot:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/aiartmuseum/R$id;->ai_art_museum_preview_touch_guide:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mGuideAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 213
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mTouchRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 215
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 216
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mPreviewGestureListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;

    const/4 v1, 0x5

    invoke-interface {v0, p0, v1}, Lcom/transsion/camera/app/common/IAppUI;->registerPreviewGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;I)V

    return-void
.end method

.method private onClick(Landroid/view/View;)V
    .registers 4

    .line 254
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onClick"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 255
    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_15

    .line 258
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mPreviewWindowListener:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/IPreviewWindowController$IPreviewWindowListener;

    if-eqz p0, :cond_15

    .line 259
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/IPreviewWindowController$IPreviewWindowListener;->onPreviewChange()V

    :cond_15
    :goto_15
    return-void
.end method

.method private processDrag(Landroid/view/MotionEvent;)V
    .registers 5

    .line 180
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    const/4 v2, 0x2

    if-eq v0, v2, :cond_b

    goto :goto_38

    .line 190
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_38

    iget v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mCurrentPointId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    if-eq v0, v1, :cond_1b

    goto :goto_38

    .line 193
    :cond_1b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mLastX:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mLastY:F

    sub-float/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->updateTranslation(FF)V

    .line 194
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mLastX:F

    .line 195
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mLastY:F

    :cond_38
    :goto_38
    return-void

    .line 182
    :cond_39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mLastX:F

    .line 183
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mLastY:F

    .line 184
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->hideGuideAnimation()V

    .line 185
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v2, 0x18d

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 186
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mCurrentPointId:I

    return-void
.end method

.method private shouldShowGuideAnimation()Z
    .registers 5

    .line 311
    const-string v0, "key_ai_art_museum_style"

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mEffect:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v1, 0x1

    .line 312
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    .line 311
    const-string v3, "ai_art_museum_guide_animation_show"

    invoke-virtual {v0, v3, v2, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_24

    return v1

    :cond_24
    const/4 p0, 0x0

    return p0
.end method

.method private updateLayout()V
    .registers 7

    .line 321
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c5

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mTouchRoot:Landroid/view/View;

    if-eqz v0, :cond_c5

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mTouchView:Landroid/view/View;

    if-nez v1, :cond_12

    goto/16 :goto_c5

    .line 326
    :cond_12
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 327
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mPreviewRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 328
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 329
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 330
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mTouchRoot:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mTouchView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 333
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e8e38e4

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 334
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 335
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec;->getPreviewTouchTopMargin(II)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 336
    sget v1, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec;->PREVIEW_TOUCH_RIGHT_MARGIN:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/16 v1, 0x35

    .line 337
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 338
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mTouchView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 340
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mGuideAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 341
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mContext:Landroid/content/Context;

    .line 342
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/camera/feature/aiartmuseum/R$dimen;->ai_art_museum_preview_touch_guide_margin_top_offset:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 343
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v3, v0

    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mContext:Landroid/content/Context;

    .line 344
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/transsion/camera/feature/aiartmuseum/R$dimen;->ai_art_museum_preview_touch_guide_margin_right_offset:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 345
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 346
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mGuideAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    .line 348
    iput v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mTranslateX:F

    .line 349
    iput v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mTranslateY:F

    .line 350
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mTouchView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 351
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mTouchView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 352
    invoke-direct {p0, v0, v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->updateTranslation(FF)V

    return-void

    .line 322
    :cond_c5
    :goto_c5
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLayout mTouchRoot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mTouchRoot:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mTouchView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mTouchView:Landroid/view/View;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateTranslation(FF)V
    .registers 5

    .line 220
    iget v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mTranslateX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mTranslateX:F

    .line 221
    iget p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mTranslateY:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mTranslateY:F

    .line 223
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mTouchRoot:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mTouchView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    sub-int/2addr p1, p2

    neg-int p1, p1

    sget p2, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec;->PREVIEW_TOUCH_RIGHT_MARGIN:I

    add-int/2addr p1, p2

    .line 226
    iget v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mTranslateX:F

    int-to-float p2, p2

    cmpl-float v1, v0, p2

    if-lez v1, :cond_25

    .line 227
    iput p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mTranslateX:F

    goto :goto_2c

    :cond_25
    int-to-float p1, p1

    cmpg-float p2, v0, p1

    if-gez p2, :cond_2c

    .line 229
    iput p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mTranslateX:F

    .line 232
    :cond_2c
    :goto_2c
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec;->getPreviewTouchTopThreshold(II)I

    move-result p1

    neg-int p1, p1

    .line 233
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {p2, v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec;->getPreviewTouchTranslationYThreshold(II)I

    move-result p2

    .line 235
    iget v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mTranslateY:F

    int-to-float p1, p1

    cmpg-float v1, v0, p1

    if-gez v1, :cond_57

    .line 236
    iput p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mTranslateY:F

    goto :goto_5e

    :cond_57
    int-to-float p1, p2

    cmpl-float p2, v0, p1

    if-lez p2, :cond_5e

    .line 238
    iput p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mTranslateY:F

    .line 241
    :cond_5e
    :goto_5e
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mPreviewWindowListener:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/IPreviewWindowController$IPreviewWindowListener;

    if-eqz p1, :cond_80

    .line 242
    iget p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mTranslateX:F

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p1, p2

    .line 243
    iget v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mTranslateY:F

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v0, p2

    .line 244
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mPreviewWindowListener:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/IPreviewWindowController$IPreviewWindowListener;

    neg-float v0, v0

    invoke-interface {p2, p1, v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/IPreviewWindowController$IPreviewWindowListener;->onPreviewWindowTranslate(FF)V

    .line 247
    :cond_80
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mTouchView:Landroid/view/View;

    iget p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mTranslateX:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 248
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mTouchView:Landroid/view/View;

    iget p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mTranslateY:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 250
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mTouchView:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mTouchRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    return-void
.end method


# virtual methods
.method public firstSteadyFrame()V
    .registers 3

    const/4 v0, 0x1

    .line 293
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mSteadyFrame:Z

    .line 294
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->updateLayout()V

    .line 296
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->shouldShowGuideAnimation()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 297
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mGuideAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mGuideAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 299
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->guideAnimationShowed()V

    return-void

    .line 301
    :cond_1b
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mGuideAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected getPreviewTouchRoot()Landroid/view/View;
    .registers 1

    .line 264
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mTouchRoot:Landroid/view/View;

    return-object p0
.end method

.method public init()V
    .registers 2

    .line 167
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->init()V

    const/4 v0, 0x0

    .line 169
    iput v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mTranslateX:F

    .line 170
    iput v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mTranslateY:F

    .line 172
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->initView()V

    return-void
.end method

.method public pause()V
    .registers 2

    .line 357
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->pause()V

    const/4 v0, 0x0

    .line 358
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mSteadyFrame:Z

    return-void
.end method

.method public previewSizeChanged(II)V
    .registers 6

    .line 377
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "previewSizeChanged width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", height: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 378
    iput p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mTranslateX:F

    .line 379
    iput p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mTranslateY:F

    .line 380
    invoke-direct {p0, p1, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->updateTranslation(FF)V

    return-void
.end method

.method public setPreviewWindowListener(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/IPreviewWindowController$IPreviewWindowListener;)V
    .registers 2

    .line 372
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mPreviewWindowListener:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/IPreviewWindowController$IPreviewWindowListener;

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 363
    invoke-super {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->unInit()V

    const/4 v0, 0x0

    .line 364
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mSteadyFrame:Z

    .line 365
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mTouchRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 366
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 367
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mPreviewGestureListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->unregisterPreviewGestureListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;)V

    return-void
.end method

.method public updateEffect(Ljava/lang/String;)V
    .registers 5

    .line 268
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateEffect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 269
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mEffect:Ljava/lang/String;

    .line 271
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mSteadyFrame:Z

    if-eqz p1, :cond_32

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->shouldShowGuideAnimation()Z

    move-result p1

    if-eqz p1, :cond_32

    .line 272
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mGuideAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 273
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mGuideAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 274
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->guideAnimationShowed()V

    return-void

    .line 276
    :cond_32
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mGuideAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public userInteractive()Z
    .registers 3

    .line 281
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->shouldShowGuideAnimation()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    .line 282
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->hideGuideAnimation()V

    return v1

    .line 285
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->mGuideAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_17

    .line 286
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->hideGuideAnimation()V

    return v1

    :cond_17
    const/4 p0, 0x0

    return p0
.end method
