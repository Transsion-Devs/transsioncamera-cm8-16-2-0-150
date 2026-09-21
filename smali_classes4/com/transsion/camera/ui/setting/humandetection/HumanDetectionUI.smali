.class public Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$StatusChangeListener;,
        Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$UIHandler;,
        Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$HumanResultCallbackImpl;
    }
.end annotation


# static fields
.field private static final MSG_UPDATE_HUMAN:I = 0x6e

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mActiveHumanView:Z

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mHumanFocusView:Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;

.field private mIsCapturing:Z

.field private mIsHumanViewShowing:Z

.field private final mPreviewViewRect:Landroid/graphics/Rect;

.field private final mStatusChangeListener:Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private final mUIHandler:Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$UIHandler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsCapturing(Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mIsCapturing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;)Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$UIHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mUIHandler:Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$UIHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmActiveHumanView(Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mActiveHumanView:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoUpdateHumanView(Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;[I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->doUpdateHumanView([I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 50
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "HumanDetectionUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 3

    .line 63
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 56
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    .line 58
    new-instance p1, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$StatusChangeListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$StatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI-IA;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$StatusChangeListener;

    const/4 p1, 0x1

    .line 61
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mActiveHumanView:Z

    .line 64
    new-instance p1, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$UIHandler;

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI-IA;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mUIHandler:Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$UIHandler;

    return-void
.end method

.method private doUpdateHumanView([I)V
    .registers 7

    .line 197
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mActiveHumanView:Z

    if-eqz v0, :cond_38

    if-eqz p1, :cond_38

    array-length v0, p1

    if-nez v0, :cond_a

    goto :goto_38

    .line 202
    :cond_a
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x3

    aget v1, p1, v1

    const/4 v2, 0x4

    aget v2, p1, v2

    const/4 v3, 0x5

    aget v3, p1, v3

    const/4 v4, 0x6

    aget v4, p1, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 203
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/utils/CoordinatesUtil;->referenceToViewSpace(Landroid/graphics/Rect;II)Landroid/graphics/Rect;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mHumanFocusView:Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;

    const/4 v2, 0x2

    aget p1, p1, v2

    invoke-virtual {v1, v0, p1}, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->show(Landroid/graphics/Rect;I)V

    const/4 p1, 0x1

    .line 206
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->notifyEyeViewState(Z)V

    return-void

    .line 198
    :cond_38
    :goto_38
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mHumanFocusView:Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->hide()V

    const/4 p1, 0x0

    .line 199
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->notifyEyeViewState(Z)V

    return-void
.end method

.method private notifyEyeViewState(Z)V
    .registers 4

    .line 139
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mIsHumanViewShowing:Z

    if-eq v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 140
    :goto_7
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v1, :cond_1f

    if-eqz v0, :cond_1f

    .line 141
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mIsHumanViewShowing:Z

    if-eqz p1, :cond_14

    .line 142
    const-string p0, "show_human_view"

    goto :goto_16

    :cond_14
    const-string p0, "hide_human_view"

    .line 143
    :goto_16
    const-string p1, "key_human_view_state"

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1f
    return-void
.end method

.method private registerKeyToMonitor(Ljava/lang/String;)V
    .registers 3

    .line 188
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private unRegisterKeyToMonitor(Ljava/lang/String;)V
    .registers 3

    .line 192
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private updateRootLayoutRect()V
    .registers 6

    .line 130
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 132
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 133
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 134
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iput p0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 135
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 69
    sget v0, Lcom/transsion/camera/R$layout;->human_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 70
    sget p2, Lcom/transsion/camera/R$id;->human_focus_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    .line 71
    new-instance v0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;

    invoke-direct {v0, p2}, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;-><init>(Landroid/widget/FrameLayout;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mHumanFocusView:Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;

    return-object p1
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHumanRootView()Landroid/view/View;
    .registers 1

    .line 269
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mHumanFocusView:Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->getRootView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 96
    const-string p0, "key_human_detection"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 104
    :cond_6
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideEntryView()V
    .registers 2

    .line 169
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mHumanFocusView:Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;

    if-eqz v0, :cond_b

    .line 170
    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->hide()V

    const/4 v0, 0x0

    .line 171
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->notifyEyeViewState(Z)V

    :cond_b
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
    .registers 3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_20

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1c

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_20

    const/16 v0, 0x63

    if-eq p1, v0, :cond_1c

    const/16 v0, 0xd

    if-eq p1, v0, :cond_18

    const/16 v0, 0xe

    if-eq p1, v0, :cond_1c

    return-void

    :cond_18
    const/4 p1, 0x1

    .line 151
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mIsCapturing:Z

    return-void

    :cond_1c
    const/4 p1, 0x0

    .line 156
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mIsCapturing:Z

    return-void

    .line 160
    :cond_20
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->hideEntryView()V

    return-void
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

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

    .line 110
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_c

    .line 112
    sget-object p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 115
    :cond_c
    new-instance v0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$HumanResultCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$HumanResultCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI-IA;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

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

    .line 120
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_9

    .line 122
    const-string p1, "key_focus_state"

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->registerKeyToMonitor(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public setupEntryView()V
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mHumanFocusView:Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->notifyEyeViewState(Z)V

    :cond_8
    return-void
.end method

.method public unInit()V
    .registers 2

    .line 177
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 178
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mHumanFocusView:Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;

    if-eqz v0, :cond_e

    .line 179
    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->hide()V

    const/4 v0, 0x0

    .line 180
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->notifyEyeViewState(Z)V

    .line 182
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_17

    .line 183
    const-string v0, "key_focus_state"

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 3

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 86
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->updateRootLayoutRect()V

    return-void
.end method
