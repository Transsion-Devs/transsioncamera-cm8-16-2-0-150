.class public Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$StatusChangeListener;,
        Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$UIHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_VALUE:Ljava/lang/String; = "off"

.field private static final KEY:Ljava/lang/String; = "key_touch_capture"

.field private static final MSG_TOUCH_CAPTURE:I = 0x65

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCapturing:Z

.field private mCurValue:Ljava/lang/String;

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mFlipPageShow:Z

.field private final mHandler:Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$UIHandler;

.field private final mPreviewViewRect:Landroid/graphics/Rect;

.field private mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

.field private mShutterUIProcessing:Z

.field private final mStatusChangeListener:Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mTriggerTouchCapture:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;)Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$UIHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mHandler:Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$UIHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmShutterUIProcessing(Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mShutterUIProcessing:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTriggerTouchCapture(Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mTriggerTouchCapture:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoTouchCapture(Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->doTouchCapture()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 58
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "TouchCaptureUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 3

    .line 78
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 65
    new-instance p1, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$StatusChangeListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$StatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI-IA;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$StatusChangeListener;

    .line 67
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    .line 79
    new-instance p1, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$UIHandler;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mHandler:Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$UIHandler;

    return-void
.end method

.method private calculateTouchCoordinate(FF)Z
    .registers 7

    .line 228
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    const/4 v1, 0x0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mParentLayout:Landroid/view/ViewGroup;

    if-nez v0, :cond_a

    goto :goto_48

    .line 234
    :cond_a
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-ltz v3, :cond_47

    iget v3, v2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    cmpl-float p1, p1, v3

    if-gtz p1, :cond_47

    iget p1, v2, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-ltz p1, :cond_47

    iget p1, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_29

    goto :goto_47

    .line 239
    :cond_29
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p1

    .line 240
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v0

    .line 241
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result p0

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_47

    sub-int/2addr p1, p0

    int-to-float p0, p1

    cmpl-float p0, p2, p0

    if-ltz p0, :cond_45

    goto :goto_47

    :cond_45
    const/4 p0, 0x1

    return p0

    :cond_47
    :goto_47
    return v1

    .line 229
    :cond_48
    :goto_48
    sget-object p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onSingleTapUp return, mAppUIRect is null."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method private doTouchCapture()V
    .registers 4

    .line 187
    sget-object v0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doTouchCapture,  mAIGCCapturing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mCapturing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mShutterUIProcessing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mShutterUIProcessing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mTriggerTouchCapture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mTriggerTouchCapture:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mCurValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mCurValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 190
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mCapturing:Z

    if-nez v0, :cond_5d

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mShutterUIProcessing:Z

    if-nez v0, :cond_5d

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mTriggerTouchCapture:Z

    if-nez v0, :cond_43

    goto :goto_5d

    .line 193
    :cond_43
    const-string v0, "on"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mCurValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    const/4 v0, 0x7

    .line 194
    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-ne v0, v1, :cond_5a

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mFlipPageShow:Z

    if-eqz v0, :cond_5a

    .line 195
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->notifyCancelTouchCapture()V

    return-void

    .line 198
    :cond_5a
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->triggerCapture()V

    :cond_5d
    :goto_5d
    return-void
.end method

.method private notifyCancelTouchCapture()V
    .registers 3

    .line 203
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-nez v0, :cond_c

    .line 204
    sget-object p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "notifyCancelTouchCapture mStatusMonitor is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 207
    :cond_c
    sget-object v0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "notifyCancelTouchCapture"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 208
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_touch_capture_status"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v1, "touch_capture_cancel"

    .line 209
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private registerKeyToMonitor(Ljava/lang/String;)V
    .registers 3

    .line 220
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private triggerCapture()V
    .registers 3

    .line 213
    sget-object v0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "triggerCapture"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 214
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    if-eqz p0, :cond_10

    const/16 v0, 0x9

    .line 215
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->triggerShutterClick(I)V

    :cond_10
    return-void
.end method

.method private unRegisterKeyToMonitor(Ljava/lang/String;)V
    .registers 3

    .line 224
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method


# virtual methods
.method public doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    const/4 p0, 0x0

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

    .line 99
    const-string p0, "key_touch_capture"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 104
    const-string p0, "off"

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
    .registers 5

    .line 250
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->notifyCameraOperateAction(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_37

    const/4 v2, 0x3

    if-eq p1, v2, :cond_37

    const/16 v2, 0x9

    if-eq p1, v2, :cond_37

    const/16 v2, 0x1c

    if-eq p1, v2, :cond_33

    const/16 v2, 0x36

    if-eq p1, v2, :cond_37

    const/16 v2, 0x101

    if-eq p1, v2, :cond_30

    const/16 v2, 0x102

    if-eq p1, v2, :cond_37

    const/16 v2, 0x18b

    if-eq p1, v2, :cond_30

    const/16 v2, 0x18c

    if-eq p1, v2, :cond_37

    packed-switch p1, :pswitch_data_3a

    return-void

    .line 274
    :pswitch_2a
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mFlipPageShow:Z

    return-void

    .line 270
    :pswitch_2d
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mFlipPageShow:Z

    return-void

    .line 254
    :cond_30
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mCapturing:Z

    return-void

    .line 258
    :cond_33
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mFlipPageShow:Z

    .line 259
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mShutterUIProcessing:Z

    .line 266
    :cond_37
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mCapturing:Z

    return-void

    :pswitch_data_3a
    .packed-switch 0x109
        :pswitch_2d
        :pswitch_2a
        :pswitch_2d
        :pswitch_2a
    .end packed-switch
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onLongPress(FF)Z
    .registers 4

    .line 180
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_a

    .line 181
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mCurValue:Ljava/lang/String;

    .line 183
    :cond_a
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onLongPress(FF)Z

    move-result p0

    return p0
.end method

.method public onSingleTapUp(FF)Z
    .registers 7

    .line 151
    sget-object v0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onSingleTapUp"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 152
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mTriggerTouchCapture:Z

    const/4 v1, 0x6

    .line 153
    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1c

    .line 154
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mCurValue:Ljava/lang/String;

    .line 155
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->doTouchCapture()V

    return v3

    .line 159
    :cond_1c
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-ltz v2, :cond_79

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-gtz v2, :cond_79

    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-ltz v2, :cond_79

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-lez v1, :cond_3b

    goto :goto_79

    .line 163
    :cond_3b
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->calculateTouchCoordinate(FF)Z

    move-result p1

    if-nez p1, :cond_42

    return v3

    .line 167
    :cond_42
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_79

    .line 168
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mCurValue:Ljava/lang/String;

    .line 169
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onSingleTapUp currentFocusMode: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v1, "key_focus"

    invoke-interface {p2, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 170
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 171
    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 170
    const-string p2, "fixed"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_79

    .line 172
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->doTouchCapture()V

    :cond_79
    :goto_79
    return v3
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
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_b

    .line 127
    sget-object p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_b
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

    .line 138
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_14

    .line 141
    const-string p1, "key_focus_state"

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 142
    const-string p1, "key_ui_state_action"

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 143
    const-string p1, "key_shutter_guide_layout_action"

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->registerKeyToMonitor(Ljava/lang/String;)V

    return-void

    .line 145
    :cond_14
    sget-object p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mStatusMonitor is null! maybe flow is wrong!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V
    .registers 2

    .line 133
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    return-void
.end method

.method public setUIStateControl(Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;)V
    .registers 2

    .line 109
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setUIStateControl(Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;)V

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 114
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mHandler:Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 116
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_1c

    .line 117
    const-string v0, "key_focus_state"

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 118
    const-string v0, "key_ui_state_action"

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 119
    const-string v0, "key_shutter_guide_layout_action"

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    :cond_1c
    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 2

    .line 89
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method
