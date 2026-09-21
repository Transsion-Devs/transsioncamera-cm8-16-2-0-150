.class public Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI$UIHandler;,
        Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI$GestureDetSettingCallBack;
    }
.end annotation


# static fields
.field private static final DEFAULT_SELF_TIMER_NUMBER:Ljava/lang/String; = "3"

.field private static final HAND_INFO_DATA:I = 0x6e

.field private static final HAND_INFO_RESUME:I = 0x78

.field private static final MSG_HIDE_HAND_INFO:I = 0x3

.field private static final MSG_SHOW_HAND_INFO:I = 0x2

.field private static final MSG_TAKE_PICTURE:I = 0x1

.field private static final SETTING_KEY:Ljava/lang/String; = "key_gesture_detection"

.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final isDebug:Z

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mFlipPageShow:Z

.field private final mGestureDetSettingCallBack:Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI$GestureDetSettingCallBack;

.field private mHandInfoRectView:Landroid/view/View;

.field private mHandInfoTextView:Landroid/widget/TextView;

.field private mHandRect:Landroid/graphics/Rect;

.field private mHandScore:F

.field private mHandType:I

.field private mIsFunVideoRecording:Z

.field private mIsOnSettingFragment:Z

.field private mIsOnSettingFragmentEdit:Z

.field private mIsOnSettingFragmentGold:Z

.field private mIsOnSettingFragmentGuide:Z

.field private mIsOnSettingFragmentPro:Z

.field private mIsOnSettingFragmentRemote:Z

.field private mIsOnSettingFragmentWatermark:Z

.field private mIsTakePicture:Z

.field private mPreviewRect:Landroid/graphics/Rect;

.field private mRootParent:Landroid/widget/FrameLayout;

.field private mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

.field private mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
        }
    .end annotation
.end field

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mTurnOnSwitch:Z

.field private final mUIHandler:Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI$UIHandler;

.field private mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDeviceSetting(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;)Lcom/transsion/camera/app/common/setting/ISetting;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandInfoRectView(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mHandInfoRectView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandInfoTextView(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;)Landroid/widget/TextView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mHandInfoTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandRect(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;)Landroid/graphics/Rect;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mHandRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandScore(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mHandScore:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandType(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mHandType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsTakePicture(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mIsTakePicture:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSettingStatusListener(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShutterControl(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;)Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTurnOnSwitch(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mTurnOnSwitch:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;)Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI$UIHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mUIHandler:Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI$UIHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsTakePicture(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mIsTakePicture:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyStatusChanged(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->notifyStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mquerySettingValue(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->querySettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mturnOnSwitch(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->turnOnSwitch(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 46
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "GestureDetectionSettingUISpec"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 82
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->isDebug:Z

    .line 58
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mIsFunVideoRecording:Z

    .line 59
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mIsOnSettingFragment:Z

    .line 60
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mIsOnSettingFragmentGuide:Z

    .line 61
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mIsOnSettingFragmentEdit:Z

    .line 62
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mIsOnSettingFragmentWatermark:Z

    .line 63
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mIsOnSettingFragmentRemote:Z

    .line 64
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mIsOnSettingFragmentGold:Z

    .line 65
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mIsOnSettingFragmentPro:Z

    const/4 v1, 0x1

    .line 67
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mTurnOnSwitch:Z

    const/4 v1, 0x0

    .line 70
    iput v1, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mHandScore:F

    const/4 v1, -0x1

    .line 71
    iput v1, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mHandType:I

    .line 72
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mPreviewRect:Landroid/graphics/Rect;

    .line 73
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mHandRect:Landroid/graphics/Rect;

    .line 400
    new-instance v0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI$1;-><init>(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 83
    sget-object v0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 84
    new-instance v0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI$UIHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mUIHandler:Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI$UIHandler;

    .line 85
    new-instance v0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI$GestureDetSettingCallBack;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI$GestureDetSettingCallBack;-><init>(Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mGestureDetSettingCallBack:Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI$GestureDetSettingCallBack;

    return-void
.end method

.method private notifyStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 512
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_b

    .line 513
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_b
    return-void
.end method

.method private querySettingValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 394
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_9

    .line 395
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method private static rotateHandRect(Landroid/graphics/Rect;IIZ)Landroid/graphics/Rect;
    .registers 7

    .line 520
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 521
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-eqz p3, :cond_21

    .line 523
    iget p3, p0, Landroid/graphics/Rect;->top:I

    .line 524
    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr p3, v0

    sub-int/2addr p1, p3

    .line 525
    iput p1, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    sub-int/2addr p2, v2

    .line 526
    iput p2, p0, Landroid/graphics/Rect;->top:I

    goto :goto_2b

    .line 528
    :cond_21
    iget p2, p0, Landroid/graphics/Rect;->left:I

    .line 529
    iget p3, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p3, v0

    sub-int/2addr p1, p3

    .line 530
    iput p1, p0, Landroid/graphics/Rect;->left:I

    .line 531
    iput p2, p0, Landroid/graphics/Rect;->top:I

    .line 533
    :goto_2b
    iget p1, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 534
    iget p1, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p1

    iput v1, p0, Landroid/graphics/Rect;->bottom:I

    return-object p0
.end method

.method private turnOnSwitch(Z)V
    .registers 5

    .line 377
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_38

    .line 378
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mIsOnSettingFragment:Z

    if-nez v1, :cond_23

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mIsOnSettingFragmentEdit:Z

    if-nez v1, :cond_23

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mIsOnSettingFragmentGuide:Z

    if-nez v1, :cond_23

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mIsOnSettingFragmentWatermark:Z

    if-nez v1, :cond_23

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mIsOnSettingFragmentRemote:Z

    if-nez v1, :cond_23

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mIsOnSettingFragmentGold:Z

    if-nez v1, :cond_23

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mIsOnSettingFragmentPro:Z

    if-eqz v1, :cond_21

    goto :goto_23

    :cond_21
    const/4 v1, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v1, 0x1

    :goto_24
    if-eqz p1, :cond_33

    if-eqz v1, :cond_29

    goto :goto_38

    :cond_29
    const/4 v1, 0x7

    .line 384
    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-ne v1, v2, :cond_33

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mFlipPageShow:Z

    if-eqz v1, :cond_33

    goto :goto_38

    .line 388
    :cond_33
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mTurnOnSwitch:Z

    .line 389
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->turnOnSwitch(Z)V

    :cond_38
    :goto_38
    return-void
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 90
    sget v0, Lcom/transsion/camera/R$layout;->gesture_detection_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 91
    sget p2, Lcom/transsion/camera/R$id;->gesture_detection_info:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mRootParent:Landroid/widget/FrameLayout;

    return-object p1
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

    .line 171
    const-string p0, "key_gesture_detection"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 162
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 165
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

.method public notifyCameraOperateAction(I)V
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_130

    .line 232
    const-string v1, "gesture_normal_state"

    const-string v2, "key_gesture_state"

    const/4 v3, 0x1

    if-eq p1, v3, :cond_129

    const/4 v4, 0x2

    if-eq p1, v4, :cond_130

    const/4 v4, 0x3

    if-eq p1, v4, :cond_125

    const/16 v4, 0x11

    if-eq p1, v4, :cond_11f

    const/16 v4, 0x12

    if-eq p1, v4, :cond_116

    const/16 v4, 0x19

    if-eq p1, v4, :cond_130

    const/16 v4, 0x1a

    if-eq p1, v4, :cond_129

    const/16 v4, 0x2a

    if-eq p1, v4, :cond_130

    const/16 v4, 0x2b

    if-eq p1, v4, :cond_125

    const/16 v4, 0x2e

    if-eq p1, v4, :cond_113

    const/16 v4, 0x2f

    if-eq p1, v4, :cond_110

    const/16 v4, 0x35

    if-eq p1, v4, :cond_130

    const/16 v4, 0x36

    if-eq p1, v4, :cond_125

    const/16 v4, 0x40

    if-eq p1, v4, :cond_130

    const/16 v4, 0x41

    if-eq p1, v4, :cond_125

    const/16 v4, 0x4d

    if-eq p1, v4, :cond_10a

    const/16 v4, 0x4e

    if-eq p1, v4, :cond_101

    const/16 v4, 0x55

    if-eq p1, v4, :cond_fb

    const/16 v4, 0x56

    if-eq p1, v4, :cond_f2

    const-string v4, "on"

    const-string v5, "key_gesture_detection"

    const/4 v6, 0x0

    const/4 v7, -0x1

    sparse-switch p1, :sswitch_data_134

    packed-switch p1, :pswitch_data_18e

    goto/16 :goto_f1

    .line 370
    :sswitch_5e
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mFlipPageShow:Z

    .line 371
    invoke-direct {p0, v3}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->turnOnSwitch(Z)V

    return-void

    .line 365
    :sswitch_64
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mFlipPageShow:Z

    .line 366
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->turnOnSwitch(Z)V

    return-void

    .line 341
    :sswitch_6a
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mIsOnSettingFragmentPro:Z

    .line 342
    invoke-direct {p0, v3}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->turnOnSwitch(Z)V

    .line 343
    invoke-direct {p0, v2, v1}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->notifyStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 337
    :sswitch_73
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mIsOnSettingFragmentPro:Z

    .line 338
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->turnOnSwitch(Z)V

    return-void

    .line 332
    :sswitch_79
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mIsOnSettingFragmentGold:Z

    .line 333
    invoke-direct {p0, v3}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->turnOnSwitch(Z)V

    .line 334
    invoke-direct {p0, v2, v1}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->notifyStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 328
    :sswitch_82
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mIsOnSettingFragmentGold:Z

    .line 329
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->turnOnSwitch(Z)V

    return-void

    .line 288
    :sswitch_88
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz p1, :cond_91

    .line 289
    sget-object v0, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    .line 291
    :cond_91
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    const/4 p1, 0x7

    invoke-interface {p0, p1, v7, v6}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    return-void

    .line 359
    :sswitch_98
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mIsOnSettingFragmentRemote:Z

    .line 360
    invoke-direct {p0, v3}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->turnOnSwitch(Z)V

    .line 361
    invoke-direct {p0, v2, v1}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->notifyStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 355
    :sswitch_a1
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mIsOnSettingFragmentRemote:Z

    .line 356
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->turnOnSwitch(Z)V

    return-void

    .line 350
    :sswitch_a7
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mIsOnSettingFragmentWatermark:Z

    .line 351
    invoke-direct {p0, v3}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->turnOnSwitch(Z)V

    .line 352
    invoke-direct {p0, v2, v1}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->notifyStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 346
    :sswitch_b0
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mIsOnSettingFragmentWatermark:Z

    .line 347
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->turnOnSwitch(Z)V

    return-void

    .line 249
    :sswitch_b6
    invoke-direct {p0, v3}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->turnOnSwitch(Z)V

    .line 250
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mFlipPageShow:Z

    .line 251
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mIsFunVideoRecording:Z

    .line 252
    invoke-direct {p0, v5}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->querySettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_f1

    .line 253
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    invoke-interface {p0, v3, v7, v6}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    return-void

    .line 234
    :sswitch_cd
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mIsOnSettingFragmentWatermark:Z

    .line 235
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mIsOnSettingFragmentGuide:Z

    .line 236
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mIsOnSettingFragment:Z

    .line 237
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mIsOnSettingFragmentEdit:Z

    .line 238
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mIsOnSettingFragmentRemote:Z

    .line 239
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mIsOnSettingFragmentGold:Z

    .line 240
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mIsOnSettingFragmentPro:Z

    .line 241
    invoke-direct {p0, v3}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->turnOnSwitch(Z)V

    .line 242
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mFlipPageShow:Z

    .line 243
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mIsFunVideoRecording:Z

    .line 244
    invoke-direct {p0, v5}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->querySettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_f1

    .line 245
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    invoke-interface {p0, v3, v7, v6}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    :cond_f1
    :goto_f1
    return-void

    .line 323
    :cond_f2
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mIsOnSettingFragmentEdit:Z

    .line 324
    invoke-direct {p0, v3}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->turnOnSwitch(Z)V

    .line 325
    invoke-direct {p0, v2, v1}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->notifyStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 319
    :cond_fb
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mIsOnSettingFragmentEdit:Z

    .line 320
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->turnOnSwitch(Z)V

    return-void

    .line 314
    :cond_101
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mIsOnSettingFragmentGuide:Z

    .line 315
    invoke-direct {p0, v3}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->turnOnSwitch(Z)V

    .line 316
    invoke-direct {p0, v2, v1}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->notifyStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 310
    :cond_10a
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mIsOnSettingFragmentGuide:Z

    .line 311
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->turnOnSwitch(Z)V

    return-void

    .line 298
    :cond_110
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mIsFunVideoRecording:Z

    return-void

    .line 295
    :cond_113
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mIsFunVideoRecording:Z

    return-void

    .line 305
    :cond_116
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mIsOnSettingFragment:Z

    .line 306
    invoke-direct {p0, v3}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->turnOnSwitch(Z)V

    .line 307
    invoke-direct {p0, v2, v1}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->notifyStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 301
    :cond_11f
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mIsOnSettingFragment:Z

    .line 302
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->turnOnSwitch(Z)V

    return-void

    .line 274
    :cond_125
    :pswitch_125
    :sswitch_125
    invoke-direct {p0, v3}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->turnOnSwitch(Z)V

    return-void

    .line 283
    :cond_129
    :pswitch_129
    :sswitch_129
    invoke-direct {p0, v3}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->turnOnSwitch(Z)V

    .line 284
    invoke-direct {p0, v2, v1}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->notifyStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 266
    :cond_130
    :pswitch_130
    :sswitch_130
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->turnOnSwitch(Z)V

    return-void

    :sswitch_data_134
    .sparse-switch
        0x3 -> :sswitch_125
        0x16 -> :sswitch_129
        0x1c -> :sswitch_cd
        0x20 -> :sswitch_b6
        0x66 -> :sswitch_b0
        0x67 -> :sswitch_a7
        0x6e -> :sswitch_129
        0x87 -> :sswitch_130
        0x88 -> :sswitch_129
        0x89 -> :sswitch_a1
        0x8a -> :sswitch_98
        0x8c -> :sswitch_88
        0xb0 -> :sswitch_82
        0xb1 -> :sswitch_79
        0xd2 -> :sswitch_130
        0xd3 -> :sswitch_129
        0xf4 -> :sswitch_73
        0xf5 -> :sswitch_6a
        0x109 -> :sswitch_64
        0x10a -> :sswitch_5e
        0x10b -> :sswitch_64
        0x10c -> :sswitch_5e
    .end sparse-switch

    :pswitch_data_18e
    .packed-switch 0xb
        :pswitch_130
        :pswitch_125
        :pswitch_130
        :pswitch_129
    .end packed-switch
.end method

.method public onBackPressed()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 2

    return-void
.end method

.method public onShutterClick(II)Z
    .registers 4

    .line 195
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mTurnOnSwitch:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mIsFunVideoRecording:Z

    if-eqz v0, :cond_9

    goto :goto_e

    .line 198
    :cond_9
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onShutterClick(II)Z

    move-result p0

    return p0

    :cond_e
    :goto_e
    const/4 p0, 0x0

    return p0
.end method

.method public onShutterLongClick(II)Z
    .registers 5

    .line 203
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mTurnOnSwitch:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 206
    :cond_6
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->turnOnSwitch(Z)V

    .line 207
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onShutterLongClick(II)Z

    move-result p0

    return p0
.end method

.method public onShutterUp(I)V
    .registers 3

    .line 212
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mTurnOnSwitch:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 215
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->turnOnSwitch(Z)V

    .line 216
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onShutterUp(I)V

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
    .registers 2

    .line 121
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_c

    .line 123
    sget-object p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 126
    :cond_c
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mGestureDetSettingCallBack:Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI$GestureDetSettingCallBack;

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

    .line 141
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_14

    .line 143
    const-string v0, "key_focus_state"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 144
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_gesture_state"

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_14
    return-void
.end method

.method public setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .registers 2

    .line 226
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    .line 227
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-void
.end method

.method public setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V
    .registers 3

    .line 186
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V

    .line 187
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    if-eqz p1, :cond_b

    const/4 v0, 0x3

    .line 189
    invoke-interface {p1, p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->registerShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;I)V

    :cond_b
    return-void
.end method

.method public setUIStateControl(Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;)V
    .registers 2

    .line 181
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    return-void
.end method

.method public setupEntryView()V
    .registers 5

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mPreviewRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_2b

    .line 98
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mRootParent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 99
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mPreviewRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 100
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mPreviewRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 101
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 102
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mRootParent:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2b
    return-void
.end method

.method public unInit()V
    .registers 4

    .line 150
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 151
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mRootParent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 152
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mUIHandler:Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 153
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_22

    .line 154
    const-string v1, "key_focus_state"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_gesture_state"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 157
    :cond_22
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->unRegisterShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;)V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/gesturedetection/GestureDetectionUI;->mPreviewRect:Landroid/graphics/Rect;

    return-void
.end method
