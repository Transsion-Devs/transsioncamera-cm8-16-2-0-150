.class public Lcom/transsion/camera/app/ui/MorePanelUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/IModePanelUI;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAllModeResources:Ljava/util/List;

.field private mCamera:Ljava/lang/String;

.field private mItems:Ljava/util/List;

.field private mMoreModeLayoutContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private final mMoreView:Lcom/transsion/camera/app/ui/mode/more/MoreView;

.field private mRootView:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 35
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MorePanelUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/MorePanelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/mode/ModeOrderProvider;Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;)V
    .registers 12

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/transsion/camera/app/ui/mode/more/MoreView;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/ui/mode/more/MoreView;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/mode/ModeOrderProvider;Lcom/transsion/camera/app/common/IAppUIControl$IModePickerControl;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mMoreView:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    return-void
.end method


# virtual methods
.method public hide()V
    .registers 4

    .line 136
    sget-object v0, Lcom/transsion/camera/app/ui/MorePanelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "hide: "

    invoke-static {v0, v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_22

    .line 138
    iget-object v0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mMoreView:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->hideMoreView()V

    .line 139
    iget-object p0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_22
    return-void
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    .line 57
    sget v0, Lcom/transsion/camera/R$id;->more_mode_layout_root:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mRootView:Landroid/view/ViewGroup;

    .line 58
    sget v0, Lcom/transsion/camera/R$id;->more_mode_layout_container:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mMoreModeLayoutContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 59
    iget-object v0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mMoreView:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p0, p2}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/ui/widget/RotateLayout;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public isPopSettingShow(Z)V
    .registers 2

    .line 251
    iget-object p0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mMoreView:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->isPopSettingShow(Z)V

    return-void
.end method

.method public notifyListTypeUpdate()V
    .registers 1

    .line 225
    iget-object p0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mMoreView:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->switchItemType()V

    return-void
.end method

.method public notifyWindowsHasFocus(Z)V
    .registers 2

    .line 273
    iget-object p0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mMoreView:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    if-eqz p0, :cond_7

    .line 274
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->notifyWindowsHasFocus(Z)V

    :cond_7
    return-void
.end method

.method public onBackPressed()Z
    .registers 1

    .line 174
    iget-object p0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mMoreView:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onOrientationChanged(I)V
    .registers 5

    .line 240
    sget-object v0, Lcom/transsion/camera/app/ui/MorePanelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChanged, orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 241
    iget-object p0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mMoreView:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->onOrientationChanged(I)V

    return-void
.end method

.method public pause()V
    .registers 1

    .line 202
    iget-object p0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mMoreView:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    if-eqz p0, :cond_7

    .line 203
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->resetDragAndDropState()V

    :cond_7
    return-void
.end method

.method public performTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 266
    iget-object p0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mMoreView:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    if-eqz p0, :cond_7

    .line 267
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->performTouchEvent(Landroid/view/MotionEvent;)V

    :cond_7
    return-void
.end method

.method public reInflateMoreView()V
    .registers 4

    .line 209
    iget-object v0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mMoreView:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    if-eqz v0, :cond_17

    iget-object v1, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mRootView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mMoreModeLayoutContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-nez v1, :cond_d

    goto :goto_17

    .line 220
    :cond_d
    iget-object v1, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mItems:Ljava/util/List;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mAllModeResources:Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mCamera:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->setModeList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-void

    .line 210
    :cond_17
    :goto_17
    sget-object p0, Lcom/transsion/camera/app/ui/MorePanelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "reInflateMoreView: mMoreView, mRootView, mMoreModeLayoutContainer is null, return"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public refreshModePanelView()V
    .registers 1

    return-void
.end method

.method public resetMoreModeToNormal()V
    .registers 2

    .line 195
    iget-object v0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mMoreView:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->resetMoreModeToNormal()V

    .line 196
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/MorePanelUI;->reInflateMoreView()V

    .line 197
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/MorePanelUI;->hide()V

    return-void
.end method

.method public restoreView()V
    .registers 1

    .line 184
    iget-object p0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mMoreView:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->restoreView()V

    return-void
.end method

.method public setAppUIRect(Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V
    .registers 2

    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .registers 2

    return-void
.end method

.method public setClickModeIconListener(Lcom/transsion/camera/app/common/IAppUIListener$INotifyClickModeIconListener;)V
    .registers 2

    .line 112
    iget-object p0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mMoreView:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->setClickModeIconListener(Lcom/transsion/camera/app/common/IAppUIListener$INotifyClickModeIconListener;)V

    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    .line 256
    iget-object p0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mMoreView:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->setEnable(Z)V

    return-void
.end method

.method public setIsModeSwitching(Z)V
    .registers 2

    .line 280
    iget-object p0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mMoreView:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    if-eqz p0, :cond_7

    .line 281
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->setIsModeSwitching(Z)V

    :cond_7
    return-void
.end method

.method public setModeChangedListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V
    .registers 2

    .line 107
    iget-object p0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mMoreView:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->setModeChangedListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V

    return-void
.end method

.method public setModeList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .registers 4

    .line 84
    iput-object p1, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mItems:Ljava/util/List;

    .line 85
    iput-object p2, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mAllModeResources:Ljava/util/List;

    .line 86
    iput-object p3, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mCamera:Ljava/lang/String;

    .line 87
    iget-object p0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mMoreView:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->setModeList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public setModeNameBeforeSwitchMoreMode(Ljava/lang/String;)V
    .registers 2

    .line 230
    iget-object p0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mMoreView:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->setModeNameBeforeSwitchMoreMode(Ljava/lang/String;)V

    return-void
.end method

.method public setModePanelGuideEnable(Z)V
    .registers 2

    return-void
.end method

.method public setOnScrollListener(Lcom/transsion/camera/app/ui/mode/more/MoreView$IMorePanelScrollListener;)V
    .registers 2

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mMoreView:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->setMorePanelScrollListener(Lcom/transsion/camera/app/ui/mode/more/MoreView$IMorePanelScrollListener;)V

    return-void
.end method

.method public setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .registers 2

    .line 179
    iget-object p0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mMoreView:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void
.end method

.method public setViewEnable(Z)V
    .registers 2

    .line 235
    iget-object p0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mMoreView:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->setViewEnable(Z)V

    return-void
.end method

.method public setupViews()V
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mMoreView:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->setupViews()V

    return-void
.end method

.method public show()V
    .registers 3

    .line 127
    sget-object v0, Lcom/transsion/camera/app/ui/MorePanelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "show: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1c

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mRootView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 130
    iget-object p0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mMoreView:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->showMoreView()V

    :cond_1c
    return-void
.end method

.method public shrinkModePanel()V
    .registers 1

    return-void
.end method

.method public spreadModePanel()V
    .registers 1

    return-void
.end method

.method public unInit()V
    .registers 1

    return-void
.end method

.method public updateCurrentCamera(Ljava/lang/String;)V
    .registers 2

    .line 189
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/MorePanelUI;->reInflateMoreView()V

    return-void
.end method

.method public updateCurrentMode(Ljava/lang/String;)V
    .registers 2

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/app/ui/MorePanelUI;->mMoreView:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->updateCurrentMode(Ljava/lang/String;)V

    return-void
.end method

.method public updateItemClickable(Z)V
    .registers 2

    return-void
.end method
