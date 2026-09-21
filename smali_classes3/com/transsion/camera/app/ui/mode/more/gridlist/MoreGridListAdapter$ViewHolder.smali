.class public Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field private mAnimFlag:Z

.field private final mContentLeftMargin:I

.field private mMoreGridBackground:Landroid/widget/ImageView;

.field private mMoreGridItemIcon:Landroid/widget/ImageView;

.field private mMoreGridItemTitle:Landroid/widget/TextView;

.field private mMoreGridSellingPoint:Landroid/widget/ImageView;

.field private mMoreLinearContent:Landroid/view/View;

.field private mMoreLinearModeDesc:Landroid/widget/TextView;

.field private mMoreLinearModeIcon:Landroid/widget/ImageView;

.field private mMoreLinearModeTitle:Landroid/widget/TextView;

.field private mMoreLinearRootLayout:Landroid/widget/RelativeLayout;

.field private mMoreLinearSellingPoint:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;


# direct methods
.method public static synthetic $r8$lambda$0TMMHYoTnpWigSOa01qUZ67clck(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->lambda$initializeListener$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JcVOUKX83hXAXHy_cFU8uNwR8Do(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;Landroid/view/View;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->lambda$initializeListener$0(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAnimFlag(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mAnimFlag:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMoreGridBackground(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Landroid/widget/ImageView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mMoreGridBackground:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMoreGridItemIcon(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Landroid/widget/ImageView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mMoreGridItemIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMoreGridItemTitle(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Landroid/widget/TextView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mMoreGridItemTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMoreGridSellingPoint(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Landroid/widget/ImageView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mMoreGridSellingPoint:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMoreLinearModeDesc(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Landroid/widget/TextView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mMoreLinearModeDesc:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMoreLinearModeIcon(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Landroid/widget/ImageView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mMoreLinearModeIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMoreLinearModeTitle(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Landroid/widget/TextView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mMoreLinearModeTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMoreLinearRootLayout(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Landroid/widget/RelativeLayout;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mMoreLinearRootLayout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMoreLinearSellingPoint(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Landroid/widget/ImageView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mMoreLinearSellingPoint:Landroid/widget/ImageView;

    return-object p0
.end method

.method constructor <init>(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;Landroid/view/View;I)V
    .registers 5

    .line 337
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->this$0:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    .line 338
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 339
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$dimen;->more_linear_content_left_margin:I

    .line 340
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mContentLeftMargin:I

    const/4 p1, 0x2

    if-ne p3, p1, :cond_4f

    .line 342
    sget p1, Lcom/transsion/camera/R$id;->more_linear_content:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mMoreLinearContent:Landroid/view/View;

    .line 343
    sget p1, Lcom/transsion/camera/R$id;->more_linear_item_icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mMoreLinearModeIcon:Landroid/widget/ImageView;

    .line 344
    sget p1, Lcom/transsion/camera/R$id;->more_linear_item_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mMoreLinearModeTitle:Landroid/widget/TextView;

    .line 345
    sget p1, Lcom/transsion/camera/R$id;->more_linear_item_desc:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mMoreLinearModeDesc:Landroid/widget/TextView;

    .line 346
    sget p1, Lcom/transsion/camera/R$id;->more_linear_root_layout:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mMoreLinearRootLayout:Landroid/widget/RelativeLayout;

    .line 347
    sget p1, Lcom/transsion/camera/R$id;->more_linear_item_selling_icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mMoreLinearSellingPoint:Landroid/widget/ImageView;

    goto :goto_7a

    :cond_4f
    const/4 p1, 0x1

    if-ne p3, p1, :cond_7a

    .line 349
    sget p1, Lcom/transsion/camera/R$id;->more_grid_item_background:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mMoreGridBackground:Landroid/widget/ImageView;

    .line 350
    sget p1, Lcom/transsion/camera/R$id;->more_grid_item_icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mMoreGridItemIcon:Landroid/widget/ImageView;

    .line 351
    sget p1, Lcom/transsion/camera/R$id;->more_grid_item_text:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mMoreGridItemTitle:Landroid/widget/TextView;

    .line 352
    sget p1, Lcom/transsion/camera/R$id;->more_grid_item_selling_icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mMoreGridSellingPoint:Landroid/widget/ImageView;

    .line 354
    :cond_7a
    :goto_7a
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->initializeListener()V

    return-void
.end method

.method private initializeListener()V
    .registers 3

    .line 358
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 366
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method private synthetic lambda$initializeListener$0(Landroid/view/View;)Z
    .registers 5

    .line 359
    invoke-static {}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSecureCamera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->this$0:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->-$$Nest$fgetmSecureCamera(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->this$0:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->-$$Nest$fgetmEnable(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->this$0:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->-$$Nest$fgetmSecureCamera(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->this$0:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->-$$Nest$fgetmEnable(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;)Z

    move-result v0

    if-nez v0, :cond_3e

    goto :goto_43

    .line 363
    :cond_3e
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->this$0:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->-$$Nest$mstartDragAndDrop(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;Landroid/view/View;)V

    :cond_43
    :goto_43
    return v1
.end method

.method private synthetic lambda$initializeListener$1(Landroid/view/View;)V
    .registers 3

    .line 367
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->this$0:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->-$$Nest$fgetmEnable(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->this$0:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->-$$Nest$fgetmModeChangedListener(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;)Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 368
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->this$0:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->-$$Nest$fgetmModeChangedListener(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;)Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;->onSwitchMode(Ljava/lang/String;)V

    :cond_21
    return-void
.end method


# virtual methods
.method public scaleItem(F)V
    .registers 7

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_6

    return-void

    .line 383
    :cond_6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    div-float v1, v0, p1

    .line 386
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mMoreLinearContent:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleX(F)V

    .line 388
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mMoreLinearRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v4, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mContentLeftMargin:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    sub-float v4, p1, v0

    mul-float/2addr v2, v4

    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mMoreLinearContent:Landroid/view/View;

    .line 389
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    mul-float/2addr v4, p1

    sub-float/2addr v1, v0

    mul-float/2addr v4, v1

    add-float/2addr v2, v4

    .line 391
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mMoreLinearContent:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method public updateAnimFlag(Z)V
    .registers 2

    .line 375
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->mAnimFlag:Z

    return-void
.end method
