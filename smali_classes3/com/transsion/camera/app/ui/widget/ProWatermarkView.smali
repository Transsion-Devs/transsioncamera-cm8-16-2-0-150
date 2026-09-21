.class public abstract Lcom/transsion/camera/app/ui/widget/ProWatermarkView;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mContext:Landroid/content/Context;

.field protected mCurrentModeName:Ljava/lang/String;

.field public mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field public mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field public mIndex:I

.field public mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

.field public mLocationPermission:Lcom/transsion/camera/app/common/permission/PermissionManager;

.field public mSettingProvide:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

.field public mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field public mWatermarkView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;)V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->createView(Landroid/view/LayoutInflater;)V

    return-void
.end method


# virtual methods
.method public createView(Landroid/view/LayoutInflater;)V
    .registers 4

    .line 43
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->getLayoutId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mWatermarkView:Landroid/view/View;

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getIndex()I
    .registers 1

    .line 59
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mIndex:I

    return p0
.end method

.method abstract getLayoutId()I
.end method

.method abstract getProWatermarkValue()Ljava/lang/String;
.end method

.method public getWatermarkView()Landroid/view/View;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mWatermarkView:Landroid/view/View;

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 3

    .line 33
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mContext:Landroid/content/Context;

    .line 34
    new-instance v0, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 35
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->initDefaultValue()V

    return-void
.end method

.method abstract initDefaultValue()V
.end method

.method abstract onDestroy()V
.end method

.method abstract onPause()V
.end method

.method abstract onResume()V
.end method

.method public abstract onSelected()V
.end method

.method public onUnSelected()V
    .registers 1

    return-void
.end method

.method public setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method

.method public setIndex(I)V
    .registers 2

    .line 63
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mIndex:I

    return-void
.end method

.method public setLocationManager(Lcom/transsion/camera/app/common/location/LocationManager;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    return-void
.end method

.method public setLocationPermission(Lcom/transsion/camera/app/common/permission/PermissionManager;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mLocationPermission:Lcom/transsion/camera/app/common/permission/PermissionManager;

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setSettingProvide(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;)V
    .registers 2

    .line 95
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mSettingProvide:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    return-void
.end method

.method abstract setUpView()V
.end method

.method public setUpViews()V
    .registers 1

    .line 83
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->setUpView()V

    return-void
.end method

.method abstract updateCoverViewState(Z)V
.end method

.method public updateCurrentMode(Ljava/lang/String;)V
    .registers 2

    .line 87
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mCurrentModeName:Ljava/lang/String;

    return-void
.end method

.method public updateSelectedState(I)V
    .registers 3

    .line 67
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->mIndex:I

    if-ne v0, p1, :cond_8

    .line 68
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->onSelected()V

    return-void

    .line 70
    :cond_8
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->onUnSelected()V

    return-void
.end method

.method abstract updateWatermarkState(Z)V
.end method
