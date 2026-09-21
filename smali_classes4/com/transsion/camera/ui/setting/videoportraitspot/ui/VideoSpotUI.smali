.class public Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoSpotUI;
.super Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/content/res/Resources;)V
    .registers 5

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;-><init>(Landroid/view/View;Landroid/content/res/Resources;)V

    .line 29
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz p2, :cond_e

    .line 30
    sget p2, Lcom/transsion/camera/R$layout;->video_spot_scale_layout_ui5:I

    goto :goto_10

    .line 32
    :cond_e
    sget p2, Lcom/transsion/camera/R$layout;->video_spot_scale_layout:I

    .line 34
    :goto_10
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mLayoutInflater:Landroid/view/LayoutInflater;

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 35
    sget p2, Lcom/transsion/camera/R$id;->spot_scale_value_group_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mVideoPortraitSpotRoot:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 36
    sget p2, Lcom/transsion/camera/R$id;->spot_scale_value_group:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mVideoPortraitSpotScaleGroup:Landroid/view/ViewGroup;

    .line 37
    sget p2, Lcom/transsion/camera/R$id;->spot_scale_value_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mVideoPortraitSpotScale:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    .line 38
    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setQuoteByPortraitSpot(Z)V

    .line 39
    new-instance p1, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoSpotUI$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoSpotUI$1;-><init>(Lcom/transsion/camera/ui/setting/videoportraitspot/ui/VideoSpotUI;)V

    .line 53
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mVideoPortraitSpotScale:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setDurationChangedListener(Lcom/transsion/camera/app/ui/widget/IValueChangedListener;)V

    .line 54
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz p1, :cond_52

    .line 55
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mVideoPortraitSpotScale:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setEdgeFadeEnable(Z)V

    goto :goto_57

    .line 57
    :cond_52
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mVideoPortraitSpotScale:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 59
    :goto_57
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mVideoPortraitSpotScale:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setOnTouchMoveListener(Lcom/transsion/camera/app/ui/widget/CommonParamsControlView$OnTouchMoveListener;)V

    return-void
.end method


# virtual methods
.method public initScaleData()V
    .registers 7

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 65
    :goto_7
    sget-object v3, Lcom/transsion/camera/utils/SettingInfo;->BLUR_LEVEL_DATA:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_1d

    .line 66
    new-instance v4, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;

    aget-object v3, v3, v2

    sget-object v5, Lcom/transsion/camera/utils/SettingInfo;->VIDEO_SPOT_DATA:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {v4, v3, v5}, Lcom/transsion/camera/app/ui/widget/PhotoSettingItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 70
    :cond_1d
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    const-string v3, "60"

    if-eqz v2, :cond_33

    .line 71
    new-instance v2, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v1, v4, v4}, Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;-><init>(Ljava/lang/String;ZZI)V

    .line 73
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mVideoPortraitSpotScale:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setScope(Ljava/util/List;Lcom/transsion/camera/app/ui/widget/ScrollerParamsInfo;)V

    goto :goto_39

    .line 75
    :cond_33
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mVideoPortraitSpotScale:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setScope(Ljava/util/List;I)V

    .line 77
    :goto_39
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mVideoPortraitSpotScale:Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setCurrentItem(Ljava/lang/String;)V

    return-void
.end method

.method public onTouchMoveStart()V
    .registers 2

    .line 82
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v0, 0xbe

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onTouchMoveStop()V
    .registers 2

    .line 87
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/ui/AbstractVpsUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v0, 0xbf

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method
