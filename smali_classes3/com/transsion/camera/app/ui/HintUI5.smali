.class public Lcom/transsion/camera/app/ui/HintUI5;
.super Lcom/transsion/camera/app/ui/HintUI;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mHintUIHolder:Lcom/transsion/camera/app/ui/IHintUIHolder;


# direct methods
.method public static synthetic $r8$lambda$U2rSD1nhSBACFAUzAwY8ECZtg0k(Lcom/transsion/camera/app/ui/HintUI5;Z)Landroid/graphics/Rect;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/HintUI5;->lambda$getCommonHintRootPaddingTopDst$0(Z)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VdWsK2ceNdwEw1znkj7BID4ALJU(Lcom/transsion/camera/app/ui/HintUI5;Lcom/transsion/camera/app/common/ui/HintInfo;Z)Landroid/graphics/Rect;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/HintUI5;->lambda$getCommonHintRootPaddingTopDst$1(Lcom/transsion/camera/app/common/ui/HintInfo;Z)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 15
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "HintUI5"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/HintUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V
    .registers 3

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/HintUI;-><init>(Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V

    .line 21
    new-instance p1, Lcom/transsion/camera/app/ui/HintUIHolder;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/HintUIHolder;-><init>(Lcom/transsion/camera/app/ui/AbstractHintUI;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/HintUI5;->mHintUIHolder:Lcom/transsion/camera/app/ui/IHintUIHolder;

    .line 22
    instance-of p0, p2, Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p0, :cond_13

    .line 23
    check-cast p2, Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/ui/IHintUIHolder;->init(Lcom/transsion/camera/app/common/IAppUI;)V

    :cond_13
    return-void
.end method

.method static synthetic access$001(Lcom/transsion/camera/app/ui/HintUI5;Lcom/transsion/camera/app/common/ui/HintInfo;Z)Landroid/graphics/Rect;
    .registers 3

    .line 14
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCommonHintRootPaddingTopDst(Lcom/transsion/camera/app/common/ui/HintInfo;Z)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$101(Lcom/transsion/camera/app/ui/HintUI5;Z)Landroid/graphics/Rect;
    .registers 2

    .line 14
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCommonHintRootPaddingTopDst(Z)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getCommonHintRootPaddingTopDst$0(Z)Landroid/graphics/Rect;
    .registers 2

    .line 42
    # invokes: Lcom/transsion/camera/app/ui/AbstractHintUI;->getCommonHintRootPaddingTopDst(Z)Landroid/graphics/Rect;
    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/HintUI5;->access$101(Lcom/transsion/camera/app/ui/HintUI5;Z)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getCommonHintRootPaddingTopDst$1(Lcom/transsion/camera/app/common/ui/HintInfo;Z)Landroid/graphics/Rect;
    .registers 3

    .line 48
    # invokes: Lcom/transsion/camera/app/ui/AbstractHintUI;->getCommonHintRootPaddingTopDst(Lcom/transsion/camera/app/common/ui/HintInfo;Z)Landroid/graphics/Rect;
    invoke-static {p0, p1, p2}, Lcom/transsion/camera/app/ui/HintUI5;->access$001(Lcom/transsion/camera/app/ui/HintUI5;Lcom/transsion/camera/app/common/ui/HintInfo;Z)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAnimatorUpdateListener(Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;)Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;
    .registers 2

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUI5;->mHintUIHolder:Lcom/transsion/camera/app/ui/IHintUIHolder;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$UnionValueAnimatorUpdateListener;->getAnimatorUpdateListener(Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;)Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;

    move-result-object p0

    return-object p0
.end method

.method protected getCommonHintRootPaddingTopDst(Lcom/transsion/camera/app/common/ui/HintInfo;Z)Landroid/graphics/Rect;
    .registers 6

    .line 47
    sget-object v0, Lcom/transsion/camera/app/ui/HintUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCommonHintRootPaddingTopDst: info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", animation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI5;->mHintUIHolder:Lcom/transsion/camera/app/ui/IHintUIHolder;

    new-instance v1, Lcom/transsion/camera/app/ui/HintUI5$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/camera/app/ui/HintUI5$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/HintUI5;Lcom/transsion/camera/app/common/ui/HintInfo;Z)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/ui/IHintUIHolder;->updateHintRootLayout(Ljava/util/function/Supplier;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method protected getCommonHintRootPaddingTopDst(Z)Landroid/graphics/Rect;
    .registers 5

    .line 41
    sget-object v0, Lcom/transsion/camera/app/ui/HintUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCommonHintRootPaddingTopDst: animation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI5;->mHintUIHolder:Lcom/transsion/camera/app/ui/IHintUIHolder;

    new-instance v1, Lcom/transsion/camera/app/ui/HintUI5$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/app/ui/HintUI5$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/HintUI5;Z)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/ui/IHintUIHolder;->updateHintRootLayout(Ljava/util/function/Supplier;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method protected getGuideTwinkleDuration()J
    .registers 3

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUI5;->mHintUIHolder:Lcom/transsion/camera/app/ui/IHintUIHolder;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IHintUIHolder;->getGuideTwinkleDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method protected initTwinkleGuideImageLayout()Landroid/widget/ImageView;
    .registers 2

    .line 70
    invoke-super {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->initTwinkleGuideImageLayout()Landroid/widget/ImageView;

    move-result-object p0

    const/16 v0, 0x8

    .line 71
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object p0
.end method

.method protected isTwinkleGuildShowed(Lcom/transsion/camera/app/common/storage/DataStore;Ljava/lang/String;)Z
    .registers 3

    .line 89
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUI5;->mHintUIHolder:Lcom/transsion/camera/app/ui/IHintUIHolder;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IHintUIHolder;->isTwinkleGuildShowed(Lcom/transsion/camera/app/common/storage/DataStore;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 3

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI5;->mHintUIHolder:Lcom/transsion/camera/app/ui/IHintUIHolder;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/ui/IHintUIHolder;->notifyCameraOperateActionToUI(I)V

    .line 106
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->notifyCameraOperateActionToUI(I)V

    return-void
.end method

.method protected setTwinkleGuildState(Lcom/transsion/camera/app/common/storage/DataStore;Ljava/lang/String;)V
    .registers 3

    .line 94
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUI5;->mHintUIHolder:Lcom/transsion/camera/app/ui/IHintUIHolder;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IHintUIHolder;->setTwinkleGuildState(Lcom/transsion/camera/app/common/storage/DataStore;Ljava/lang/String;)V

    return-void
.end method

.method public setupViews()V
    .registers 2

    .line 64
    invoke-super {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->setupViews()V

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateLayout(Z)V

    return-void
.end method

.method public unInit()V
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI5;->mHintUIHolder:Lcom/transsion/camera/app/ui/IHintUIHolder;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IHintUIHolder;->unInit()V

    .line 30
    invoke-super {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->unInit()V

    return-void
.end method

.method protected updateAnalytics(ZZ)V
    .registers 5

    .line 99
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateAnalytics(ZZ)V

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI5;->mHintUIHolder:Lcom/transsion/camera/app/ui/IHintUIHolder;

    new-instance v1, Lcom/transsion/camera/app/ui/HintUI5$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/HintUI5$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ui/HintUI5;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/transsion/camera/app/ui/IHintUIHolder;->updateAnalytics(ZZLjava/util/function/BiConsumer;)V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 2

    .line 59
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUI5;->mHintUIHolder:Lcom/transsion/camera/app/ui/IHintUIHolder;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/IHintUIHolder;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updatePreviewRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public updateProgressBarLayout(IZI)V
    .registers 4

    .line 35
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateProgressBarLayout(IZI)V

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUI5;->mHintUIHolder:Lcom/transsion/camera/app/ui/IHintUIHolder;

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/IHintUIHolder;->updateProgressBarLayout(IZI)V

    return-void
.end method

.method protected updateTwinkleGuideInfo(Ljava/lang/String;)V
    .registers 3

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI5;->mHintUIHolder:Lcom/transsion/camera/app/ui/IHintUIHolder;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/ui/IHintUIHolder;->updateTwinkleGuideInfo(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 78
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->updateTwinkleGuideInfo(Ljava/lang/String;)V

    :cond_b
    return-void
.end method
