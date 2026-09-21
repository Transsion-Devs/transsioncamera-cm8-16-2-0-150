.class public Lcom/transsion/camera/feature/arcfilter/setting/ui/SimpleArcFilterSettingUI;
.super Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/recyclerview/IChildController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI<",
        "Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter;",
        "Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemInfo;",
        ">;",
        "Lcom/transsion/camera/app/ui/widget/recyclerview/IChildController;"
    }
.end annotation


# instance fields
.field private mController:Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;

.field private mIsSettingUIClick:Z


# direct methods
.method constructor <init>(Landroid/content/res/Resources;)V
    .registers 2

    .line 22
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;-><init>(Landroid/content/res/Resources;)V

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/SimpleArcFilterSettingUI;->mIsSettingUIClick:Z

    return-void
.end method


# virtual methods
.method public getChildAdapter()Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter;"
        }
    .end annotation

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    check-cast p0, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter;

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getItemInfoList(Ljava/util/List;Z)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;",
            ">;"
        }
    .end annotation

    .line 90
    invoke-static {p1, p2}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->getItemInfoList(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    const/4 v0, 0x0

    .line 89
    invoke-static {p1, v0, p2}, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter;->convertItemInfos(Ljava/util/List;ZI)Ljava/util/List;

    move-result-object p1

    .line 91
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2c

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    if-nez p0, :cond_16

    goto :goto_1c

    :cond_16
    check-cast p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->getCurSelectIndex()I

    move-result v0

    .line 93
    :goto_1c
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    .line 94
    instance-of p2, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemInfo;

    if-eqz p2, :cond_2c

    .line 95
    check-cast p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemInfo;

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemInfo;->setSelected(Z)Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter$ItemInfo;

    :cond_2c
    return-object p1
.end method

.method protected bridge synthetic initRecyclerViewAdapter(Ljava/util/List;)Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;
    .registers 2

    .line 17
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/SimpleArcFilterSettingUI;->initRecyclerViewAdapter(Ljava/util/List;)Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter;

    move-result-object p0

    return-object p0
.end method

.method protected initRecyclerViewAdapter(Ljava/util/List;)Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;",
            ">;)",
            "Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter;"
        }
    .end annotation

    .line 103
    new-instance v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/SimpleArcFilterSettingUI;->mController:Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;

    invoke-direct {v0, p1, p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter;-><init>(Ljava/util/List;Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;)V

    return-object v0
.end method

.method public bridge synthetic isNeedResetPrivacyMode()Z
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/IPrivacyCallback;->isNeedResetPrivacyMode()Z

    move-result p0

    return p0
.end method

.method public isSettingUIClick()Z
    .registers 1

    .line 83
    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/SimpleArcFilterSettingUI;->mIsSettingUIClick:Z

    return p0
.end method

.method protected notifyDataSetChanged()V
    .registers 1

    return-void
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onItemClick(Landroid/view/View;I)V
    .registers 4

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/SimpleArcFilterSettingUI;->mIsSettingUIClick:Z

    .line 34
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->onItemClick(Landroid/view/View;I)V

    .line 35
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mFilterSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    instance-of p2, p1, Lcom/transsion/camera/feature/arcfilter/setting/SimpleArcFilter;

    if-eqz p2, :cond_11

    .line 36
    check-cast p1, Lcom/transsion/camera/feature/arcfilter/setting/SimpleArcFilter;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/arcfilter/setting/SimpleArcFilter;->onValueChangedFromUser(Z)V

    :cond_11
    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/SimpleArcFilterSettingUI;->mIsSettingUIClick:Z

    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setParentSettingUIController(Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/SimpleArcFilterSettingUI;->mController:Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    if-eqz p0, :cond_b

    .line 77
    check-cast p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter;->setController(Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;)V

    :cond_b
    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 3

    .line 51
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 52
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_14

    .line 53
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/SimpleArcFilterSettingUI;->mController:Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;->getColorStyleStatusChangeListener()Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_14
    return-void
.end method

.method public unInit()V
    .registers 3

    .line 43
    invoke-super {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->unInit()V

    .line 44
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_14

    .line 45
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/SimpleArcFilterSettingUI;->mController:Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;->getColorStyleStatusChangeListener()Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_14
    return-void
.end method

.method protected updateArcIndicatorRingScreenLight(Z)V
    .registers 3

    .line 59
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->mFilterRecyclerAdapter:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    if-eqz v0, :cond_15

    .line 60
    check-cast v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/widget/ChildFilterRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->isRingScreenLight()Z

    move-result v0

    if-ne v0, p1, :cond_d

    goto :goto_15

    .line 63
    :cond_d
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->updateArcIndicatorRingScreenLight(Z)V

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/SimpleArcFilterSettingUI;->mController:Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;->notifyColorStyleDataSetChanged()V

    :cond_15
    :goto_15
    return-void
.end method

.method protected updateFilterValueToUI(Ljava/lang/String;)V
    .registers 2

    .line 27
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->updateFilterValueToUI(Ljava/lang/String;)V

    .line 28
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/SimpleArcFilterSettingUI;->mController:Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/widget/recyclerview/IParentController;->notifyColorStyleItemChanged()V

    return-void
.end method
