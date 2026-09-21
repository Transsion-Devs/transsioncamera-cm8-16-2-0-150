.class Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$CompletedViewHolder;
.super Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$RequestViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CompletedViewHolder"
.end annotation


# instance fields
.field private final mRadius:F

.field private final mViewButton:Landroid/view/View;

.field final synthetic this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;


# direct methods
.method public static synthetic $r8$lambda$Vd9_l3N5qBqHMqKPiUIxQHPTP4o(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$CompletedViewHolder;Lcom/transsion/camera/app/common/ai/AIRequest;Landroid/view/View;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$CompletedViewHolder;->lambda$bindView$0(Lcom/transsion/camera/app/common/ai/AIRequest;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z7ERxsYG1tLScTtt8slC79Sbd_I(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$CompletedViewHolder;Lcom/transsion/camera/app/common/ai/AIRequest;Landroid/view/View;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$CompletedViewHolder;->lambda$bindView$1(Lcom/transsion/camera/app/common/ai/AIRequest;Landroid/view/View;)V

    return-void
.end method

.method private constructor <init>(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;Landroid/view/View;)V
    .registers 4

    .line 429
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$CompletedViewHolder;->this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;

    .line 430
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$RequestViewHolder;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;Landroid/view/View;)V

    .line 431
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/featurelibs/aicommon/R$dimen;->ai_fragment_list_item_thumbnail_radius_size:I

    .line 432
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$CompletedViewHolder;->mRadius:F

    .line 434
    sget p1, Lcom/transsion/camera/featurelibs/aicommon/R$id;->ai_fragment_list_item_view:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$CompletedViewHolder;->mViewButton:Landroid/view/View;

    const p2, 0x3f4ccccd    # 0.8f

    const/4 v0, 0x0

    .line 436
    invoke-static {p1, p2, v0}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 437
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$RequestViewHolder;->mThumbnail:Landroid/widget/ImageView;

    invoke-static {p0, p2, v0}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;Landroid/view/View;Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$CompletedViewHolder;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$bindView$0(Lcom/transsion/camera/app/common/ai/AIRequest;Landroid/view/View;)V
    .registers 5

    .line 447
    invoke-static {p2}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_7

    return-void

    .line 451
    :cond_7
    invoke-static {}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "viewRequest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 452
    iget-object p2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$CompletedViewHolder;->this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;

    invoke-static {p2}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;->-$$Nest$fgetmRequestOperator(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;)Lcom/transsion/camera/featurelibs/aicommon/ui/request/IRequestOperator;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$RequestViewHolder;->mThumbnail:Landroid/widget/ImageView;

    iget p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$CompletedViewHolder;->mRadius:F

    invoke-interface {p2, p1, v0, p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/IRequestOperator;->view(Lcom/transsion/camera/app/common/ai/AIRequest;Landroid/view/View;F)V

    return-void
.end method

.method private synthetic lambda$bindView$1(Lcom/transsion/camera/app/common/ai/AIRequest;Landroid/view/View;)V
    .registers 5

    .line 456
    invoke-static {p2}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_7

    return-void

    .line 460
    :cond_7
    invoke-static {}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "viewRequest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 461
    iget-object p2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$CompletedViewHolder;->this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;

    invoke-static {p2}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;->-$$Nest$fgetmRequestOperator(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;)Lcom/transsion/camera/featurelibs/aicommon/ui/request/IRequestOperator;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$RequestViewHolder;->mThumbnail:Landroid/widget/ImageView;

    iget p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$CompletedViewHolder;->mRadius:F

    invoke-interface {p2, p1, v0, p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/IRequestOperator;->view(Lcom/transsion/camera/app/common/ai/AIRequest;Landroid/view/View;F)V

    return-void
.end method


# virtual methods
.method bindView(Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;)V
    .registers 4

    .line 442
    invoke-super {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$RequestViewHolder;->bindView(Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;)V

    .line 444
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;->request()Lcom/transsion/camera/app/common/ai/AIRequest;

    move-result-object p1

    .line 446
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$CompletedViewHolder;->mViewButton:Landroid/view/View;

    new-instance v1, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$CompletedViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$CompletedViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$CompletedViewHolder;Lcom/transsion/camera/app/common/ai/AIRequest;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$RequestViewHolder;->mThumbnail:Landroid/widget/ImageView;

    new-instance v1, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$CompletedViewHolder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$CompletedViewHolder$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$CompletedViewHolder;Lcom/transsion/camera/app/common/ai/AIRequest;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
