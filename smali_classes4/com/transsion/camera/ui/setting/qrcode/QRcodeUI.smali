.class public Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;,
        Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$UIHandler;,
        Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QRcodeSettingCallback;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0xc8

.field private static final ANIMATOR_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final INTERVAL_TIME:J = 0x2710L

.field private static final MORE_ICON_TRANSLATE_DURATION:J = 0x1c2L

.field private static final MSG_HIDE_BOX_VIEW:I = 0x69

.field private static final MSG_HIDE_TOAST:I = 0x67

.field private static final MSG_QRCODE_VIEW_CLOSE:I = 0x6a

.field private static final MSG_UPDATE_RESULT:I = 0x65

.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final SETTING_KEY:Ljava/lang/String; = "key_setting_qrcode"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

.field private mAllowClickMoreIcon:Z

.field private mAllowUpdateResult:Z

.field private mBoxView:Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;

.field private mButtonFcF:Landroid/widget/Button;

.field private mButtonFcS:Landroid/widget/Button;

.field private mCLickToastTime:J

.field private mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private final mCenterPoint:Landroid/graphics/Point;

.field private mCurrentCodeType:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

.field private mCurrentImageSize:Landroid/graphics/Point;

.field private mCurrentQRcodeRect:Landroid/graphics/Rect;

.field private mCurrentResult:Ljava/lang/String;

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mHoverAnimator:Landroid/animation/ValueAnimator;

.field private final mIQrCodeToastCallback:Lcom/transsion/camera/ui/setting/qrcode/IQrCodeToastCallback;

.field private final mInitialPoint:Landroid/graphics/Point;

.field private mIsAutoMacroSwitchShowing:Z

.field private mIsCLickPopSettingUIBackIcon:Z

.field private mIsCelebritySceneUIShow:Z

.field private mIsClickCancel:Z

.field private mIsClickToast:Z

.field private mIsFilterUIShow:Z

.field private mIsImageStyleUIShow:Z

.field private mIsInitialLocation:Z

.field private mIsPause:Z

.field private mIsPopSettingOrZoomBarShow:Z

.field private mIsShowBoxView:Z

.field private mIsSuperNightLiteSwitchShowing:Z

.field private mIsZoomUI3Show:Z

.field private mLastQRcodeRect:Landroid/graphics/Rect;

.field private mLastResult:Ljava/lang/String;

.field private final mMinRecognizeSize:I

.field private mMoreIcon:Landroid/widget/ImageView;

.field private final mMoreIconMarginBottom:I

.field private mOrientation:I

.field private mPopView:Landroid/view/View;

.field private final mPopViewMarginRight:I

.field private mPopWindowResultView:Landroid/widget/TextView;

.field private mPopWindowRootLayout:Landroid/widget/RelativeLayout;

.field private mPopWindowSplitView:Landroid/widget/ImageView;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mPreviewRect:Landroid/graphics/Rect;

.field private final mQRcodeSettingCallBack:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QRcodeSettingCallback;

.field private final mResources:Landroid/content/res/Resources;

.field private mRootView:Landroid/view/View;

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field protected mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

.field private mToastCancelView:Landroid/widget/ImageView;

.field private final mToastRootLayoutHeight:I

.field private final mToastRootLayoutHorizontalMarginBottom:I

.field private final mToastRootLayoutMarginBottom:I

.field private final mToastRootLayoutMarginLeft:I

.field private final mToastRootLayoutMarginRight:I

.field private mToastRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mToastTextView:Landroid/widget/TextView;

.field private final mUIHandler:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$UIHandler;


# direct methods
.method public static synthetic $r8$lambda$8eBzDM3h3gpQ4Z1DTFnIbEWquoY(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->lambda$updateSettingUILayout$4(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9_m6y5KxkSZ3xZUUz16Yl5P5-hs(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;Landroid/graphics/Rect;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->lambda$new$6(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$K1azjH4_NJ4qqk5QvQZq2f1j9vU(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->lambda$initPopupWindow$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$Pl4i25ZRmCQfQR9SHCdz7QbSoBU(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->lambda$new$5(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T3qDCCV9ERlN-ULDsX5c6dIfGHs(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 0
    invoke-direct/range {p0 .. p9}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->lambda$doCreateEntryView$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$dm0hUEdgICqAPOd92i6i7_vDCws(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->onClicks(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gy8BPrUb3xjJbOddiQsa9AS7fPo(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->lambda$updateSettingUILayout$3(Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zucK_KNMFyKDSSJpPm90Ijqfjx0(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->lambda$initPopupWindow$1()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAeAfLock(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)Lcom/transsion/camera/app/common/mode/IAeAfLock;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAllowUpdateResult(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mAllowUpdateResult:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCLickToastTime(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCLickToastTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmIsCelebritySceneUIShow(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsCelebritySceneUIShow:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsClickToast(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsClickToast:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsFilterUIShow(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsFilterUIShow:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsImageStyleUIShow(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsImageStyleUIShow:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsInitialLocation(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsInitialLocation:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsPopSettingOrZoomBarShow(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsPopSettingOrZoomBarShow:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsShowBoxView(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsShowBoxView:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPopupWindow(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)Landroid/widget/PopupWindow;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$UIHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mUIHandler:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$UIHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsClickToast(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsClickToast:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsInitialLocation(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsInitialLocation:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoQrcodeViewCLose(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->doQrcodeViewCLose()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideBoxView(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->hideBoxView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideIcon(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->hideIcon()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhidePopWindow(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->hidePopWindow()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideToast(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->hideToast()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetBoxViewRect(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->resetBoxViewRect()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetLastQrcodeInfo(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->resetLastQrcodeInfo()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateResult(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;Ljava/util/List;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->updateResult(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 130
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "QRcodeUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 132
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 133
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const v4, 0x3f28f5c3    # 0.66f

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->ANIMATOR_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 5

    .line 249
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 143
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCenterPoint:Landroid/graphics/Point;

    .line 144
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mInitialPoint:Landroid/graphics/Point;

    .line 159
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPreviewRect:Landroid/graphics/Rect;

    .line 160
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mLastQRcodeRect:Landroid/graphics/Rect;

    .line 161
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentQRcodeRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 177
    iput v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mOrientation:I

    const-wide/16 v1, 0x0

    .line 178
    iput-wide v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCLickToastTime:J

    const/4 v1, 0x0

    .line 182
    iput-object v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentCodeType:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    .line 183
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsClickToast:Z

    .line 184
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsClickCancel:Z

    .line 185
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsShowBoxView:Z

    const/4 v2, 0x1

    .line 186
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsInitialLocation:Z

    .line 187
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mAllowUpdateResult:Z

    .line 188
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsPopSettingOrZoomBarShow:Z

    .line 189
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsZoomUI3Show:Z

    .line 190
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsFilterUIShow:Z

    .line 191
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsImageStyleUIShow:Z

    .line 192
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsCelebritySceneUIShow:Z

    .line 193
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsCLickPopSettingUIBackIcon:Z

    .line 194
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mAllowClickMoreIcon:Z

    .line 196
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsAutoMacroSwitchShowing:Z

    .line 197
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsSuperNightLiteSwitchShowing:Z

    .line 198
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsPause:Z

    .line 1539
    new-instance v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 1555
    new-instance v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIQrCodeToastCallback:Lcom/transsion/camera/ui/setting/qrcode/IQrCodeToastCallback;

    .line 250
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    .line 251
    new-instance v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$UIHandler;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mUIHandler:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$UIHandler;

    .line 252
    new-instance v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QRcodeSettingCallback;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QRcodeSettingCallback;-><init>(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mQRcodeSettingCallBack:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QRcodeSettingCallback;

    .line 253
    sget v0, Lcom/transsion/camera/R$dimen;->qrcode_min_recognize_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mMinRecognizeSize:I

    .line 254
    sget v0, Lcom/transsion/camera/R$dimen;->qrcode_pop_window_margin_right:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopViewMarginRight:I

    .line 255
    sget v0, Lcom/transsion/camera/R$dimen;->qrcode_more_icon_bottom_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mMoreIconMarginBottom:I

    .line 256
    sget v0, Lcom/transsion/camera/R$dimen;->qrcode_toast_layout_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mToastRootLayoutHeight:I

    .line 257
    sget v0, Lcom/transsion/camera/R$dimen;->qrcode_toast_layout_margin_bottom:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mToastRootLayoutMarginBottom:I

    .line 258
    sget v0, Lcom/transsion/camera/R$dimen;->qrcode_toast_root_layout_margin_left:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mToastRootLayoutMarginLeft:I

    .line 259
    sget v0, Lcom/transsion/camera/R$dimen;->qrcode_toast_root_layout_margin_right:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mToastRootLayoutMarginRight:I

    .line 260
    sget v0, Lcom/transsion/camera/R$dimen;->qrcode_toast_root_layout_margin_bottom_horizontal:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mToastRootLayoutHorizontalMarginBottom:I

    return-void
.end method

.method private connectWifi()V
    .registers 12

    .line 1423
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.panel.action.WIFI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 1424
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1425
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 1426
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    .line 1427
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1428
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1429
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentResult:Ljava/lang/String;

    const-string v2, "S:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    add-int/2addr v3, v4

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentResult:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v4

    const-string v6, ";"

    invoke-virtual {v5, v6, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1430
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentResult:Ljava/lang/String;

    const-string v3, "P:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v4

    iget-object v7, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentResult:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {v7, v6, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1431
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentResult:Ljava/lang/String;

    const-string v5, "T:"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v7, v4

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentResult:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v3, v7, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1432
    sget-object v3, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getResultType name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " password = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " , security = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1434
    new-instance v5, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v5}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1435
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1437
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    const/4 v8, 0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    if-eqz v6, :cond_bc

    .line 1438
    iget-object p0, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p0, v10}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_136

    .line 1440
    :cond_bc
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_164

    :goto_c6
    move v4, v9

    goto :goto_f1

    :sswitch_c8
    const-string v4, "WPA3"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d1

    goto :goto_c6

    :cond_d1
    const/4 v4, 0x3

    goto :goto_f1

    :sswitch_d3
    const-string v6, "WPA2"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f1

    goto :goto_c6

    :sswitch_dc
    const-string v4, "WPA"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e5

    goto :goto_c6

    :cond_e5
    move v4, v8

    goto :goto_f1

    :sswitch_e7
    const-string v4, "SAE"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f0

    goto :goto_c6

    :cond_f0
    move v4, v10

    :cond_f1
    :goto_f1
    packed-switch v4, :pswitch_data_176

    .line 1451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported security type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1443
    :pswitch_109
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v5, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_136

    :pswitch_11e
    const/4 p0, 0x4

    .line 1447
    invoke-virtual {v5, p0}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 1448
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v5, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1459
    :goto_136
    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result p0

    if-ne p0, v9, :cond_142

    .line 1461
    const-string p0, "Failed to add network configuration!"

    invoke-static {v3, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1465
    :cond_142
    invoke-virtual {v0, p0, v8}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result p0

    if-nez p0, :cond_14e

    .line 1467
    const-string p0, "Failed to enable network!"

    invoke-static {v3, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1469
    :cond_14e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Successfully connected to WiFi: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    nop

    :sswitch_data_164
    .sparse-switch
        0x13fb7 -> :sswitch_e7
        0x15088 -> :sswitch_dc
        0x28c0aa -> :sswitch_d3
        0x28c0ab -> :sswitch_c8
    .end sparse-switch

    :pswitch_data_176
    .packed-switch 0x0
        :pswitch_11e
        :pswitch_109
        :pswitch_109
        :pswitch_11e
    .end packed-switch
.end method

.method private createContact(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1414
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1415
    const-string v1, "vnd.android.cursor.dir/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1416
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1417
    const-string p1, "phone"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 1418
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1419
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private doQrcodeViewCLose()V
    .registers 1

    .line 1262
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->hideIcon()V

    .line 1263
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->hideToast()V

    .line 1264
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->hideBoxView()V

    .line 1265
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->hidePopWindow()V

    return-void
.end method

.method private getMarginOffsetInExpandForm()I
    .registers 3

    .line 823
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsAutoMacroSwitchShowing:Z

    if-eqz v0, :cond_13

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsSuperNightLiteSwitchShowing:Z

    if-eqz v1, :cond_13

    .line 824
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$dimen;->qrcode_more_icon_expand_margin_offset:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    return p0

    :cond_13
    if-nez v0, :cond_1c

    .line 826
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsSuperNightLiteSwitchShowing:Z

    if-eqz v0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 p0, 0x0

    return p0

    .line 827
    :cond_1c
    :goto_1c
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$dimen;->qrcode_more_icon_expand_margin_offset:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private getMarginOffsetInHoverForm()I
    .registers 3

    .line 813
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsAutoMacroSwitchShowing:Z

    if-eqz v0, :cond_13

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsSuperNightLiteSwitchShowing:Z

    if-eqz v1, :cond_13

    .line 814
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$dimen;->qrcode_more_icon_hover_margin_offset:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    return p0

    :cond_13
    if-nez v0, :cond_1c

    .line 816
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsSuperNightLiteSwitchShowing:Z

    if-eqz v0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 p0, 0x0

    return p0

    .line 817
    :cond_1c
    :goto_1c
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/R$dimen;->qrcode_more_icon_hover_margin_offset:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private getResultType(Ljava/lang/String;)Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;
    .registers 7

    .line 1319
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1320
    const-string v1, "https://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_80

    const-string v1, "http://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_80

    .line 1322
    :cond_17
    const-string v1, "MT:[A-Z0-9.-]{19,}"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1323
    sget-object p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;->MATTER:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    return-object p0

    :cond_22
    const/4 v1, 0x0

    .line 1324
    aget-object v2, v0, v1

    const-string v3, "smsto"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1325
    sget-object p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;->SMS:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    return-object p0

    .line 1326
    :cond_30
    aget-object v2, v0, v1

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 1327
    sget-object p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;->WIFI:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    return-object p0

    .line 1328
    :cond_3d
    aget-object v2, v0, v1

    const-string v3, "tel"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 1329
    sget-object p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;->TEL:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    return-object p0

    .line 1330
    :cond_4a
    aget-object v2, v0, v1

    const-string v4, "FIDO"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 1331
    sget-object p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;->FIDO:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    return-object p0

    .line 1332
    :cond_57
    aget-object v0, v0, v1

    const-string v1, "mecard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 1333
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->getVcardInfo(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    .line 1334
    const-string p1, "name"

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1335
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p1, :cond_7a

    if-eqz p0, :cond_7a

    .line 1337
    sget-object p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;->VCARD:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    return-object p0

    .line 1339
    :cond_7a
    sget-object p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;->TEXT:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    return-object p0

    .line 1342
    :cond_7d
    sget-object p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;->TEXT:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    return-object p0

    .line 1321
    :cond_80
    :goto_80
    sget-object p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;->URI:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    return-object p0
.end method

.method private getVcardInfo(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1347
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 1350
    const-string v0, "N:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ";"

    const/4 v3, 0x0

    if-eqz v1, :cond_25

    .line 1351
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_26

    :cond_25
    move-object v0, v3

    .line 1353
    :goto_26
    const-string v1, "TEL:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 1354
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1356
    :cond_42
    const-string p1, "name"

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1357
    const-string p1, "tel"

    invoke-virtual {p0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method private handleMultipleQrCode(Ljava/util/List;)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/setting/qrcode/result/QrCodeResult;",
            ">;)I"
        }
    .end annotation

    .line 869
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, -0x1

    return p0

    .line 874
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 875
    :goto_11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_53

    .line 876
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/setting/qrcode/result/QrCodeResult;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/setting/qrcode/result/QrCodeResult;->getQrCodeRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 877
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    .line 878
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPreviewRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v5

    .line 879
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCenterPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    iget-object v8, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCenterPoint:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v8

    int-to-double v8, v3

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 882
    :cond_53
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    move p0, v1

    .line 883
    :goto_5e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_e9

    .line 884
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    sub-double/2addr v4, v2

    const-wide/high16 v6, -0x3fd2000000000000L    # -15.0

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_81

    .line 885
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    :goto_7f
    move p0, v1

    goto :goto_e5

    .line 887
    :cond_81
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    sub-double/2addr v4, v2

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_e5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_e5

    .line 888
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/feature/setting/qrcode/result/QrCodeResult;

    invoke-virtual {v4}, Lcom/transsion/camera/feature/setting/qrcode/result/QrCodeResult;->getQrCodeRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/feature/setting/qrcode/result/QrCodeResult;

    invoke-virtual {v5}, Lcom/transsion/camera/feature/setting/qrcode/result/QrCodeResult;->getQrCodeRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-lt v4, v5, :cond_e5

    .line 889
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/feature/setting/qrcode/result/QrCodeResult;

    invoke-virtual {v4}, Lcom/transsion/camera/feature/setting/qrcode/result/QrCodeResult;->getQrCodeRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/feature/setting/qrcode/result/QrCodeResult;

    invoke-virtual {v5}, Lcom/transsion/camera/feature/setting/qrcode/result/QrCodeResult;->getQrCodeRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-lt v4, v5, :cond_e5

    .line 890
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_7f

    :cond_e5
    :goto_e5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5e

    :cond_e9
    return p0
.end method

.method private hideBoxView()V
    .registers 3

    .line 1109
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mBoxView:Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x0

    .line 1110
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsShowBoxView:Z

    .line 1111
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mBoxView:Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1112
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz p0, :cond_1c

    const/16 v0, 0x108

    .line 1113
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_1c
    return-void
.end method

.method private hideIcon()V
    .registers 3

    .line 1147
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mMoreIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_29

    .line 1148
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x0

    .line 1149
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mMoreIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->runViewAnim(ZLandroid/view/View;)V

    .line 1150
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz p0, :cond_29

    const/16 v0, 0x116

    .line 1151
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void

    .line 1154
    :cond_1a
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mMoreIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1155
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mMoreIcon:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_29
    return-void
.end method

.method private hidePopWindow()V
    .registers 2

    .line 1255
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 1258
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method private hideToast()V
    .registers 3

    .line 1128
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mToastRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x0

    .line 1129
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mToastRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->runViewAnim(ZLandroid/view/View;)V

    .line 1130
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz p0, :cond_19

    const/16 v0, 0x16e

    .line 1131
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_19
    return-void
.end method

.method private initPopupWindow()V
    .registers 4

    .line 291
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopView:Landroid/view/View;

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    .line 292
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 293
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 294
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/camera/utils/UIUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 295
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/R$drawable;->qrcode_pop_corners_dark:I

    :goto_21
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2b

    :cond_26
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/R$drawable;->qrcode_pop_corners:I

    goto :goto_21

    .line 294
    :goto_2b
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 296
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    sget v1, Lcom/transsion/camera/R$style;->qrcode_pop_window_anim_style:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 297
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method private intentFC(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;)V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1363
    sget-object v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intentFC current type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1364
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-string v0, "android.intent.action.VIEW"

    const/high16 v1, 0x10000000

    if-eqz p1, :cond_f2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_d6

    const-string v3, ":"

    const/4 v4, 0x2

    if-eq p1, v4, :cond_a2

    const/4 v4, 0x3

    if-eq p1, v4, :cond_6c

    const/4 v2, 0x4

    if-eq p1, v2, :cond_68

    const/4 v2, 0x5

    if-eq p1, v2, :cond_4a

    const/4 v2, 0x7

    if-eq p1, v2, :cond_f2

    .line 1406
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    .line 1407
    const-string v0, "text"

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentResult:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p0

    .line 1408
    invoke-virtual {p1, p0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void

    .line 1398
    :cond_4a
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentResult:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->getVcardInfo(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    .line 1399
    const-string v0, "name"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1400
    const-string v1, "tel"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz v0, :cond_67

    if-eqz p1, :cond_67

    .line 1402
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->createContact(Ljava/lang/String;Ljava/lang/String;)V

    :cond_67
    return-void

    .line 1395
    :cond_68
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->connectWifi()V

    return-void

    .line 1381
    :cond_6c
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentResult:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1382
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1383
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    if-le v4, v2, :cond_89

    aget-object p1, p1, v2

    goto :goto_8b

    :cond_89
    const-string p1, ""

    :goto_8b
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1384
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1385
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/CameraUtil;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void

    .line 1373
    :cond_a2
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentResult:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smsto:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1375
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1376
    const-string v0, "sms_body"

    aget-object p1, p1, v4

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1377
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1378
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-static {p0, v2}, Lcom/transsion/camera/utils/CameraUtil;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void

    .line 1388
    :cond_d6
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1389
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentResult:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1390
    const-string v0, "com.google.android.gms"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1391
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1392
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/CameraUtil;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void

    .line 1367
    :cond_f2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1368
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentResult:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1369
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1370
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/CameraUtil;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method

.method private isExceedMinRecognizeSize(Landroid/graphics/Rect;)Z
    .registers 4

    .line 865
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mMinRecognizeSize:I

    if-le v0, v1, :cond_12

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mMinRecognizeSize:I

    if-le p1, p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$doCreateEntryView$0(Landroid/view/View;IIIIIIII)V
    .registers 10

    sub-int/2addr p4, p2

    .line 286
    invoke-direct {p0, p4}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->updatePopWindowContent(I)V

    return-void
.end method

.method private synthetic lambda$initPopupWindow$1()V
    .registers 2

    const/4 v0, 0x1

    .line 304
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mAllowClickMoreIcon:Z

    return-void
.end method

.method private synthetic lambda$initPopupWindow$2()V
    .registers 5

    .line 298
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mUIHandler:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$UIHandler;

    if-eqz v0, :cond_10

    const/16 v1, 0x67

    .line 299
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 300
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mUIHandler:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$UIHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_10
    const/4 v0, 0x0

    .line 302
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mAllowClickMoreIcon:Z

    .line 303
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    check-cast v0, Lcom/transsion/camera/app/common/IAppUI;

    .line 304
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$new$5(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 1540
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, -0x1

    sparse-switch p2, :sswitch_data_40

    goto :goto_2d

    :sswitch_d
    const-string p2, "key_shutter_guide_layout_action"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    goto :goto_2d

    :cond_16
    const/4 v1, 0x2

    goto :goto_2d

    :sswitch_18
    const-string p2, "key_fold_switch_preview"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_21

    goto :goto_2d

    :cond_21
    const/4 v1, 0x1

    goto :goto_2d

    :sswitch_23
    const-string p2, "key_quick_video_action"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c

    goto :goto_2d

    :cond_2c
    move v1, v0

    :goto_2d
    packed-switch v1, :pswitch_data_4e

    return-void

    .line 1548
    :pswitch_31
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->updateSettingUILayout(Z)V

    return-void

    .line 1543
    :pswitch_35
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->doQrcodeViewCLose()V

    const/4 p1, 0x0

    .line 1544
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentResult:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mLastResult:Ljava/lang/String;

    .line 1545
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentCodeType:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    return-void

    :sswitch_data_40
    .sparse-switch
        -0x4e600694 -> :sswitch_23
        -0x341f2c25 -> :sswitch_18
        0x47d8f3b6 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_35
        :pswitch_31
        :pswitch_35
    .end packed-switch
.end method

.method private synthetic lambda$new$6(Landroid/graphics/Rect;)V
    .registers 2

    .line 1556
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsClickCancel:Z

    if-nez p1, :cond_f

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsFilterUIShow:Z

    if-nez p1, :cond_f

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsImageStyleUIShow:Z

    if-nez p1, :cond_f

    .line 1557
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->showToast()V

    .line 1559
    :cond_f
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsFilterUIShow:Z

    if-nez p1, :cond_22

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsImageStyleUIShow:Z

    if-nez p1, :cond_22

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsPopSettingOrZoomBarShow:Z

    if-nez p1, :cond_22

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsZoomUI3Show:Z

    if-nez p1, :cond_22

    .line 1560
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->showIcon()V

    :cond_22
    return-void
.end method

.method private synthetic lambda$updateSettingUILayout$3(Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 5

    .line 777
    const-string v0, "iconProperty"

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 778
    const-string v0, "toastProperty"

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 779
    iget-object p3, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mMoreIcon:Landroid/widget/ImageView;

    invoke-virtual {p3, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 780
    iget-object p3, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mToastRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p3, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 781
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    iget p3, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopViewMarginRight:I

    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v0, p1

    .line 782
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getWidth()I

    move-result p1

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result p0

    .line 781
    invoke-virtual {p2, p3, v0, p1, p0}, Landroid/widget/PopupWindow;->update(IIII)V

    return-void
.end method

.method private synthetic lambda$updateSettingUILayout$4(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 796
    const-string v0, "iconLeftMargin"

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 797
    const-string v0, "iconRightMargin"

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 798
    const-string v0, "iconTopMargin"

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 799
    const-string v0, "iconBottomMargin"

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 800
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mMoreIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private onClicks(Landroid/view/View;)V
    .registers 4

    .line 1290
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 1291
    sget v0, Lcom/transsion/camera/R$id;->qrcode_toast_cancel:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_f

    .line 1292
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsClickCancel:Z

    .line 1293
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->hideToast()V

    return-void

    .line 1294
    :cond_f
    sget v0, Lcom/transsion/camera/R$id;->qrcode_more_icon:I

    if-ne p1, v0, :cond_3b

    .line 1295
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mAllowClickMoreIcon:Z

    if-nez p1, :cond_18

    goto :goto_7c

    .line 1298
    :cond_18
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentCodeType:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    sget-object v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;->TEXT:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_37

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentCodeType:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    sget-object v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;->URI:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d

    goto :goto_37

    .line 1301
    :cond_2d
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentResult:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->getResultType(Ljava/lang/String;)Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->intentFC(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;)V

    return-void

    .line 1299
    :cond_37
    :goto_37
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->showOrHidePopupWindow()V

    return-void

    .line 1303
    :cond_3b
    sget v0, Lcom/transsion/camera/R$id;->qrcode_toast_text_view:I

    if-ne p1, v0, :cond_5f

    .line 1304
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentResult:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->getResultType(Ljava/lang/String;)Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->intentFC(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;)V

    .line 1305
    sget-object p1, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;->TEXT:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentResult:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->getResultType(Ljava/lang/String;)Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7c

    .line 1306
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsClickToast:Z

    .line 1307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCLickToastTime:J

    return-void

    .line 1309
    :cond_5f
    sget v0, Lcom/transsion/camera/R$id;->qrcode_pop_btn_fcf:I

    if-ne p1, v0, :cond_6e

    .line 1310
    sget-object p1, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;->TEXT:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->intentFC(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;)V

    .line 1311
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    .line 1312
    :cond_6e
    sget v0, Lcom/transsion/camera/R$id;->qrcode_pop_btn_fcs:I

    if-ne p1, v0, :cond_7c

    .line 1313
    sget-object p1, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;->URI:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->intentFC(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;)V

    .line 1314
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_7c
    :goto_7c
    return-void
.end method

.method private resetBoxViewRect()V
    .registers 1

    .line 1094
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mBoxView:Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;

    if-eqz p0, :cond_7

    .line 1095
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->resetRect()V

    :cond_7
    return-void
.end method

.method private resetLastQrcodeInfo()V
    .registers 2

    .line 1100
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mLastQRcodeRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1101
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mLastQRcodeRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1103
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mLastResult:Ljava/lang/String;

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    .line 1104
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mLastResult:Ljava/lang/String;

    :cond_14
    return-void
.end method

.method private runViewAnim(ZLandroid/view/View;)V
    .registers 6

    if-nez p2, :cond_3

    return-void

    :cond_3
    if-eqz p1, :cond_8

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 1273
    :goto_9
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->ANIMATOR_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 1274
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$1;-><init>(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;Landroid/view/View;Z)V

    .line 1275
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1286
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private showIcon()V
    .registers 4

    .line 1137
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mMoreIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_36

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_36

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsPopSettingOrZoomBarShow:Z

    if-nez v0, :cond_36

    .line 1138
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mMoreIcon:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->runViewAnim(ZLandroid/view/View;)V

    .line 1139
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentCodeType:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    sget-object v2, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;->TEXT:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentCodeType:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    sget-object v2, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;->URI:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    :cond_2a
    :goto_2a
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->updateIconState(Z)V

    .line 1140
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz p0, :cond_36

    const/16 v0, 0x115

    .line 1141
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_36
    return-void
.end method

.method private showOrHidePopupWindow()V
    .registers 7

    .line 1170
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_5

    return-void

    .line 1173
    :cond_5
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->updatePopView()V

    .line 1174
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->updatePopWindowBtn()V

    .line 1175
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1176
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    .line 1178
    :cond_19
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mUIHandler:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$UIHandler;

    if-eqz v0, :cond_22

    const/16 v1, 0x67

    .line 1179
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1181
    :cond_22
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentResult:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->updatePopWindowResult(Ljava/lang/String;)V

    .line 1182
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v1, 0x4

    const/16 v2, 0x55

    if-ne v0, v1, :cond_4d

    .line 1183
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$dimen;->qrcode_more_icon_left_hover_bottom_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1184
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->qrcode_more_icon_left_hover_right_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1185
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mRootView:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mMoreIcon:Landroid/widget/ImageView;

    .line 1186
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr v1, p0

    .line 1185
    invoke-virtual {v3, v4, v2, v1, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void

    :cond_4d
    const/4 v1, 0x5

    const/16 v3, 0x33

    if-ne v0, v1, :cond_71

    .line 1188
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$dimen;->qrcode_more_icon_right_hover_top_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1189
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->qrcode_more_icon_right_hover_left_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1190
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mRootView:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mMoreIcon:Landroid/widget/ImageView;

    .line 1191
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr v1, p0

    .line 1190
    invoke-virtual {v2, v4, v3, v1, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void

    :cond_71
    const/4 v1, 0x1

    if-ne v0, v1, :cond_102

    .line 1194
    iget v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mOrientation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_e3

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_c2

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_a3

    .line 1216
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$dimen;->qrcode_more_icon_margin_left_expand_0_180:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1217
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->qrcode_more_icon_margin_bottom_expand_0_180:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1218
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mRootView:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mMoreIcon:Landroid/widget/ImageView;

    .line 1219
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr v1, p0

    const/16 p0, 0x53

    .line 1218
    invoke-virtual {v2, v3, p0, v0, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void

    .line 1208
    :cond_a3
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$dimen;->qrcode_more_icon_margin_bottom_expand_90_270:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1209
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->qrcode_more_icon_margin_left_expand_90_270:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1210
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mRootView:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mMoreIcon:Landroid/widget/ImageView;

    .line 1211
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr v0, p0

    .line 1210
    invoke-virtual {v2, v4, v3, v0, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void

    .line 1202
    :cond_c2
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$dimen;->qrcode_more_icon_margin_left_expand_0_180:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1203
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->qrcode_more_icon_margin_bottom_expand_0_180:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1204
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mRootView:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mMoreIcon:Landroid/widget/ImageView;

    .line 1205
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr v1, p0

    const/16 p0, 0x35

    .line 1204
    invoke-virtual {v2, v3, p0, v0, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void

    .line 1196
    :cond_e3
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$dimen;->qrcode_more_icon_margin_bottom_expand_90_270:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1197
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$dimen;->qrcode_more_icon_margin_left_expand_90_270:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1198
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mRootView:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mMoreIcon:Landroid/widget/ImageView;

    .line 1199
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr v0, p0

    .line 1198
    invoke-virtual {v3, v4, v2, v0, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void

    .line 1223
    :cond_102
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mRootView:Landroid/view/View;

    iget v3, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopViewMarginRight:I

    iget-object v4, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    .line 1224
    invoke-interface {v4}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v4

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mMoreIcon:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mMoreIconMarginBottom:I

    add-int/2addr v4, p0

    .line 1223
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method private showToast()V
    .registers 3

    .line 1119
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mToastRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    .line 1120
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mToastRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->runViewAnim(ZLandroid/view/View;)V

    .line 1121
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz p0, :cond_19

    const/16 v0, 0x16d

    .line 1122
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_19
    return-void
.end method

.method private updateBoxViewRect(Landroid/graphics/Rect;Landroid/graphics/Point;)V
    .registers 7

    .line 1072
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7c

    if-nez p2, :cond_b

    goto :goto_7c

    .line 1075
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p2, Landroid/graphics/Point;->y:I

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p2, Landroid/graphics/Point;->x:I

    if-eq v0, v1, :cond_5b

    .line 1076
    :cond_1f
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 1077
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget p2, p2, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    div-float/2addr v1, p2

    .line 1078
    iget p2, p1, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    mul-float/2addr p2, v0

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPreviewRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr p2, v3

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 1079
    iget p2, p1, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    mul-float/2addr p2, v1

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 1080
    iget p2, p1, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    mul-float/2addr v0, p2

    iget p2, v2, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    add-float/2addr v0, p2

    float-to-int p2, v0

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 1081
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    mul-float/2addr p2, v1

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 1083
    :cond_5b
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mBoxView:Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_75

    const/4 p2, 0x1

    .line 1084
    iput-boolean p2, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsShowBoxView:Z

    .line 1085
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mBoxView:Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1086
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz p2, :cond_75

    const/16 v0, 0x107

    .line 1087
    invoke-interface {p2, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1090
    :cond_75
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mBoxView:Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p1, p0}, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->updateRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_7c
    :goto_7c
    return-void
.end method

.method private updateIconState(Z)V
    .registers 2

    if-eqz p1, :cond_a

    .line 1162
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mMoreIcon:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/camera/R$drawable;->ic_qrcode_more_active:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 1164
    :cond_a
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1165
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mMoreIcon:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/camera/R$drawable;->ic_qrcode_more_inactive:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private updatePopSettingUIState(Z)V
    .registers 3

    .line 1530
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsPopSettingOrZoomBarShow:Z

    if-eqz p1, :cond_17

    .line 1532
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mUIHandler:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$UIHandler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1533
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v0, 0x17b

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1534
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->doQrcodeViewCLose()V

    .line 1535
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->resetLastQrcodeInfo()V

    :cond_17
    return-void
.end method

.method private updatePopView()V
    .registers 5

    .line 1238
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopView:Landroid/view/View;

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopWindowResultView:Landroid/widget/TextView;

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mButtonFcF:Landroid/widget/Button;

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mButtonFcS:Landroid/widget/Button;

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopWindowRootLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_15

    goto :goto_7c

    .line 1243
    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/UIUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_20

    sget v0, Lcom/transsion/camera/R$color;->qrcode_pop_window_text_color_dark:I

    goto :goto_22

    :cond_20
    sget v0, Lcom/transsion/camera/R$color;->qrcode_pop_window_text_color:I

    .line 1244
    :goto_22
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/camera/utils/UIUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2d

    sget v1, Lcom/transsion/camera/R$drawable;->qrcode_pop_corners_dark:I

    goto :goto_2f

    :cond_2d
    sget v1, Lcom/transsion/camera/R$drawable;->qrcode_pop_corners:I

    .line 1245
    :goto_2f
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopWindowResultView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1246
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mButtonFcF:Landroid/widget/Button;

    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1247
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mButtonFcS:Landroid/widget/Button;

    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1248
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1249
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mButtonFcF:Landroid/widget/Button;

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1250
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mButtonFcS:Landroid/widget/Button;

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1251
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopWindowRootLayout:Landroid/widget/RelativeLayout;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_7c
    :goto_7c
    return-void
.end method

.method private updatePopWindowBtn()V
    .registers 3

    .line 1230
    sget-object v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;->TEXT:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentCodeType:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1231
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mButtonFcS:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1233
    :cond_12
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mButtonFcS:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updatePopWindowContent(I)V
    .registers 4

    .line 959
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopWindowSplitView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 960
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 961
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopWindowSplitView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 962
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopWindowSplitView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 963
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mButtonFcF:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 964
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 965
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mButtonFcF:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 966
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mButtonFcS:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 967
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 968
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mButtonFcS:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updatePopWindowResult(Ljava/lang/String;)V
    .registers 4

    .line 950
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->getResultType(Ljava/lang/String;)Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    move-result-object v0

    .line 951
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopWindowResultView:Landroid/widget/TextView;

    if-eqz v1, :cond_b

    .line 952
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 954
    :cond_b
    sget-object p1, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;->TEXT:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    sget-object p1, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;->URI:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 p1, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 p1, 0x1

    :goto_1f
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->updateIconState(Z)V

    .line 955
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->updatePopWindowBtn()V

    return-void
.end method

.method private updateResult(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/setting/qrcode/result/QrCodeResult;",
            ">;)V"
        }
    .end annotation

    .line 833
    sget-object v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateResult results: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 834
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v1, v2, :cond_4a

    .line 835
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->handleMultipleQrCode(Ljava/util/List;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6e

    .line 837
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/setting/qrcode/result/QrCodeResult;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/qrcode/result/QrCodeResult;->getQrCodeResult()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentResult:Ljava/lang/String;

    .line 838
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/setting/qrcode/result/QrCodeResult;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/qrcode/result/QrCodeResult;->getImageSize()Landroid/graphics/Point;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentImageSize:Landroid/graphics/Point;

    .line 839
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/setting/qrcode/result/QrCodeResult;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/qrcode/result/QrCodeResult;->getQrCodeRect()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentQRcodeRect:Landroid/graphics/Rect;

    goto :goto_6e

    .line 842
    :cond_4a
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/setting/qrcode/result/QrCodeResult;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/qrcode/result/QrCodeResult;->getQrCodeResult()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentResult:Ljava/lang/String;

    .line 843
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/setting/qrcode/result/QrCodeResult;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/qrcode/result/QrCodeResult;->getImageSize()Landroid/graphics/Point;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentImageSize:Landroid/graphics/Point;

    .line 844
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/setting/qrcode/result/QrCodeResult;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/qrcode/result/QrCodeResult;->getQrCodeRect()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentQRcodeRect:Landroid/graphics/Rect;

    .line 846
    :cond_6e
    :goto_6e
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentResult:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->getResultType(Ljava/lang/String;)Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentCodeType:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    .line 847
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentQRcodeRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->isExceedMinRecognizeSize(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_82

    .line 848
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->doQrcodeViewCLose()V

    return-void

    .line 851
    :cond_82
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 852
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentCodeType:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->updateToastText(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;)V

    .line 853
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentResult:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->updatePopWindowResult(Ljava/lang/String;)V

    .line 854
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mLastResult:Ljava/lang/String;

    if-nez p1, :cond_9d

    .line 855
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsClickCancel:Z

    .line 856
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentResult:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mLastResult:Ljava/lang/String;

    .line 857
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentQRcodeRect:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mLastQRcodeRect:Landroid/graphics/Rect;

    .line 859
    :cond_9d
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentQRcodeRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentImageSize:Landroid/graphics/Point;

    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->updateBoxViewRect(Landroid/graphics/Rect;Landroid/graphics/Point;)V

    .line 860
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateResult LastQrCodeRect: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mLastQRcodeRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPreviewRect: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " , CurrentQrCodeRect: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentQRcodeRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentImageSize: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentImageSize:Landroid/graphics/Point;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateToastText(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;)V
    .registers 9

    .line 899
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mToastTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_15d

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentResult:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_15d

    .line 904
    :cond_e
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-string v0, ";"

    const-string v1, "S:"

    const/4 v2, 0x1

    const-string v3, ": "

    if-eqz p1, :cond_d1

    if-eq p1, v2, :cond_d1

    const/4 v4, 0x3

    if-eq p1, v4, :cond_a5

    const/4 v4, 0x4

    if-eq p1, v4, :cond_71

    const/4 v4, 0x5

    if-eq p1, v4, :cond_52

    const/4 v4, 0x7

    if-eq p1, v4, :cond_48

    .line 934
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$string;->qrcode_copy_function_title:I

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 935
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentResult:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_109

    .line 931
    :cond_48
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$string;->qrcode_fido_function_title:I

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_109

    .line 927
    :cond_52
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$string;->qrcode_create_function_title:I

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 928
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentResult:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_109

    .line 922
    :cond_71
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentResult:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentResult:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 923
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/R$string;->qrcode_join_function_title:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 924
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_109

    .line 917
    :cond_a5
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentResult:Ljava/lang/String;

    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 918
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/R$string;->qrcode_call_function_title:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 919
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, p1

    if-le v6, v2, :cond_c3

    aget-object p1, p1, v2

    goto :goto_c5

    :cond_c3
    const-string p1, ""

    :goto_c5
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_109

    .line 908
    :cond_d1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$string;->qrcode_open_function_title:I

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 910
    :try_start_d9
    new-instance v4, Ljava/net/URI;

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentResult:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4
    :try_end_e4
    .catch Ljava/net/URISyntaxException; {:try_start_d9 .. :try_end_e4} :catch_e5

    goto :goto_ee

    :catch_e5
    move-exception v4

    .line 912
    sget-object v5, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v6, "Illegal URI!"

    invoke-static {v5, v6, v4}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v4, 0x0

    .line 914
    :goto_ee
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_fe

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentResult:Ljava/lang/String;

    :cond_fe
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 938
    :goto_109
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v4

    if-ne v4, v2, :cond_158

    .line 939
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentResult:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->getResultType(Ljava/lang/String;)Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    move-result-object v2

    sget-object v4, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;->WIFI:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    if-ne v2, v4, :cond_158

    .line 940
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentResult:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentResult:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 941
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 942
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$string;->qrcode_join_function_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 943
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 946
    :cond_158
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mToastTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_15d
    :goto_15d
    return-void
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 265
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    .line 266
    sget v0, Lcom/transsion/camera/R$layout;->qrcode_pop_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopView:Landroid/view/View;

    .line 267
    sget v0, Lcom/transsion/camera/R$layout;->qrcode_root_layout:I

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mRootView:Landroid/view/View;

    .line 268
    sget p2, Lcom/transsion/camera/R$id;->qrcode_box_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mBoxView:Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;

    .line 269
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mRootView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->qrcode_more_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mMoreIcon:Landroid/widget/ImageView;

    .line 270
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mRootView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->qrcode_toast_rotate_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mToastRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 271
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mRootView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->qrcode_toast_text_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mToastTextView:Landroid/widget/TextView;

    .line 272
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mRootView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->qrcode_toast_cancel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mToastCancelView:Landroid/widget/ImageView;

    .line 273
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->qrcode_pop_btn_fcf:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mButtonFcF:Landroid/widget/Button;

    .line 274
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->qrcode_pop_btn_fcs:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mButtonFcS:Landroid/widget/Button;

    .line 275
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->qrcode_pop_text_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopWindowResultView:Landroid/widget/TextView;

    .line 276
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->qrcode_pop_split_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopWindowSplitView:Landroid/widget/ImageView;

    .line 277
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopView:Landroid/view/View;

    sget p2, Lcom/transsion/camera/R$id;->qrcode_pop_root_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopWindowRootLayout:Landroid/widget/RelativeLayout;

    .line 278
    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/transsion/camera/utils/UIUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_9e

    .line 279
    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/R$drawable;->qrcode_pop_corners_dark:I

    :goto_99
    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_a3

    :cond_9e
    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/R$drawable;->qrcode_pop_corners:I

    goto :goto_99

    .line 278
    :goto_a3
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 280
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mBoxView:Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIQrCodeToastCallback:Lcom/transsion/camera/ui/setting/qrcode/IQrCodeToastCallback;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->setDrawRectCallBack(Lcom/transsion/camera/ui/setting/qrcode/IQrCodeToastCallback;)V

    .line 281
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mMoreIcon:Landroid/widget/ImageView;

    new-instance p2, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mButtonFcF:Landroid/widget/Button;

    new-instance p2, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mButtonFcS:Landroid/widget/Button;

    new-instance p2, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mToastTextView:Landroid/widget/TextView;

    new-instance p2, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mToastCancelView:Landroid/widget/ImageView;

    new-instance p2, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopWindowRootLayout:Landroid/widget/RelativeLayout;

    new-instance p2, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 287
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 357
    const-string p0, "key_setting_qrcode"

    return-object p0
.end method

.method protected getMoreIconMargins(II)Landroid/graphics/Rect;
    .registers 3

    .line 596
    new-instance p0, Landroid/graphics/Rect;

    const p1, 0x7fffffff

    invoke-direct {p0, p1, p1, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 362
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 365
    :cond_6
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
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

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_1c2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1bd

    const/4 v3, 0x4

    if-eq p1, v3, :cond_1c2

    const/4 v3, 0x5

    if-eq p1, v3, :cond_1bd

    const/16 v3, 0x19

    if-eq p1, v3, :cond_1aa

    const/16 v3, 0x1a

    if-eq p1, v3, :cond_17d

    const/16 v3, 0x24

    if-eq p1, v3, :cond_1c2

    const/16 v3, 0x25

    if-eq p1, v3, :cond_1bd

    const/16 v3, 0x30

    if-eq p1, v3, :cond_16d

    const/16 v3, 0x31

    if-eq p1, v3, :cond_143

    const/16 v3, 0x6a

    .line 397
    const-string v4, "key_setting_fragment_notify_ui"

    if-eq p1, v3, :cond_131

    const/16 v3, 0x6b

    if-eq p1, v3, :cond_12a

    const/16 v3, 0x6e

    if-eq p1, v3, :cond_1c2

    const/16 v3, 0x6f

    if-eq p1, v3, :cond_1bd

    const/16 v3, 0xcf

    if-eq p1, v3, :cond_126

    const/16 v3, 0xd0

    if-eq p1, v3, :cond_198

    sparse-switch p1, :sswitch_data_1d0

    packed-switch p1, :pswitch_data_232

    goto/16 :goto_1bc

    .line 406
    :pswitch_47
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mAllowUpdateResult:Z

    .line 407
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    const-string p1, "end"

    invoke-virtual {p0, v4, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 500
    :sswitch_51
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsCelebritySceneUIShow:Z

    .line 501
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_61

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsCLickPopSettingUIBackIcon:Z

    if-nez p1, :cond_61

    .line 502
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->updatePopSettingUIState(Z)V

    goto :goto_74

    .line 503
    :cond_61
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mToastRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_74

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsFilterUIShow:Z

    if-nez p1, :cond_74

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsImageStyleUIShow:Z

    if-nez p1, :cond_74

    .line 505
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->showIcon()V

    .line 507
    :cond_74
    :goto_74
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsCLickPopSettingUIBackIcon:Z

    return-void

    .line 472
    :sswitch_77
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsCelebritySceneUIShow:Z

    .line 473
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_83

    .line 474
    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->updatePopSettingUIState(Z)V

    return-void

    .line 476
    :cond_83
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->hideIcon()V

    return-void

    .line 563
    :sswitch_87
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_91

    .line 564
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->updatePopSettingUIState(Z)V

    return-void

    .line 565
    :cond_91
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mToastRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1bc

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsFilterUIShow:Z

    if-nez p1, :cond_1bc

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsImageStyleUIShow:Z

    if-nez p1, :cond_1bc

    .line 567
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->showIcon()V

    return-void

    .line 556
    :sswitch_a5
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_af

    .line 557
    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->updatePopSettingUIState(Z)V

    return-void

    .line 559
    :cond_af
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->hideIcon()V

    return-void

    .line 553
    :sswitch_b3
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsCLickPopSettingUIBackIcon:Z

    return-void

    .line 522
    :sswitch_b6
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsAutoMacroSwitchShowing:Z

    .line 523
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->updateSettingUILayout(Z)V

    return-void

    .line 518
    :sswitch_bc
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsAutoMacroSwitchShowing:Z

    .line 519
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->updateSettingUILayout(Z)V

    return-void

    .line 514
    :sswitch_c2
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsSuperNightLiteSwitchShowing:Z

    .line 515
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->updateSettingUILayout(Z)V

    return-void

    .line 510
    :sswitch_c8
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsSuperNightLiteSwitchShowing:Z

    .line 511
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->updateSettingUILayout(Z)V

    return-void

    .line 490
    :sswitch_ce
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsImageStyleUIShow:Z

    .line 491
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_de

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsCLickPopSettingUIBackIcon:Z

    if-nez p1, :cond_de

    .line 492
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->updatePopSettingUIState(Z)V

    goto :goto_f1

    .line 493
    :cond_de
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mToastRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_f1

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsFilterUIShow:Z

    if-nez p1, :cond_f1

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsCelebritySceneUIShow:Z

    if-nez p1, :cond_f1

    .line 495
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->showIcon()V

    .line 497
    :cond_f1
    :goto_f1
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsCLickPopSettingUIBackIcon:Z

    return-void

    .line 464
    :sswitch_f4
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsImageStyleUIShow:Z

    .line 465
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_100

    .line 466
    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->updatePopSettingUIState(Z)V

    return-void

    .line 468
    :cond_100
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->hideIcon()V

    return-void

    .line 437
    :sswitch_104
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsPause:Z

    .line 438
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mAllowUpdateResult:Z

    .line 439
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsZoomUI3Show:Z

    return-void

    .line 410
    :sswitch_10b
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsPause:Z

    .line 411
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsFilterUIShow:Z

    .line 412
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsZoomUI3Show:Z

    .line 413
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsImageStyleUIShow:Z

    .line 414
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsCLickPopSettingUIBackIcon:Z

    .line 415
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->updatePopSettingUIState(Z)V

    .line 416
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mAllowUpdateResult:Z

    .line 417
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mUIHandler:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$UIHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 418
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->doQrcodeViewCLose()V

    .line 419
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->resetLastQrcodeInfo()V

    return-void

    .line 533
    :cond_126
    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->updatePopSettingUIState(Z)V

    return-void

    .line 549
    :cond_12a
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->hideIcon()V

    .line 550
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->hidePopWindow()V

    return-void

    .line 400
    :cond_131
    :pswitch_131
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mAllowUpdateResult:Z

    .line 401
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mUIHandler:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$UIHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 402
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->doQrcodeViewCLose()V

    .line 403
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    const-string p1, "begin"

    invoke-virtual {p0, v4, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 480
    :cond_143
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsFilterUIShow:Z

    .line 481
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_153

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsCLickPopSettingUIBackIcon:Z

    if-nez p1, :cond_153

    .line 482
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->updatePopSettingUIState(Z)V

    goto :goto_16a

    .line 483
    :cond_153
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mToastRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_16a

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsImageStyleUIShow:Z

    if-nez p1, :cond_16a

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsPause:Z

    if-nez p1, :cond_16a

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsCelebritySceneUIShow:Z

    if-nez p1, :cond_16a

    .line 485
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->showIcon()V

    .line 487
    :cond_16a
    :goto_16a
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsCLickPopSettingUIBackIcon:Z

    return-void

    .line 456
    :cond_16d
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsFilterUIShow:Z

    .line 457
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_179

    .line 458
    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->updatePopSettingUIState(Z)V

    return-void

    .line 460
    :cond_179
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->hideIcon()V

    return-void

    .line 536
    :cond_17d
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-nez p1, :cond_198

    .line 537
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsZoomUI3Show:Z

    .line 538
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mToastRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_198

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsFilterUIShow:Z

    if-nez p1, :cond_198

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsImageStyleUIShow:Z

    if-nez p1, :cond_198

    .line 540
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->showIcon()V

    .line 544
    :cond_198
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_1a6

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsImageStyleUIShow:Z

    if-eqz p1, :cond_1a6

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsFilterUIShow:Z

    if-nez p1, :cond_1bc

    .line 545
    :cond_1a6
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->updatePopSettingUIState(Z)V

    return-void

    .line 526
    :cond_1aa
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->updatePopSettingUIState(Z)V

    .line 527
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-nez p1, :cond_1bc

    .line 528
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsZoomUI3Show:Z

    .line 529
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->hideIcon()V

    :cond_1bc
    :goto_1bc
    return-void

    .line 452
    :cond_1bd
    :pswitch_1bd
    :sswitch_1bd
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mAllowUpdateResult:Z

    .line 453
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mIsZoomUI3Show:Z

    return-void

    .line 431
    :cond_1c2
    :pswitch_1c2
    :sswitch_1c2
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mAllowUpdateResult:Z

    .line 432
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mUIHandler:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$UIHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 433
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->doQrcodeViewCLose()V

    .line 434
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->resetLastQrcodeInfo()V

    return-void

    :sswitch_data_1d0
    .sparse-switch
        0xb -> :sswitch_1c2
        0xc -> :sswitch_1bd
        0xd -> :sswitch_1c2
        0xe -> :sswitch_1bd
        0x1c -> :sswitch_10b
        0x20 -> :sswitch_104
        0x36 -> :sswitch_1bd
        0xd2 -> :sswitch_1c2
        0xd3 -> :sswitch_1bd
        0xe9 -> :sswitch_1c2
        0xea -> :sswitch_1bd
        0xf2 -> :sswitch_f4
        0xf3 -> :sswitch_ce
        0x127 -> :sswitch_c8
        0x128 -> :sswitch_c2
        0x129 -> :sswitch_bc
        0x12a -> :sswitch_b6
        0x14a -> :sswitch_b3
        0x157 -> :sswitch_1c2
        0x158 -> :sswitch_1bd
        0x16b -> :sswitch_a5
        0x16c -> :sswitch_87
        0x183 -> :sswitch_77
        0x184 -> :sswitch_51
    .end sparse-switch

    :pswitch_data_232
    .packed-switch 0x11
        :pswitch_131
        :pswitch_47
        :pswitch_1c2
        :pswitch_1bd
    .end packed-switch
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 4

    .line 325
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onOrientationChanged(I)V

    .line 326
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 327
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 328
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 331
    :cond_15
    iput p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mOrientation:I

    const/4 p1, 0x0

    .line 332
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->updateSettingUILayout(Z)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 337
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onScreenFormChanged(IZ)V

    .line 338
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_18

    .line 339
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 340
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_18
    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public setAeAfLock(Lcom/transsion/camera/app/common/mode/IAeAfLock;)V
    .registers 2

    .line 352
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mAeAfLock:Lcom/transsion/camera/app/common/mode/IAeAfLock;

    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .registers 2

    .line 391
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 392
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 3

    .line 371
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_b

    .line 373
    sget-object p1, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mDeviceSetting is null!"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 375
    :cond_b
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mQRcodeSettingCallBack:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QRcodeSettingCallback;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

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
    .registers 4

    .line 380
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_27

    .line 382
    const-string v0, "key_setting_fragment_notify_ui"

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mStatusResponder:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    .line 383
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_quick_video_action"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 384
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_fold_switch_preview"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 385
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_shutter_guide_layout_action"

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_27
    return-void
.end method

.method public setupEntryView()V
    .registers 1

    .line 310
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->initPopupWindow()V

    .line 311
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setupEntryView()V

    return-void
.end method

.method public unInit()V
    .registers 4

    .line 577
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    const-wide/16 v0, 0x0

    .line 578
    iput-wide v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCLickToastTime:J

    const/4 v0, 0x0

    .line 579
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCurrentResult:Ljava/lang/String;

    .line 580
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mUIHandler:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$UIHandler;

    if-eqz v1, :cond_11

    .line 581
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 583
    :cond_11
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->doQrcodeViewCLose()V

    .line 584
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->resetBoxViewRect()V

    .line 585
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->resetLastQrcodeInfo()V

    .line 586
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mBoxView:Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->unInit()V

    .line 587
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_3c

    .line 588
    const-string v1, "key_quick_video_action"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 589
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_fold_switch_preview"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 590
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_shutter_guide_layout_action"

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_3c
    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 5

    .line 316
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPreviewRect:Landroid/graphics/Rect;

    .line 317
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mCenterPoint:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Point;->set(II)V

    .line 318
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mInitialPoint:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 319
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mToastRootLayoutMarginBottom:I

    add-int/2addr v1, v2

    iget p0, p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mToastRootLayoutHeight:I

    add-int/2addr v1, p0

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Point;->y:I

    return-void
.end method

.method protected updateSettingUILayout(Z)V
    .registers 19

    move-object/from16 v0, p0

    .line 601
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v1}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 603
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mMoreIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_4a1

    iget-object v2, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mToastRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v2, :cond_4a1

    iget-object v2, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopView:Landroid/view/View;

    if-nez v2, :cond_15

    goto/16 :goto_4a1

    .line 606
    :cond_15
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x55

    .line 607
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 608
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mToastRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 609
    iget-object v4, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v5, "key_fold_switch_preview"

    invoke-interface {v4, v5}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 611
    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 612
    iget v6, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 613
    iget v7, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 614
    iget v8, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 615
    iget v9, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const v10, 0x800055

    .line 621
    iput v10, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v10, 0x0

    .line 622
    invoke-virtual {v3, v10, v10, v10, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 623
    invoke-virtual {v1, v10, v10, v10, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 624
    iget-object v11, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mMoreIcon:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setRotation(F)V

    .line 625
    iget-object v11, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopView:Landroid/view/View;

    invoke-virtual {v11, v12}, Landroid/view/View;->setRotation(F)V

    .line 626
    iget v11, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    iget v12, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mOrientation:I

    invoke-virtual {v0, v11, v12}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->getMoreIconMargins(II)Landroid/graphics/Rect;

    move-result-object v11

    .line 627
    iget v12, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/16 v13, 0x51

    const/16 v14, 0x53

    const/16 v15, 0x10e

    const/16 v10, 0x5a

    if-eqz v12, :cond_37f

    const/4 v2, 0x2

    if-ne v12, v2, :cond_69

    goto/16 :goto_37f

    :cond_69
    const/4 v2, 0x1

    if-ne v12, v2, :cond_1f2

    .line 651
    iget v4, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mOrientation:I

    const/16 v12, 0xb4

    if-eq v4, v10, :cond_16a

    if-eq v4, v12, :cond_11c

    if-eq v4, v15, :cond_c3

    .line 690
    iput v14, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 691
    iget-object v4, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/transsion/camera/R$dimen;->qrcode_more_icon_margin_left_expand_0_180:I

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 692
    iget-object v14, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$dimen;->qrcode_more_icon_margin_bottom_expand_0_180:I

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 693
    invoke-direct {v0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->getMarginOffsetInExpandForm()I

    move-result v14

    sub-int/2addr v2, v14

    .line 694
    iget-object v14, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mMoreIcon:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-nez v14, :cond_9a

    if-eq v2, v6, :cond_9a

    const/16 v16, 0x1

    goto :goto_9c

    :cond_9a
    const/16 v16, 0x0

    .line 695
    :goto_9c
    iget v14, v11, Landroid/graphics/Rect;->bottom:I

    if-eqz v16, :cond_a2

    move v12, v6

    goto :goto_a3

    :cond_a2
    move v12, v2

    :goto_a3
    invoke-static {v14, v12}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v12

    iput v12, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 696
    iget v11, v11, Landroid/graphics/Rect;->left:I

    invoke-static {v11, v4}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v11

    iput v11, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 697
    iput v13, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 698
    iget-object v11, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v12, Lcom/transsion/camera/R$dimen;->qrcode_toast_root_layout_margin_bottom_vertical_expand:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move v12, v4

    const/4 v11, 0x0

    move v4, v2

    const/4 v2, 0x0

    goto/16 :goto_1c2

    :cond_c3
    const/16 v2, 0x33

    .line 676
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 677
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->qrcode_more_icon_margin_bottom_expand_90_270:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 678
    invoke-direct {v0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->getMarginOffsetInExpandForm()I

    move-result v4

    sub-int v4, v2, v4

    .line 679
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v12, Lcom/transsion/camera/R$dimen;->qrcode_more_icon_margin_left_expand_90_270:I

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 680
    iget-object v12, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mMoreIcon:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_ea

    if-eq v4, v7, :cond_ea

    const/16 v16, 0x1

    goto :goto_ec

    :cond_ea
    const/16 v16, 0x0

    .line 681
    :goto_ec
    iget v12, v11, Landroid/graphics/Rect;->left:I

    if-eqz v16, :cond_f2

    move v13, v7

    goto :goto_f3

    :cond_f2
    move v13, v4

    :goto_f3
    invoke-static {v12, v13}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v12

    iput v12, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 682
    iget v11, v11, Landroid/graphics/Rect;->top:I

    invoke-static {v11, v2}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v11

    iput v11, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 683
    iput v14, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 684
    iget-object v11, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v12, Lcom/transsion/camera/R$dimen;->qrcode_toast_root_layout_margin_left_horizontal_expand:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 685
    iget-object v11, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v12, Lcom/transsion/camera/R$dimen;->qrcode_toast_root_layout_margin_bottom_horizontal_expand:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move v12, v4

    const/4 v4, 0x0

    const/4 v11, 0x0

    goto/16 :goto_1c2

    :cond_11c
    const/16 v2, 0x35

    .line 665
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 666
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->qrcode_more_icon_margin_left_expand_0_180:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 667
    iget-object v4, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v12, Lcom/transsion/camera/R$dimen;->qrcode_more_icon_margin_bottom_expand_0_180:I

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 668
    invoke-direct {v0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->getMarginOffsetInExpandForm()I

    move-result v12

    sub-int/2addr v4, v12

    .line 669
    iget-object v12, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mMoreIcon:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_142

    if-eq v4, v5, :cond_142

    const/16 v16, 0x1

    goto :goto_144

    :cond_142
    const/16 v16, 0x0

    .line 670
    :goto_144
    iget v12, v11, Landroid/graphics/Rect;->top:I

    if-eqz v16, :cond_14a

    move v14, v5

    goto :goto_14b

    :cond_14a
    move v14, v4

    :goto_14b
    invoke-static {v12, v14}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v12

    iput v12, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 671
    iget v11, v11, Landroid/graphics/Rect;->right:I

    invoke-static {v11, v2}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v11

    iput v11, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 672
    iput v13, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 673
    iget-object v11, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v12, Lcom/transsion/camera/R$dimen;->qrcode_toast_root_layout_margin_bottom_vertical_expand:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move v11, v2

    move v2, v4

    const/4 v4, 0x0

    :goto_168
    const/4 v12, 0x0

    goto :goto_1c2

    :cond_16a
    const/16 v2, 0x55

    .line 653
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 654
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$dimen;->qrcode_more_icon_margin_bottom_expand_90_270:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 655
    invoke-direct {v0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->getMarginOffsetInExpandForm()I

    move-result v4

    sub-int/2addr v2, v4

    .line 656
    iget-object v4, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v12, Lcom/transsion/camera/R$dimen;->qrcode_more_icon_margin_left_expand_90_270:I

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 657
    iget-object v12, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mMoreIcon:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_190

    if-eq v2, v8, :cond_190

    const/16 v16, 0x1

    goto :goto_192

    :cond_190
    const/16 v16, 0x0

    .line 658
    :goto_192
    iget v12, v11, Landroid/graphics/Rect;->right:I

    if-eqz v16, :cond_198

    move v13, v8

    goto :goto_199

    :cond_198
    move v13, v2

    :goto_199
    invoke-static {v12, v13}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v12

    iput v12, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 659
    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    invoke-static {v11, v4}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v11

    iput v11, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/16 v11, 0x55

    .line 660
    iput v11, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 661
    iget-object v11, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v12, Lcom/transsion/camera/R$dimen;->qrcode_toast_root_layout_margin_right_horizontal_expand:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 662
    iget-object v11, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v12, Lcom/transsion/camera/R$dimen;->qrcode_toast_root_layout_margin_bottom_horizontal_expand:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move v11, v2

    const/4 v2, 0x0

    goto :goto_168

    .line 701
    :goto_1c2
    iget v13, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mOrientation:I

    if-eq v13, v10, :cond_1d8

    if-ne v13, v15, :cond_1c9

    goto :goto_1d8

    .line 705
    :cond_1c9
    iget-object v10, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mMoreIcon:Landroid/widget/ImageView;

    int-to-float v13, v13

    invoke-virtual {v10, v13}, Landroid/view/View;->setRotation(F)V

    .line 706
    iget-object v10, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopView:Landroid/view/View;

    iget v13, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mOrientation:I

    int-to-float v13, v13

    invoke-virtual {v10, v13}, Landroid/view/View;->setRotation(F)V

    goto :goto_1ee

    .line 702
    :cond_1d8
    :goto_1d8
    iget-object v10, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mMoreIcon:Landroid/widget/ImageView;

    const/16 v14, 0xb4

    add-int/2addr v13, v14

    rem-int/lit16 v13, v13, 0x168

    int-to-float v13, v13

    invoke-virtual {v10, v13}, Landroid/view/View;->setRotation(F)V

    .line 703
    iget-object v10, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopView:Landroid/view/View;

    iget v13, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mOrientation:I

    add-int/2addr v13, v14

    rem-int/lit16 v13, v13, 0x168

    int-to-float v13, v13

    invoke-virtual {v10, v13}, Landroid/view/View;->setRotation(F)V

    :goto_1ee
    move v10, v4

    const/4 v4, 0x0

    goto/16 :goto_3e5

    :cond_1f2
    const/4 v2, 0x3

    .line 708
    const-string v14, "on"

    if-ne v12, v2, :cond_2a9

    .line 709
    iget v2, v11, Landroid/graphics/Rect;->bottom:I

    iget-object v12, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    .line 710
    invoke-interface {v12}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v12

    iget-object v13, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v15, Lcom/transsion/camera/R$dimen;->qrcode_more_icon_bottom_margin_hover:I

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    add-int/2addr v12, v13

    .line 709
    invoke-static {v2, v12}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 711
    iget v2, v11, Landroid/graphics/Rect;->right:I

    iget-object v11, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v12, Lcom/transsion/camera/R$dimen;->qrcode_more_icon_margin_right:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    invoke-static {v2, v11}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 712
    iget v2, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mOrientation:I

    if-eq v2, v10, :cond_274

    const/16 v10, 0x10e

    if-eq v2, v10, :cond_24b

    const/16 v2, 0x51

    .line 732
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 733
    iget-object v2, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v2

    .line 734
    invoke-static {v4, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_23f

    .line 735
    iget-object v4, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$dimen;->qrcode_toast_root_layout_margin_bottom_vertical_hover_switch:I

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_247

    .line 736
    :cond_23f
    iget-object v4, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$dimen;->qrcode_toast_root_layout_margin_bottom_vertical_hover:I

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :goto_247
    add-int/2addr v2, v4

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_29c

    :cond_24b
    const/16 v2, 0x53

    .line 722
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 723
    iget v2, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mToastRootLayoutMarginLeft:I

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 724
    iget-object v2, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v2

    .line 725
    invoke-static {v4, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_268

    .line 726
    iget-object v4, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$dimen;->qrcode_toast_root_layout_margin_bottom_horizontal_hover_switch:I

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_270

    .line 727
    :cond_268
    iget-object v4, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$dimen;->qrcode_toast_root_layout_margin_bottom_horizontal_hover:I

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :goto_270
    add-int/2addr v2, v4

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_29c

    :cond_274
    const/16 v2, 0x55

    .line 714
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 715
    iget v2, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mToastRootLayoutMarginRight:I

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 716
    iget-object v2, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v2

    .line 717
    invoke-static {v4, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_291

    .line 718
    iget-object v4, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$dimen;->qrcode_toast_root_layout_margin_bottom_horizontal_hover_switch:I

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_299

    .line 719
    :cond_291
    iget-object v4, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$dimen;->qrcode_toast_root_layout_margin_bottom_horizontal_hover:I

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :goto_299
    add-int/2addr v2, v4

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 739
    :goto_29c
    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 740
    iget v2, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_2a0
    move v10, v4

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    move v4, v2

    :goto_2a6
    const/4 v2, 0x0

    goto/16 :goto_3e5

    :cond_2a9
    const/4 v2, 0x4

    if-ne v12, v2, :cond_30e

    .line 742
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$dimen;->qrcode_more_icon_left_hover_bottom_margin:I

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 743
    iget-object v10, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v12, Lcom/transsion/camera/R$dimen;->qrcode_more_icon_left_hover_right_margin:I

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 744
    invoke-direct {v0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->getMarginOffsetInHoverForm()I

    move-result v12

    sub-int/2addr v10, v12

    .line 745
    iget-object v12, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mMoreIcon:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_2ce

    if-eq v10, v8, :cond_2ce

    const/16 v16, 0x1

    goto :goto_2d0

    :cond_2ce
    const/16 v16, 0x0

    .line 747
    :goto_2d0
    iget v12, v11, Landroid/graphics/Rect;->bottom:I

    invoke-static {v12, v2}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v12

    iput v12, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 748
    iget v11, v11, Landroid/graphics/Rect;->right:I

    if-eqz v16, :cond_2de

    move v12, v8

    goto :goto_2df

    :cond_2de
    move v12, v10

    :goto_2df
    invoke-static {v11, v12}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v11

    iput v11, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/16 v11, 0x15

    .line 749
    iput v11, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 750
    invoke-static {v4, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2f8

    .line 751
    iget-object v4, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v11, Lcom/transsion/camera/R$dimen;->qrcode_toast_root_layout_right_margin_left_hover:I

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_300

    .line 752
    :cond_2f8
    iget-object v4, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v11, Lcom/transsion/camera/R$dimen;->qrcode_toast_root_layout_right_margin_left_hover_switch:I

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :goto_300
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 753
    iget-object v4, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopView:Landroid/view/View;

    const/high16 v11, 0x43870000    # 270.0f

    invoke-virtual {v4, v11}, Landroid/view/View;->setRotation(F)V

    move v11, v10

    const/4 v4, 0x0

    const/4 v12, 0x0

    move v10, v2

    goto :goto_2a6

    :cond_30e
    const/4 v2, 0x5

    if-ne v12, v2, :cond_377

    const/16 v2, 0x33

    .line 755
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 756
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$dimen;->qrcode_more_icon_right_hover_top_margin:I

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 757
    iget-object v10, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v12, Lcom/transsion/camera/R$dimen;->qrcode_more_icon_right_hover_left_margin:I

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 758
    invoke-direct {v0}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->getMarginOffsetInHoverForm()I

    move-result v12

    sub-int v12, v10, v12

    .line 759
    iget-object v10, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mMoreIcon:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_338

    if-eq v12, v7, :cond_338

    const/16 v16, 0x1

    goto :goto_33a

    :cond_338
    const/16 v16, 0x0

    .line 761
    :goto_33a
    iget v10, v11, Landroid/graphics/Rect;->left:I

    if-eqz v16, :cond_340

    move v13, v7

    goto :goto_341

    :cond_340
    move v13, v12

    :goto_341
    invoke-static {v10, v13}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v10

    iput v10, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 762
    iget v10, v11, Landroid/graphics/Rect;->top:I

    invoke-static {v10, v2}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v10

    iput v10, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/16 v10, 0x13

    .line 763
    iput v10, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 764
    invoke-static {v4, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_362

    .line 765
    iget-object v4, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$dimen;->qrcode_toast_root_layout_left_margin_right_hover_switch:I

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_36a

    .line 766
    :cond_362
    iget-object v4, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/transsion/camera/R$dimen;->qrcode_toast_root_layout_left_margin_right_hover:I

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :goto_36a
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 767
    iget-object v4, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopView:Landroid/view/View;

    const/high16 v10, 0x42b40000    # 90.0f

    invoke-virtual {v4, v10}, Landroid/view/View;->setRotation(F)V

    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto :goto_3e5

    :cond_377
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    goto :goto_3e5

    .line 629
    :cond_37f
    :goto_37f
    iget v2, v11, Landroid/graphics/Rect;->right:I

    iget-object v4, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mResources:Landroid/content/res/Resources;

    sget v12, Lcom/transsion/camera/R$dimen;->qrcode_more_icon_margin_right:I

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {v2, v4}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 630
    iget v2, v11, Landroid/graphics/Rect;->bottom:I

    iget-object v4, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v4

    iget v11, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mMoreIconMarginBottom:I

    add-int/2addr v4, v11

    invoke-static {v2, v4}, Lcom/transsion/camera/utils/UIUtils;->getMarginFromRect(II)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 631
    iget v2, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mOrientation:I

    if-eq v2, v10, :cond_3cc

    const/16 v10, 0x10e

    if-eq v2, v10, :cond_3b8

    const/16 v2, 0x51

    .line 644
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 645
    iget-object v2, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v2

    iget v4, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mToastRootLayoutMarginBottom:I

    add-int/2addr v2, v4

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_3df

    :cond_3b8
    const/16 v2, 0x53

    .line 638
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 639
    iget v2, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mToastRootLayoutMarginLeft:I

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 640
    iget-object v2, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v2

    iget v4, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mToastRootLayoutHorizontalMarginBottom:I

    add-int/2addr v2, v4

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_3df

    :cond_3cc
    const/16 v2, 0x55

    .line 633
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 634
    iget v2, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mToastRootLayoutMarginRight:I

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 635
    iget-object v2, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v2

    iget v4, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mToastRootLayoutHorizontalMarginBottom:I

    add-int/2addr v2, v4

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 648
    :goto_3df
    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 649
    iget v2, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_2a0

    .line 770
    :goto_3e5
    iget-object v13, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_429

    if-eqz p1, :cond_429

    .line 771
    const-string v2, "iconProperty"

    filled-new-array {v6, v10}, [I

    move-result-object v5

    invoke-static {v2, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 772
    const-string v5, "toastProperty"

    filled-new-array {v9, v4}, [I

    move-result-object v4

    invoke-static {v5, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 773
    filled-new-array {v2, v4}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x190

    .line 774
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 775
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    sget-object v4, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 776
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0, v1, v3}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 784
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_499

    .line 786
    :cond_429
    iget-object v4, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mToastRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v16, :cond_47e

    .line 788
    const-string v3, "iconLeftMargin"

    filled-new-array {v7, v12}, [I

    move-result-object v4

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 789
    const-string v4, "iconRightMargin"

    filled-new-array {v8, v11}, [I

    move-result-object v7

    invoke-static {v4, v7}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 790
    const-string v7, "iconTopMargin"

    filled-new-array {v5, v2}, [I

    move-result-object v2

    invoke-static {v7, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 791
    const-string v5, "iconBottomMargin"

    filled-new-array {v6, v10}, [I

    move-result-object v6

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 792
    filled-new-array {v3, v4, v2, v5}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x1c2

    .line 793
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 794
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    sget-object v3, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 795
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0, v1}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 802
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_483

    .line 804
    :cond_47e
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mMoreIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 806
    :goto_483
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v3, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopViewMarginRight:I

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v4, v1

    .line 807
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    iget-object v5, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v5

    .line 806
    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 809
    :goto_499
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mToastRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iget v0, v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;->mOrientation:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    :cond_4a1
    :goto_4a1
    return-void
.end method
