.class public abstract Lcom/transsion/camera/feature/common/BaseUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/common/ICapture$IStatusListener;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field protected volatile mCapturing:Z

.field protected mContext:Landroid/content/Context;

.field protected mIsSaving:Z

.field private final mMainHandler:Landroid/os/Handler;

.field private volatile mModeChangeFlag:Z

.field private volatile mModeSwitchAnimating:Z

.field protected volatile mOrientation:I

.field protected mParentContainer:Landroid/view/ViewGroup;

.field private volatile mResumed:Z

.field protected mRootView:Landroid/view/View;

.field private volatile mUIReady:Z

.field private final mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic -$$Nest$mupdateVisibility(Lcom/transsion/camera/feature/common/BaseUI;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/common/BaseUI;->updateVisibility()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/common/BaseUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BaseUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/common/BaseUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 4

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mIsSaving:Z

    .line 55
    new-instance v0, Landroid/os/Handler;

    .line 56
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mMainHandler:Landroid/os/Handler;

    .line 58
    new-instance v0, Lcom/transsion/camera/feature/common/BaseUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/common/BaseUI$1;-><init>(Lcom/transsion/camera/feature/common/BaseUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 73
    iput-object p1, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 74
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getModeInflateRoot()Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/common/BaseUI;->mParentContainer:Landroid/view/ViewGroup;

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/common/BaseUI;->mContext:Landroid/content/Context;

    return-void
.end method

.method private updateVisibility()Z
    .registers 4

    .line 212
    sget-object v0, Lcom/transsion/camera/feature/common/BaseUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateVisibility mUIReady "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/common/BaseUI;->mUIReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mModeSwitchAnimating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/common/BaseUI;->mModeSwitchAnimating:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mModeChangeFlag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/common/BaseUI;->mModeChangeFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 215
    iget-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mUIReady:Z

    if-eqz v0, :cond_3b

    iget-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mModeSwitchAnimating:Z

    if-nez v0, :cond_3b

    iget-boolean p0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mModeChangeFlag:Z

    if-nez p0, :cond_3b

    const/4 p0, 0x1

    return p0

    :cond_3b
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected abstract doCreateView()Landroid/view/View;
.end method

.method public initView()V
    .registers 3

    .line 79
    sget-object v0, Lcom/transsion/camera/feature/common/BaseUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "initView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseUI;->doCreateView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_14

    .line 82
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mParentContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_14
    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .registers 3

    const/16 v0, 0x35

    if-eq p1, v0, :cond_10

    const/16 v0, 0x36

    if-eq p1, v0, :cond_9

    return-void

    :cond_9
    const/4 p1, 0x0

    .line 153
    iput-boolean p1, p0, Lcom/transsion/camera/feature/common/BaseUI;->mModeSwitchAnimating:Z

    .line 154
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseUI;->triggerUpdate()V

    return-void

    :cond_10
    const/4 p1, 0x1

    .line 148
    iput-boolean p1, p0, Lcom/transsion/camera/feature/common/BaseUI;->mModeSwitchAnimating:Z

    .line 149
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseUI;->triggerUpdate()V

    return-void
.end method

.method public onCaptureEnd()V
    .registers 5

    .line 201
    sget-object v0, Lcom/transsion/camera/feature/common/BaseUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onCaptureEnd"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 202
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mCapturing:Z

    .line 203
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mIsSaving:Z

    .line 204
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseUI;->triggerUpdate()V

    .line 205
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 207
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x23

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onCaptureFailed()V
    .registers 5

    .line 189
    sget-object v0, Lcom/transsion/camera/feature/common/BaseUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onCaptureFailed"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 190
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mCapturing:Z

    .line 191
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mIsSaving:Z

    .line 192
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseUI;->triggerUpdate()V

    .line 193
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 195
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x23

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onCaptureStart()V
    .registers 5

    .line 164
    sget-object v0, Lcom/transsion/camera/feature/common/BaseUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onCaptureStart"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 165
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mCapturing:Z

    .line 166
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseUI;->triggerUpdate()V

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-interface {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 169
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x22

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onCaptureStop()V
    .registers 6

    .line 175
    sget-object v0, Lcom/transsion/camera/feature/common/BaseUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureStop, mResumed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/common/BaseUI;->mResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 176
    iget-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mResumed:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2c

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v3, 0x3

    const/16 v4, 0x64

    invoke-interface {v0, v3, v4, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 179
    iput-boolean v1, p0, Lcom/transsion/camera/feature/common/BaseUI;->mIsSaving:Z

    .line 180
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseUI;->triggerUpdate()V

    return-void

    .line 182
    :cond_2c
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, -0x1

    invoke-interface {p0, v1, v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    return-void
.end method

.method public pause()V
    .registers 5

    .line 111
    sget-object v0, Lcom/transsion/camera/feature/common/BaseUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_18

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    :cond_18
    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mResumed:Z

    .line 116
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mUIReady:Z

    .line 117
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mCapturing:Z

    .line 118
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mIsSaving:Z

    .line 119
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mModeChangeFlag:Z

    .line 120
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mModeSwitchAnimating:Z

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public readyUI()V
    .registers 3

    .line 105
    sget-object v0, Lcom/transsion/camera/feature/common/BaseUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "readyUI"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 106
    iget-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mResumed:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mUIReady:Z

    .line 107
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseUI;->triggerUpdate()V

    return-void
.end method

.method public resume()V
    .registers 3

    .line 99
    sget-object v0, Lcom/transsion/camera/feature/common/BaseUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "resume"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mResumed:Z

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mIsSaving:Z

    return-void
.end method

.method protected final runOnUiThread(Ljava/lang/Runnable;)V
    .registers 4

    .line 87
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_10

    .line 88
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 90
    :cond_10
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public setModeChangeFlag(Z)V
    .registers 2

    .line 141
    iput-boolean p1, p0, Lcom/transsion/camera/feature/common/BaseUI;->mModeChangeFlag:Z

    .line 142
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseUI;->triggerUpdate()V

    return-void
.end method

.method protected final triggerUpdate()V
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unInitView()V
    .registers 4

    .line 126
    sget-object v0, Lcom/transsion/camera/feature/common/BaseUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "unInitView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_19

    .line 129
    iget-object v2, p0, Lcom/transsion/camera/feature/common/BaseUI;->mParentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 130
    iput-object v1, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    :cond_19
    return-void
.end method

.method public updateOrientation(I)V
    .registers 5

    .line 135
    sget-object v0, Lcom/transsion/camera/feature/common/BaseUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateOrientation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 136
    iput p1, p0, Lcom/transsion/camera/feature/common/BaseUI;->mOrientation:I

    .line 137
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseUI;->mRootView:Landroid/view/View;

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_26

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_26

    const/4 p1, 0x0

    :cond_26
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/transsion/camera/feature/common/utils/Utils;->setOrientation(Landroid/view/View;IZ)V

    return-void
.end method

.method protected abstract updateUI()V
.end method
