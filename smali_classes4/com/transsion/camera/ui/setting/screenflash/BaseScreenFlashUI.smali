.class abstract Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI$MainHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_VALUE:Ljava/lang/String; = "on"

.field private static final MIN_SHOW_TIME:J = 0x15eL

.field private static final MSG_HIDE_SCREEN_FLASH:I = 0x2

.field private static final MSG_SHOW_SCREEN_FLASH:I = 0x1

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mApertureView:Lcom/transsion/camera/app/ui/aperture/ApertureView;

.field protected mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mFlashingView:Lcom/opensource/svgaplayer/SVGAImageView;

.field private final mMainHandler:Landroid/os/Handler;

.field private mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mShowTime:J

.field private mSvgParser:Lcom/opensource/svgaplayer/SVGAParser;


# direct methods
.method public static synthetic $r8$lambda$hgtPpX0t51qGsFpFFFV6FNDcmlA(Ljava/util/List;)V
    .registers 1

    .line 0
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmFlashingView(Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;)Lcom/opensource/svgaplayer/SVGAImageView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->mFlashingView:Lcom/opensource/svgaplayer/SVGAImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleHideScreenFlashView(Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->handleHideScreenFlashView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleShowScreenFlashView(Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->handleShowScreenFlashView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleUpdateApertureView(Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->handleUpdateApertureView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 47
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BaseScreenFlashUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 70
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 71
    new-instance v0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI$MainHandler;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI$MainHandler;-><init>(Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method private handleHideScreenFlashView()V
    .registers 4

    .line 228
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_e

    .line 230
    sget-object p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "entry view is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 233
    :cond_e
    sget-object v1, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "hideScreenFlashView"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 234
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x0

    .line 235
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 237
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->stopFlashingAnimation()V

    return-void
.end method

.method private handleShowScreenFlashView()V
    .registers 4

    .line 195
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_e

    .line 197
    sget-object p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "entry view is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 200
    :cond_e
    sget-object v1, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "showScreenFlashView"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 201
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 202
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 203
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->mFlashingView:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v0, :cond_32

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->mSvgParser:Lcom/opensource/svgaplayer/SVGAParser;

    new-instance v1, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI$1;-><init>(Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;)V

    new-instance p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "screen_flashing.svga"

    invoke-virtual {v0, v2, v1, p0}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromAssets(Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;)V

    return-void

    .line 223
    :cond_32
    const-string p0, "mFlashingView is null"

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private handleUpdateApertureView()V
    .registers 4

    .line 186
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->mApertureView:Lcom/transsion/camera/app/ui/aperture/ApertureView;

    if-eqz v0, :cond_21

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    if-nez v1, :cond_9

    goto :goto_21

    .line 189
    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getCutoutHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 191
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->mApertureView:Lcom/transsion/camera/app/ui/aperture/ApertureView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_21
    :goto_21
    return-void
.end method

.method private stopFlashingAnimation()V
    .registers 3

    .line 241
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->mFlashingView:Lcom/opensource/svgaplayer/SVGAImageView;

    if-nez v0, :cond_c

    .line 242
    sget-object p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mFlashingView is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_c
    const/4 v1, 0x0

    .line 245
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 246
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->mFlashingView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 247
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->mFlashingView:Lcom/opensource/svgaplayer/SVGAImageView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation(Z)V

    :cond_1e
    return-void
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 76
    sget v0, Lcom/transsion/camera/R$layout;->screen_flash_view:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 77
    new-instance v0, Lcom/opensource/svgaplayer/SVGAParser;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/opensource/svgaplayer/SVGAParser;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->mSvgParser:Lcom/opensource/svgaplayer/SVGAParser;

    .line 78
    sget p2, Lcom/transsion/camera/R$id;->aperture_circle_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewStub;

    .line 79
    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 81
    sget p2, Lcom/transsion/camera/R$id;->aperture:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/aperture/ApertureView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->mApertureView:Lcom/transsion/camera/app/ui/aperture/ApertureView;

    if-eqz p2, :cond_2e

    .line 83
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/ui/aperture/ApertureView;->onScreenFormChanged(I)V

    .line 86
    :cond_2e
    sget p2, Lcom/transsion/camera/R$id;->screen_flashing:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/opensource/svgaplayer/SVGAImageView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->mFlashingView:Lcom/opensource/svgaplayer/SVGAImageView;

    .line 87
    sget p2, Lcom/transsion/camera/R$id;->screen_flashing_rotate_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    return-object p1
.end method

.method public getEntryRootView()Landroid/view/ViewGroup;
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mCameraRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract synthetic getKey()Ljava/lang/String;
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_e

    .line 117
    sget-object p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "deviceSetting is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 118
    const-string p0, "on"

    return-object p0

    .line 120
    :cond_e
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected hideScreenFlashView()V
    .registers 7

    .line 172
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 173
    iget-wide v2, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->mShowTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 175
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->mMainHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 176
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->mMainHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v4, 0x15e

    cmp-long v2, v0, v4

    if-ltz v2, :cond_27

    .line 179
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 181
    :cond_27
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->mMainHandler:Landroid/os/Handler;

    sub-long/2addr v4, v0

    invoke-virtual {p0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public bridge synthetic isNeedResetPrivacyMode()Z
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/IPrivacyCallback;->isNeedResetPrivacyMode()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 4

    .line 135
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onOrientationChanged(I)V

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_10

    const/4 v1, 0x7

    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-ne v1, p0, :cond_10

    const/4 p0, 0x1

    .line 137
    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    :cond_10
    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 143
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onScreenFormChanged(IZ)V

    .line 144
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->mApertureView:Lcom/transsion/camera/app/ui/aperture/ApertureView;

    if-eqz p0, :cond_a

    .line 145
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/aperture/ApertureView;->onScreenFormChanged(I)V

    :cond_a
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 160
    sget-object p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "intercept all touch event when screen flash view is visible"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 125
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

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

    return-void
.end method

.method public setupEntryView()V
    .registers 4

    .line 93
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setupEntryView()V

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_12

    const/4 v1, 0x7

    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-ne v1, v2, :cond_12

    .line 95
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    :cond_12
    return-void
.end method

.method protected showScreenFlashView()V
    .registers 4

    .line 165
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->mShowTime:J

    .line 166
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 168
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public unInit()V
    .registers 1

    .line 151
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 152
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->stopFlashingAnimation()V

    .line 153
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/screenflash/BaseScreenFlashUI;->mFlashingView:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz p0, :cond_d

    .line 154
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->clear()V

    :cond_d
    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method
