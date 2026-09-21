.class public Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;
.super Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;
.source "SourceFile"


# instance fields
.field private mBottomMarginCoordinate:I

.field private mDescriptionView:Landroid/widget/TextView;

.field private mIconBubbleBgView:Lcom/transsion/camera/app/ui/masterguide/view/IconBubbleBgView;

.field private mIconBubbleClose:Landroid/widget/ImageView;

.field private mIconBubbleGuideLayout:Landroid/widget/FrameLayout;

.field private mIconBubbleRoot:Landroid/widget/FrameLayout;

.field private mLeftMarginCoordinate:I


# direct methods
.method public static synthetic $r8$lambda$jZkNbzbRMI-9_wgjFnUh4FNOy1g(Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->lambda$initData$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qDi_hmZy3HbPTNLNh7oRadW5J7Q(Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->lambda$initData$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qnXXQesLQ1zje0fhO1P4ItAofIs(Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->lambda$updateIconBubbleParams$2()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 6

    .line 33
    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;Lcom/transsion/camera/app/common/storage/DataStore;)V

    const/16 p1, 0x28

    .line 29
    iput p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->mLeftMarginCoordinate:I

    const/16 p1, 0x258

    .line 30
    iput p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->mBottomMarginCoordinate:I

    return-void
.end method

.method private initData()V
    .registers 4

    .line 59
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->mIconBubbleRoot:Landroid/widget/FrameLayout;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    .line 62
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->mDescriptionView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mDescriptions:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->updateIconBubbleParams()V

    .line 65
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->mIconBubbleRoot:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->mIconBubbleClose:Landroid/widget/ImageView;

    new-instance v1, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object p0, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x19e

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method private synthetic lambda$initData$0(Landroid/view/View;)V
    .registers 2

    .line 65
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->hideGuideView()V

    return-void
.end method

.method private synthetic lambda$initData$1(Landroid/view/View;)V
    .registers 2

    .line 66
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->hideGuideView()V

    return-void
.end method

.method private synthetic lambda$updateIconBubbleParams$2()V
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 79
    iget-object v1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->mIconBubbleBgView:Lcom/transsion/camera/app/ui/masterguide/view/IconBubbleBgView;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/ui/masterguide/view/IconBubbleBgView;->updateSize(II)V

    return-void
.end method


# virtual methods
.method public hideGuideView()V
    .registers 2

    .line 87
    invoke-super {p0}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->hideGuideView()V

    .line 88
    iget-object p0, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x19f

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public inflateView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 5

    if-eqz p1, :cond_47

    if-eqz p2, :cond_47

    if-nez p3, :cond_7

    goto :goto_47

    .line 40
    :cond_7
    sget p1, Lcom/transsion/camera/R$layout;->icon_bubble_ui_layout:I

    const/4 v0, 0x1

    invoke-virtual {p3, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 41
    sget p2, Lcom/transsion/camera/R$id;->icon_bubble_guide_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->mIconBubbleGuideLayout:Landroid/widget/FrameLayout;

    .line 42
    sget p2, Lcom/transsion/camera/R$id;->icon_bubble_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->mIconBubbleRoot:Landroid/widget/FrameLayout;

    .line 43
    sget p2, Lcom/transsion/camera/R$id;->icon_bubble_close:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->mIconBubbleClose:Landroid/widget/ImageView;

    .line 44
    sget p2, Lcom/transsion/camera/R$id;->icon_bubble_bg:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/masterguide/view/IconBubbleBgView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->mIconBubbleBgView:Lcom/transsion/camera/app/ui/masterguide/view/IconBubbleBgView;

    .line 45
    sget p2, Lcom/transsion/camera/R$id;->icon_bubble_description:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->mDescriptionView:Landroid/widget/TextView;

    .line 46
    iget-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->mIconBubbleRoot:Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mRootView:Landroid/view/View;

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->mIconBubbleGuideLayout:Landroid/widget/FrameLayout;

    return-object p0

    :cond_47
    :goto_47
    const/4 p0, 0x0

    return-object p0
.end method

.method public setCurrentPictureRatio(Ljava/lang/String;)V
    .registers 2

    .line 99
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->setCurrentPictureRatio(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->updateIconBubbleParams()V

    return-void
.end method

.method public setIconBubbleCoordinate(II)V
    .registers 3

    .line 104
    iput p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->mLeftMarginCoordinate:I

    .line 105
    iput p2, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->mBottomMarginCoordinate:I

    return-void
.end method

.method public showGuideView()V
    .registers 3

    .line 52
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->mIconBubbleRoot:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 53
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    :cond_8
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->initData()V

    return-void
.end method

.method public updateIconBubbleParams()V
    .registers 4

    .line 71
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->mIconBubbleRoot:Landroid/widget/FrameLayout;

    if-nez v0, :cond_5

    return-void

    .line 74
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 75
    iget v1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->mLeftMarginCoordinate:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 76
    iget v1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->mBottomMarginCoordinate:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 77
    iget-object v1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->mDescriptionView:Landroid/widget/TextView;

    new-instance v2, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 82
    iget-object p0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/IconBubbleGuideUI;->mIconBubbleRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
