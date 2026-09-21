.class public Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionEventListener;


# instance fields
.field private final mButtonLongPressAction:Lcom/transsion/camera/app/ui/view/manager/ButtonLongPressAction;

.field private final mButtonSwipeLeftAction:Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;

.field private final mButtonSwipeRightAction:Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;

.field private final mButtonSwipeUpAction:Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeUpAction;

.field private final mContext:Landroid/content/Context;

.field private mCurrentModeName:Ljava/lang/String;

.field private final mEventArray:Ljava/util/ArrayList;

.field private mIsCapturing:Z

.field private mIsQuickRecording:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->mEventArray:Ljava/util/ArrayList;

    .line 16
    const-string v0, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    iput-object v0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->mCurrentModeName:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->mContext:Landroid/content/Context;

    .line 26
    new-instance v0, Lcom/transsion/camera/app/ui/view/manager/ButtonLongPressAction;

    invoke-direct {v0, p1, p0}, Lcom/transsion/camera/app/ui/view/manager/ButtonLongPressAction;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionEventListener;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->mButtonLongPressAction:Lcom/transsion/camera/app/ui/view/manager/ButtonLongPressAction;

    .line 27
    new-instance v0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;

    invoke-direct {v0, p1, p0}, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionEventListener;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->mButtonSwipeRightAction:Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;

    .line 28
    new-instance v0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;

    invoke-direct {v0, p1, p0}, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionEventListener;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->mButtonSwipeLeftAction:Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;

    .line 29
    new-instance v0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeUpAction;

    invoke-direct {v0, p1, p0}, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeUpAction;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionEventListener;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->mButtonSwipeUpAction:Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeUpAction;

    return-void
.end method


# virtual methods
.method public onConsume(Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;)V
    .registers 7

    .line 34
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->mEventArray:Ljava/util/ArrayList;

    monitor-enter v0

    .line 35
    :try_start_3
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->mEventArray:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_a
    :goto_a
    if-ge v2, v1, :cond_2d

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;

    .line 36
    instance-of v4, p1, Lcom/transsion/camera/app/ui/view/manager/ButtonLongPressAction;

    if-eqz v4, :cond_23

    .line 37
    instance-of v4, v3, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeUpAction;

    if-eqz v4, :cond_a

    .line 38
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->cancelTouchEvent()V

    .line 39
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    goto :goto_2f

    .line 42
    :cond_23
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 43
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->cancelTouchEvent()V

    goto :goto_a

    .line 47
    :cond_2d
    monitor-exit v0

    return-void

    :goto_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_21

    throw p0
.end method

.method public onScreenFormChanged(IZ)V
    .registers 4

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->mButtonSwipeLeftAction:Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->onScreenFormChanged(IZ)V

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->mButtonSwipeRightAction:Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->onScreenFormChanged(IZ)V

    .line 135
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->mButtonSwipeUpAction:Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeUpAction;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->onScreenFormChanged(IZ)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z
    .registers 12

    .line 66
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->mEventArray:Ljava/util/ArrayList;

    monitor-enter v0

    .line 67
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->mEventArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :cond_c
    :goto_c
    if-ge v5, v2, :cond_54

    .line 70
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;

    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    if-nez v7, :cond_24

    const/4 v7, 0x1

    .line 72
    iput-boolean v7, v6, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->mEnable:Z

    goto :goto_24

    :catchall_22
    move-exception p0

    goto :goto_56

    .line 74
    :cond_24
    :goto_24
    iget-boolean v7, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->mIsCapturing:Z

    if-nez v7, :cond_40

    iget-boolean v7, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->mIsQuickRecording:Z

    if-nez v7, :cond_40

    const-string v7, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    iget-object v8, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->mCurrentModeName:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4a

    const-string v7, "com.transsion.camera.feature.mode.motioncapture.MotionCaptureModeEntry"

    iget-object v8, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->mCurrentModeName:Ljava/lang/String;

    .line 75
    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4a

    .line 76
    :cond_40
    instance-of v7, v6, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;

    if-nez v7, :cond_48

    instance-of v7, v6, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;

    if-eqz v7, :cond_4a

    .line 78
    :cond_48
    iput-boolean v3, v6, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->mEnable:Z

    .line 81
    :cond_4a
    iget-boolean v7, v6, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->mEnable:Z

    if-eqz v7, :cond_c

    .line 82
    invoke-virtual {v6, p1, p2}, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->onTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z

    move-result v6

    or-int/2addr v4, v6

    goto :goto_c

    .line 85
    :cond_54
    monitor-exit v0

    return v4

    :goto_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_3 .. :try_end_57} :catchall_22

    throw p0
.end method

.method public setIsCapturing(Z)V
    .registers 2

    .line 122
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->mIsCapturing:Z

    return-void
.end method

.method public setIsQuickRecording(Z)V
    .registers 2

    .line 126
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->mIsQuickRecording:Z

    if-eqz p1, :cond_9

    .line 128
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->mButtonSwipeRightAction:Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->resetState()V

    :cond_9
    return-void
.end method

.method public setLongPressListener(Lcom/transsion/camera/app/ui/view/manager/ButtonLongPressAction$LongPressListener;)V
    .registers 4

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->mEventArray:Ljava/util/ArrayList;

    monitor-enter v0

    .line 91
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->mButtonLongPressAction:Lcom/transsion/camera/app/ui/view/manager/ButtonLongPressAction;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/ui/view/manager/ButtonLongPressAction;->setLongPressListener(Lcom/transsion/camera/app/ui/view/manager/ButtonLongPressAction$LongPressListener;)V

    .line 92
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->mEventArray:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->mButtonLongPressAction:Lcom/transsion/camera/app/ui/view/manager/ButtonLongPressAction;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public setScreenFormType(I)V
    .registers 3

    .line 52
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->mButtonSwipeLeftAction:Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->setScreenFormType(I)V

    .line 53
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->mButtonSwipeRightAction:Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->setScreenFormType(I)V

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->mButtonSwipeUpAction:Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeUpAction;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->setScreenFormType(I)V

    return-void
.end method

.method public setSwipeLeftListener(Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction$SwipeLeftListener;)V
    .registers 4

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->mEventArray:Ljava/util/ArrayList;

    monitor-enter v0

    .line 98
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->mButtonSwipeLeftAction:Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->setSwipeLeftListener(Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction$SwipeLeftListener;)V

    .line 99
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->mEventArray:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->mButtonSwipeLeftAction:Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public setSwipeRightListener(Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction$SwipeRightListener;)V
    .registers 4

    .line 104
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->mEventArray:Ljava/util/ArrayList;

    monitor-enter v0

    .line 105
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->mButtonSwipeRightAction:Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->setSwipeRightListener(Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction$SwipeRightListener;)V

    .line 106
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->mEventArray:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->mButtonSwipeRightAction:Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public setSwipeUpListener(Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeUpAction$SwipeUpListener;)V
    .registers 4

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->mEventArray:Ljava/util/ArrayList;

    monitor-enter v0

    .line 112
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->mButtonSwipeUpAction:Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeUpAction;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeUpAction;->setSwipeUpListener(Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeUpAction$SwipeUpListener;)V

    .line 113
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->mEventArray:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->mButtonSwipeUpAction:Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeUpAction;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public updateCurrentMode(Ljava/lang/String;)V
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->mCurrentModeName:Ljava/lang/String;

    return-void
.end method

.method public updateOrientation(I)V
    .registers 3

    .line 59
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->mButtonSwipeLeftAction:Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->updateOrientation(I)V

    .line 60
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->mButtonSwipeRightAction:Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->updateOrientation(I)V

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonActionManager;->mButtonSwipeUpAction:Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeUpAction;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->updateOrientation(I)V

    return-void
.end method
