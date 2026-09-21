.class public abstract Lcom/transsion/camera/app/common/manager/AbstractViewManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;
.implements Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;
.implements Lcom/transsion/camera/app/common/IScreenFormControl;
.implements Lcom/transsion/camera/app/common/battery/IBatteryListener;


# static fields
.field protected static final ANIMATION_OFF:I = 0x0

.field protected static final ANIMATION_ON:I = 0x1

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

.field protected mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field protected mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

.field protected mBatteryStatus:I

.field protected mCameraFlashLayout:Landroid/view/ViewGroup;

.field protected mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field protected mCameraRootView:Landroid/view/ViewGroup;

.field protected mCameraZoomLayout:Landroid/view/ViewGroup;

.field private mEnable:Z

.field protected mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

.field protected mIsShown:Z

.field protected mOrientation:I

.field protected mParentLayout:Landroid/view/ViewGroup;

.field protected mRootView:Landroid/view/View;

.field protected mScreenFormType:I

.field protected mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

.field protected mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field protected mSettingOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;

.field protected mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

.field protected mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

.field protected mTemperatureStatus:I

.field protected mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 41
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AbstractViewManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mIsShown:Z

    .line 53
    iput v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mBatteryStatus:I

    .line 54
    iput v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mTemperatureStatus:I

    .line 65
    iput v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    .line 66
    iput v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mOrientation:I

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .registers 9

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mIsShown:Z

    .line 53
    iput v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mBatteryStatus:I

    .line 54
    iput v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mTemperatureStatus:I

    .line 65
    iput v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    .line 66
    iput v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mOrientation:I

    .line 80
    iput-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    if-eqz p1, :cond_18

    .line 82
    invoke-interface {p1}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getScreenFormType()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    .line 84
    :cond_18
    iput-object p2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    .line 85
    iput-object p3, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    .line 86
    iput-object p4, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    .line 87
    iput-object p5, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    .line 88
    iput-object p6, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    .line 89
    iput-object p7, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    .line 90
    check-cast p7, Lcom/transsion/camera/app/common/IAppUI;

    iput-object p7, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 1

    return-void
.end method

.method public doSetCommonSettingUIList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public doSetOptionSettingUIList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public getRootView()Landroid/view/View;
    .registers 1

    .line 136
    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method protected getType()I
    .registers 1

    const/16 p0, 0x3e8

    return p0
.end method

.method public hide()V
    .registers 3

    .line 183
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    if-nez v0, :cond_c

    .line 184
    sget-object p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "hide mRootView is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_c
    const/4 v1, 0x4

    .line 187
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 188
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mIsShown:Z

    return-void
.end method

.method public final inflateLayout(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .registers 4

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p0, v0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->inflateLayout(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    return-void
.end method

.method public final inflateLayout(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .registers 4

    .line 102
    iput-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraRootView:Landroid/view/ViewGroup;

    .line 103
    iput-object p2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    .line 104
    invoke-virtual {p0, p3}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    .line 105
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onSetupViews()V

    .line 108
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mEnable:Z

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setEnable(Z)V

    .line 109
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->show()V

    return-void
.end method

.method public final inflateLayout(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .registers 6

    .line 113
    iput-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraRootView:Landroid/view/ViewGroup;

    .line 114
    iput-object p2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    if-eqz p4, :cond_8

    .line 116
    iput-object p4, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraZoomLayout:Landroid/view/ViewGroup;

    :cond_8
    if-eqz p5, :cond_c

    .line 119
    iput-object p5, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraFlashLayout:Landroid/view/ViewGroup;

    .line 121
    :cond_c
    invoke-virtual {p0, p3}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    .line 122
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onSetupViews()V

    .line 125
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mEnable:Z

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setEnable(Z)V

    .line 126
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->show()V

    return-void
.end method

.method public isEnable()Z
    .registers 1

    .line 198
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mEnable:Z

    return p0
.end method

.method public isOrientationChangedSpecial()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isShown()Z
    .registers 1

    .line 202
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mIsShown:Z

    return p0
.end method

.method public loadAfterPreviewStarted()V
    .registers 1

    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 4

    .line 230
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->getType()I

    move-result v0

    invoke-static {v0, p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->respondUIManagerEvent(II)I

    move-result v0

    .line 231
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v1, :cond_14

    .line 232
    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->getCurrentActionState()I

    move-result v1

    invoke-static {v1, p1, v0}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->filterRespondByState(III)I

    move-result v0

    :cond_14
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    const/4 v1, 0x0

    .line 235
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setEnable(Z)V

    goto :goto_21

    :cond_1c
    if-nez v0, :cond_21

    .line 237
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setEnable(Z)V

    .line 239
    :cond_21
    :goto_21
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->notifyCameraOperateActionToUI(II)V

    return-void
.end method

.method protected notifyCameraOperateActionToUI(II)V
    .registers 3

    .line 0
    return-void
.end method

.method public notifyCameraStateToUI(I)V
    .registers 2

    return-void
.end method

.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method public onBackPressed()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onBackPressed(Landroid/net/Uri;Z)Z
    .registers 3

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onBackPressed(Z)Z
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onBatteryStatusChanged(ZII)V
    .registers 4

    .line 332
    iput p2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mBatteryStatus:I

    .line 333
    iput p3, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mTemperatureStatus:I

    return-void
.end method

.method public onConfigurationChanged()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public onDoubleTap(FF)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public onDragMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    const/4 p0, 0x0

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    const/4 p0, 0x0

    return p0
.end method

.method protected abstract onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
.end method

.method public onLongPress(FF)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public onModePanelDistanceChanged(FZ)V
    .registers 3

    return-void
.end method

.method public onOrientationChanged(IZ)V
    .registers 3

    .line 321
    iput p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mOrientation:I

    return-void
.end method

.method public onPreviewClick()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public onRelativePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 327
    iput p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    const/4 p0, 0x0

    return p0
.end method

.method protected abstract onSetupViews()V
.end method

.method public onSingleTapConfirmed(FF)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public onSingleTapUp(FF)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public pause()V
    .registers 1

    return-void
.end method

.method public resume()V
    .registers 1

    return-void
.end method

.method public setCommonSettingUIList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 148
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->doSetCommonSettingUIList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mEnable:Z

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setEnable(Z)V

    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    .line 194
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mEnable:Z

    return-void
.end method

.method public setOptionSettingUIList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI;",
            ">;)V"
        }
    .end annotation

    .line 153
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->doSetOptionSettingUIList(Ljava/util/List;)V

    .line 154
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mEnable:Z

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setEnable(Z)V

    return-void
.end method

.method public setPreviewSize(II)V
    .registers 3

    return-void
.end method

.method public setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 2

    .line 144
    iput-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-void
.end method

.method public setSettingOptionControl(Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;

    return-void
.end method

.method public show()V
    .registers 3

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    if-nez v0, :cond_c

    .line 175
    sget-object p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "show mRootView is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_c
    const/4 v1, 0x0

    .line 178
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    .line 179
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mIsShown:Z

    return-void
.end method

.method public start()V
    .registers 1

    return-void
.end method

.method public abstract unInit()V
.end method

.method public updateCurrentCamera(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public updateCurrentMode(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public updateSwitchCameraUI(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method
