.class Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$ProcessingOrQueuingViewHolder;
.super Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$RequestViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProcessingOrQueuingViewHolder"
.end annotation


# instance fields
.field private final mProgress:Landroid/widget/TextView;

.field private final mProgressBar:Landroid/widget/ProgressBar;

.field private final mTerminateButton:Landroid/view/View;

.field final synthetic this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;


# direct methods
.method public static synthetic $r8$lambda$kAD0waU50eXY2edfqASxVTmNUOQ(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$ProcessingOrQueuingViewHolder;Lcom/transsion/camera/app/common/ai/AIRequest;Landroid/view/View;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$ProcessingOrQueuingViewHolder;->lambda$bindView$0(Lcom/transsion/camera/app/common/ai/AIRequest;Landroid/view/View;)V

    return-void
.end method

.method private constructor <init>(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;Landroid/view/View;)V
    .registers 3

    .line 339
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$ProcessingOrQueuingViewHolder;->this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;

    .line 340
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$RequestViewHolder;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;Landroid/view/View;)V

    .line 341
    sget p1, Lcom/transsion/camera/featurelibs/aicommon/R$id;->ai_fragment_list_item_progressbar:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$ProcessingOrQueuingViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    .line 343
    sget p1, Lcom/transsion/camera/featurelibs/aicommon/R$id;->ai_fragment_list_item_content_progress:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$ProcessingOrQueuingViewHolder;->mProgress:Landroid/widget/TextView;

    .line 344
    sget p1, Lcom/transsion/camera/featurelibs/aicommon/R$id;->ai_fragment_list_item_terminate:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$ProcessingOrQueuingViewHolder;->mTerminateButton:Landroid/view/View;

    const p0, 0x3f4ccccd    # 0.8f

    const/4 p2, 0x0

    .line 346
    invoke-static {p1, p0, p2}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;Landroid/view/View;Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$ProcessingOrQueuingViewHolder;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$bindView$0(Lcom/transsion/camera/app/common/ai/AIRequest;Landroid/view/View;)V
    .registers 3

    .line 360
    invoke-static {p2}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_7

    return-void

    .line 363
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$ProcessingOrQueuingViewHolder;->this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;

    invoke-static {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;->-$$Nest$fgetmRequestOperator(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;)Lcom/transsion/camera/featurelibs/aicommon/ui/request/IRequestOperator;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/IRequestOperator;->terminate(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    return-void
.end method


# virtual methods
.method bindView(Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;)V
    .registers 6

    .line 351
    invoke-super {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$RequestViewHolder;->bindView(Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;)V

    .line 353
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;->request()Lcom/transsion/camera/app/common/ai/AIRequest;

    move-result-object p1

    .line 355
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$ProcessingOrQueuingViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 356
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$ProcessingOrQueuingViewHolder;->mProgress:Landroid/widget/TextView;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/featurelibs/aicommon/R$string;->ai_fragment_list_item_process:I

    .line 357
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ai/AIRequest;->getProgress()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 356
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$ProcessingOrQueuingViewHolder;->mTerminateButton:Landroid/view/View;

    new-instance v1, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$ProcessingOrQueuingViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$ProcessingOrQueuingViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$ProcessingOrQueuingViewHolder;Lcom/transsion/camera/app/common/ai/AIRequest;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method bindView(Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;Ljava/util/List;)V
    .registers 4

    if-eqz p2, :cond_2f

    .line 368
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2f

    :cond_9
    const/4 p1, 0x0

    .line 371
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 373
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$ProcessingOrQueuingViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 374
    iget-object p2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$ProcessingOrQueuingViewHolder;->mProgress:Landroid/widget/TextView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/camera/featurelibs/aicommon/R$string;->ai_fragment_list_item_process:I

    .line 375
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 374
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 369
    :cond_2f
    :goto_2f
    invoke-virtual {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$ProcessingOrQueuingViewHolder;->bindView(Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;)V

    return-void
.end method
