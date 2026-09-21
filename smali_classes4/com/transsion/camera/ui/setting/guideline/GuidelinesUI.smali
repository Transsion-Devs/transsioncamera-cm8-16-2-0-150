.class public Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI$UIHandler;
    }
.end annotation


# static fields
.field private static final GUIDELINES_VIEW_HIDE:I = 0x1

.field private static final GUIDELINES_VIEW_SHOW:I = 0x3

.field private static final GUIDELINES_VIEW_UNINIT:I = 0x2

.field private static final MSG_UPDATE_GUIDELINES_VIEW:I = 0x64

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mGuidelinesRoot:Landroid/view/ViewGroup;

.field private mGuidelinesView:Lcom/transsion/camera/ui/setting/guideline/GuidelinesView;

.field private final mHandler:Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI$UIHandler;

.field private mPreviewViewRect:Landroid/graphics/Rect;

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;


# direct methods
.method static bridge synthetic -$$Nest$mdoUpdateGuidelinesView(Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->doUpdateGuidelinesView(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowOrHideGuideLinesInThread(Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;ZZ)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->showOrHideGuideLinesInThread(ZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 26
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "GuidelinesUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 3

    .line 41
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 39
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mPreviewViewRect:Landroid/graphics/Rect;

    .line 213
    new-instance p1, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI$1;-><init>(Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 42
    sget-object p1, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "init"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 43
    new-instance p1, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI$UIHandler;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mHandler:Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI$UIHandler;

    return-void
.end method

.method private doUpdateGuidelinesView(I)V
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_b

    const/4 v0, 0x3

    if-eq p1, v0, :cond_7

    return-void

    .line 155
    :cond_7
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->showView()V

    return-void

    .line 152
    :cond_b
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->hideView()V

    return-void
.end method

.method private hideView()V
    .registers 4

    .line 165
    sget-object v0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mGuidelinesView:Lcom/transsion/camera/ui/setting/guideline/GuidelinesView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 166
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->setGuideLinesVisibility(I)V

    return-void
.end method

.method private setGuideLinesVisibility(I)V
    .registers 4

    .line 207
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mGuidelinesView:Lcom/transsion/camera/ui/setting/guideline/GuidelinesView;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_2c

    .line 208
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mGuidelinesView:Lcom/transsion/camera/ui/setting/guideline/GuidelinesView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 209
    sget-object p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setGuideLinesVisibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_20

    const-string p1, "VISIBLE"

    goto :goto_22

    :cond_20
    const-string p1, "INVISIBLE"

    :goto_22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_2c
    return-void
.end method

.method private showOrHideGuideLinesInThread(Z)V
    .registers 3

    const/4 v0, 0x1

    .line 222
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->showOrHideGuideLinesInThread(ZZ)V

    return-void
.end method

.method private showOrHideGuideLinesInThread(ZZ)V
    .registers 8

    .line 226
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mHandler:Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 227
    sget-object v0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showOrHideGuideLinesInThread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", delay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0xc8

    const/16 v4, 0x64

    if-eqz p1, :cond_3e

    .line 229
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mHandler:Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI$UIHandler;

    const/4 p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    if-eqz p2, :cond_3a

    move-wide v0, v2

    :cond_3a
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 231
    :cond_3e
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mHandler:Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI$UIHandler;

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    if-eqz p2, :cond_4c

    move-wide v0, v2

    :cond_4c
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private showView()V
    .registers 4

    .line 170
    sget-object v0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mGuidelinesView:Lcom/transsion/camera/ui/setting/guideline/GuidelinesView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 171
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->updateRootLayoutRect()V

    const/4 v0, 0x0

    .line 172
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->setGuideLinesVisibility(I)V

    return-void
.end method

.method private updateRootLayoutRect()V
    .registers 6

    .line 179
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 183
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 184
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 185
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 186
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iput p0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 187
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 48
    sget-object v0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doCreateEntryView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 49
    sget v0, Lcom/transsion/camera/R$layout;->guidelines:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 50
    sget p2, Lcom/transsion/camera/R$id;->guideline_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mGuidelinesRoot:Landroid/view/ViewGroup;

    .line 51
    sget p2, Lcom/transsion/camera/R$id;->img_guideline:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/ui/setting/guideline/GuidelinesView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mGuidelinesView:Lcom/transsion/camera/ui/setting/guideline/GuidelinesView;

    return-object p1
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getGuidelinesRoot()Landroid/view/ViewGroup;
    .registers 1

    .line 236
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mGuidelinesRoot:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 66
    const-string p0, "key_guidelines"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 74
    :cond_6
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideEntryView()V
    .registers 2

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->showOrHideGuideLinesInThread(Z)V

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
    .registers 2

    const/16 p0, 0x1c

    if-ne p1, p0, :cond_b

    .line 201
    sget-object p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "ACTION_ACTIVITY_PAUSE"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_b
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

    .line 90
    sget-object v0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "setDeviceSetting"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 91
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_11

    .line 93
    const-string p0, "mDeviceSetting is null!"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 95
    :cond_11
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "on"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->showOrHideGuideLinesInThread(ZZ)V

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
    .registers 3

    .line 101
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-nez p1, :cond_c

    .line 103
    sget-object p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mStatusMonitor is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 106
    :cond_c
    const-string v0, "key_guidelines"

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public setupEntryView()V
    .registers 1

    return-void
.end method

.method public unInit()V
    .registers 4

    .line 80
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_e

    .line 82
    const-string v1, "key_guidelines"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_e
    const/4 v0, 0x4

    .line 84
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->setGuideLinesVisibility(I)V

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mHandler:Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI$UIHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public updateCameraState(I)V
    .registers 3

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1e

    .line 192
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_1e

    .line 193
    sget-object p1, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "updateCameraState DEVICE_STATE_PREVIEWED"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 194
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "on"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->showOrHideGuideLinesInThread(ZZ)V

    :cond_1e
    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 5

    .line 111
    sget-object v0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePreviewRect, preview view rect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", preview view width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 114
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->updateRootLayoutRect()V

    return-void
.end method
