.class public Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogHintUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI$UIHandler;
    }
.end annotation


# static fields
.field private static final AUTO_HIDE_DELAY:I = 0xbb8

.field private static final MSG_VLOG_HIDE_ALL_HINTS:I = 0x3ed

.field private static final MSG_VLOG_HIDE_ALWAYS_HINT:I = 0x3eb

.field private static final MSG_VLOG_HIDE_AUTO_HINT:I = 0x3ec

.field private static final MSG_VLOG_SHOW_ALWAYS_HINT:I = 0x3e9

.field private static final MSG_VLOG_SHOW_AUTO_HINT:I = 0x3ea

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAlwaysHintText:Landroid/widget/TextView;

.field private final mAlwaysInfoStack:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mAutoHideHintText:Landroid/widget/TextView;

.field private final mContext:Landroid/content/Context;

.field private mCorrectOrientation:I

.field private mCurrentAlwaysInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

.field private mCurrentAutoHideInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

.field private mCurrentPage:I

.field private mFixedOrientation:I

.field private mGuidePlayerMarginTopBar:I

.field private mHintRoot:Landroid/widget/FrameLayout;

.field private final mHintRootLayout:Landroid/view/ViewGroup;

.field private mIsAutoInfoShowing:Z

.field private mIsPreviewSwitchValueOn:Z

.field private mIsRecording:Z

.field private mIsVideoGuideShow:Z

.field private mOrientation:I

.field private mRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mScreenFormType:I

.field private mTemplateOrientation:I

.field private final mUIHandler:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI$UIHandler;

.field private mbSegmentDraging:Z


# direct methods
.method static bridge synthetic -$$Nest$mdoHideAllHints(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->doHideAllHints()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideAlwaysHintView(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->hideAlwaysHintView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideAutoHideHintView(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->hideAutoHideHintView(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowAlwaysHintView(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->showAlwaysHintView(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowAutoHideHintView(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->showAutoHideHintView(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 35
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Vlog_HintUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/IAppUI;II)V
    .registers 6

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mIsPreviewSwitchValueOn:Z

    const/4 v1, 0x1

    .line 63
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mIsVideoGuideShow:Z

    .line 64
    iput v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mTemplateOrientation:I

    .line 70
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mCurrentPage:I

    .line 73
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 74
    iput p3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mOrientation:I

    .line 75
    iput p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mScreenFormType:I

    .line 76
    new-instance p2, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI$UIHandler;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI$UIHandler;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI-IA;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mUIHandler:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI$UIHandler;

    .line 77
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    .line 79
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mHintRootLayout:Landroid/view/ViewGroup;

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mContext:Landroid/content/Context;

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_guide_layout_margin_top_bar:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mGuidePlayerMarginTopBar:I

    return-void
.end method

.method private doHideAllHints()V
    .registers 3

    .line 444
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doHideAllHints"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mUIHandler:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 446
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mAlwaysHintText:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->hideHintView(Landroid/widget/TextView;)V

    .line 447
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mAutoHideHintText:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->hideHintView(Landroid/widget/TextView;)V

    .line 448
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 449
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    .line 450
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mCurrentAutoHideInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    const/4 v0, 0x0

    .line 451
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mIsAutoInfoShowing:Z

    return-void
.end method

.method private hideAlwaysHintView()V
    .registers 3

    .line 387
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideAlwaysHintView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mAlwaysHintText:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->hideHintView(Landroid/widget/TextView;)V

    return-void
.end method

.method private hideAutoHideHintView(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;)V
    .registers 4

    .line 406
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideAutoHideHintView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mCurrentAutoHideInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    if-ne p1, v0, :cond_31

    const/4 p1, 0x0

    .line 408
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mIsAutoInfoShowing:Z

    .line 409
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mAutoHideHintText:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->hideHintView(Landroid/widget/TextView;)V

    const/4 p1, 0x0

    .line 410
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mCurrentAutoHideInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    .line 411
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_31

    .line 412
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    if-eqz p1, :cond_31

    .line 413
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 414
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->showAlwaysHintView(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;)V

    :cond_31
    return-void
.end method

.method private hideHintView(Landroid/widget/TextView;)V
    .registers 2

    const/16 p0, 0x8

    .line 439
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x0

    .line 440
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initView()V
    .registers 5

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/vlog/R$layout;->vlog_hint_layout:I

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mHintRootLayout:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 138
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mHintRootLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->vlog_hint_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mHintRoot:Landroid/widget/FrameLayout;

    .line 139
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mHintRootLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->vlog_hint_rotate:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mHintRootLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->vlog_hint_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mAlwaysHintText:Landroid/widget/TextView;

    .line 141
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mHintRootLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->vlog_auto_hide_hint_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mAutoHideHintText:Landroid/widget/TextView;

    return-void
.end method

.method private isOnlySupportTBHover()Z
    .registers 1

    .line 290
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private showAlwaysHintView(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;)V
    .registers 4

    .line 367
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showAlwaysHintView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    if-eqz v0, :cond_1c

    if-eq p1, v0, :cond_1c

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    .line 371
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 372
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 375
    :cond_1c
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mIsAutoInfoShowing:Z

    if-nez v0, :cond_2d

    .line 376
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    .line 377
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 378
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mAlwaysHintText:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->showHintView(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;Landroid/widget/TextView;)V

    return-void

    .line 380
    :cond_2d
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 381
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    :cond_3a
    return-void
.end method

.method private showAutoHideHintView(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;)V
    .registers 4

    .line 392
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showAutoHideHintView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    if-eqz v0, :cond_1a

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 394
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 397
    :cond_1a
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->hideAlwaysHintView()V

    const/4 v0, 0x1

    .line 398
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mIsAutoInfoShowing:Z

    .line 399
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mCurrentAutoHideInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    .line 400
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mAutoHideHintText:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->showHintView(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;Landroid/widget/TextView;)V

    .line 401
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mUIHandler:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI$UIHandler;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 402
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mUIHandler:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI$UIHandler;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private showHintView(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;Landroid/widget/TextView;)V
    .registers 4

    .line 421
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p0, 0x8

    .line 422
    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 426
    :cond_10
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;->isHighlight()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 427
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/feature/vlog/R$color;->vlog_hint_text_color_highlight:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 428
    sget p0, Lcom/transsion/camera/feature/vlog/R$drawable;->vlog_hint_text_layout_highlight_background:I

    invoke-virtual {p2, p0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_37

    .line 430
    :cond_27
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/feature/vlog/R$color;->vlog_hint_text_color:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 431
    sget p0, Lcom/transsion/camera/feature/vlog/R$drawable;->vlog_hint_text_layout_background:I

    invoke-virtual {p2, p0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_37
    const/4 p0, 0x0

    .line 434
    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    .line 435
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateLayoutParams(Z)V
    .registers 14

    .line 145
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-nez p1, :cond_5

    return-void

    .line 148
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 149
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mCorrectOrientation:I

    .line 151
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mIsRecording:Z

    const/4 v2, 0x1

    if-nez v1, :cond_16

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mbSegmentDraging:Z

    if-eqz v1, :cond_1c

    :cond_16
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mScreenFormType:I

    if-ne v1, v2, :cond_1c

    .line 152
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mFixedOrientation:I

    .line 154
    :cond_1c
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 156
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->getScreenManager()Lcom/transsion/camera/app/common/manager/IScreenManager;

    move-result-object v1

    const-wide v4, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    invoke-interface {v1, v4, v5}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getTopBarHeight(D)I

    move-result v1

    .line 157
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mAlwaysHintText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 158
    sget v5, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_hint_default_height:I

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 159
    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 161
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mHintRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    .line 162
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 163
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 164
    invoke-virtual {v5, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 166
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mAlwaysHintText:Landroid/widget/TextView;

    const v6, 0x7fffffff

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 167
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mAutoHideHintText:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 169
    iget v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mScreenFormType:I

    const/16 v6, 0x10e

    const/16 v7, 0x5a

    const/16 v8, 0x31

    if-ne v3, v2, :cond_9b

    .line 170
    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eq v0, v7, :cond_86

    if-eq v0, v6, :cond_86

    .line 181
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mIsRecording:Z

    if-eqz v0, :cond_7c

    sget v0, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_hint_margin_top_expand_0_record:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_82

    .line 182
    :cond_7c
    sget v0, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_hint_margin_top_expand_0_normal:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :goto_82
    iput p1, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_279

    .line 175
    :cond_86
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mIsRecording:Z

    if-eqz v0, :cond_91

    sget v0, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_hint_margin_top_expand_90_record:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_97

    .line 176
    :cond_91
    sget v0, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_hint_margin_top_expand_90_normal:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :goto_97
    iput p1, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_279

    :cond_9b
    const/16 v2, 0xb4

    const/4 v9, 0x3

    const/16 v10, 0x51

    const/4 v11, -0x2

    if-ne v3, v9, :cond_1bc

    const/16 v1, 0x33

    const/16 v3, 0x35

    if-eq v0, v7, :cond_190

    if-eq v0, v2, :cond_13a

    if-eq v0, v6, :cond_103

    .line 227
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mAlwaysHintText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_hint_max_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 228
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mAutoHideHintText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_hint_max_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 230
    iput v11, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 231
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mIsPreviewSwitchValueOn:Z

    if-eqz v0, :cond_ec

    .line 232
    iput v10, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 233
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mIsRecording:Z

    if-eqz v0, :cond_e2

    sget v0, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_hint_margin_bottom_hover_0_recording:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_e8

    .line 234
    :cond_e2
    sget v0, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_hint_margin_bottom_hover_0:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :goto_e8
    iput p1, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_279

    .line 236
    :cond_ec
    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 237
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mIsRecording:Z

    if-eqz v0, :cond_f9

    sget v0, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_hint_margin_top_hover_0_recording:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_ff

    .line 238
    :cond_f9
    sget v0, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_hint_margin_top_hover:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :goto_ff
    iput p1, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_279

    .line 199
    :cond_103
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mIsPreviewSwitchValueOn:Z

    if-eqz v0, :cond_11b

    .line 200
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 201
    sget v0, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_hint_margin_top_90:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 202
    sget v0, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_hint_margin_left_hover_90:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_279

    .line 204
    :cond_11b
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 205
    sget v0, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_hint_margin_top_90:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 206
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mIsVideoGuideShow:Z

    if-eqz v0, :cond_130

    sget v0, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_hint_margin_left_90:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_136

    .line 207
    :cond_130
    sget v0, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_hint_margin_left_video_guide_hide_90:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :goto_136
    iput p1, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_279

    .line 211
    :cond_13a
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mAlwaysHintText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_hint_max_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 212
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mAutoHideHintText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_hint_max_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 214
    iput v11, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 215
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mIsPreviewSwitchValueOn:Z

    if-eqz v0, :cond_179

    .line 216
    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 217
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mIsRecording:Z

    if-eqz v0, :cond_16f

    sget v0, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_hint_margin_bottom_hover_0_recording:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_175

    .line 218
    :cond_16f
    sget v0, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_hint_margin_bottom_hover_0:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :goto_175
    iput p1, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_279

    .line 220
    :cond_179
    iput v10, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 221
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mIsRecording:Z

    if-eqz v0, :cond_186

    sget v0, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_hint_margin_top_hover_0_recording:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_18c

    .line 222
    :cond_186
    sget v0, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_hint_margin_top_hover:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :goto_18c
    iput p1, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_279

    .line 188
    :cond_190
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mIsPreviewSwitchValueOn:Z

    if-eqz v0, :cond_1a8

    .line 189
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 190
    sget v0, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_hint_margin_top_90:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 191
    sget v0, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_hint_margin_left_hover_90:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_279

    .line 193
    :cond_1a8
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 194
    sget v0, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_hint_margin_top_90:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 195
    sget v0, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_hint_margin_left_90:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_279

    :cond_1bc
    if-nez v3, :cond_279

    .line 243
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_hint_margin_top_vertical:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    if-eq v0, v7, :cond_225

    if-eq v0, v2, :cond_1fb

    if-eq v0, v6, :cond_225

    .line 275
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mAlwaysHintText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_hint_max_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 276
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mAutoHideHintText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_hint_max_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 278
    iput v11, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 279
    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    add-int/2addr v1, p1

    .line 280
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_279

    .line 266
    :cond_1fb
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mAlwaysHintText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_hint_max_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 267
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mAutoHideHintText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_hint_max_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 269
    iput v11, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 270
    iput v10, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    add-int/2addr v1, p1

    .line 271
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_279

    .line 247
    :cond_225
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mAlwaysHintText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_guide_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 248
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mAutoHideHintText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_guide_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 250
    iput v11, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 251
    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 252
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_hint_margin_top_horizontal:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 254
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_guide_width:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v0, v7, :cond_272

    const/4 p1, 0x5

    .line 257
    iput p1, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 258
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mGuidePlayerMarginTopBar:I

    add-int/2addr v1, p1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_279

    .line 260
    :cond_272
    iput v9, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 261
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mGuidePlayerMarginTopBar:I

    add-int/2addr v1, p1

    iput v1, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 285
    :cond_279
    :goto_279
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mAlwaysHintText:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mAutoHideHintText:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public hideAllHints()V
    .registers 3

    .line 362
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideAllHints"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 363
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mUIHandler:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI$UIHandler;

    const/16 v0, 0x3ed

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public hideHint(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;)V
    .registers 5

    .line 347
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideHint, info type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 348
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;->getType()I

    move-result v0

    if-eqz v0, :cond_30

    const/4 v1, 0x1

    if-eq v0, v1, :cond_24

    return-void

    .line 353
    :cond_24
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mUIHandler:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI$UIHandler;

    const/16 v0, 0x3ec

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 350
    :cond_30
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mUIHandler:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI$UIHandler;

    const/16 v0, 0x3eb

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public init()V
    .registers 2

    .line 132
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->initView()V

    const/4 v0, 0x0

    .line 133
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->updateLayoutParams(Z)V

    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 5

    const/16 v0, 0x1c

    const/4 v1, 0x0

    if-eq p1, v0, :cond_54

    const/16 v0, 0x2712

    const/4 v2, 0x1

    if-eq p1, v0, :cond_4a

    const/16 v0, 0x2714

    if-eq p1, v0, :cond_54

    const/16 v0, 0x2723

    if-eq p1, v0, :cond_3c

    const/16 v0, 0x2724

    if-eq p1, v0, :cond_32

    packed-switch p1, :pswitch_data_5a

    goto :goto_49

    .line 122
    :pswitch_1a
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mIsVideoGuideShow:Z

    .line 123
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->updateLayoutParams(Z)V

    return-void

    .line 118
    :pswitch_20
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mIsVideoGuideShow:Z

    .line 119
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->updateLayoutParams(Z)V

    return-void

    .line 114
    :pswitch_26
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mIsPreviewSwitchValueOn:Z

    .line 115
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->updateLayoutParams(Z)V

    return-void

    .line 110
    :pswitch_2c
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mIsPreviewSwitchValueOn:Z

    .line 111
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->updateLayoutParams(Z)V

    return-void

    .line 104
    :cond_32
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mbSegmentDraging:Z

    if-eqz p1, :cond_49

    .line 105
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mbSegmentDraging:Z

    .line 106
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->updateLayoutParams(Z)V

    return-void

    .line 97
    :cond_3c
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mScreenFormType:I

    if-ne p1, v2, :cond_49

    .line 98
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mbSegmentDraging:Z

    .line 99
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mCorrectOrientation:I

    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mFixedOrientation:I

    .line 100
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->updateLayoutParams(Z)V

    :cond_49
    :goto_49
    return-void

    .line 87
    :cond_4a
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mIsRecording:Z

    .line 88
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mCorrectOrientation:I

    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mFixedOrientation:I

    .line 89
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->updateLayoutParams(Z)V

    return-void

    .line 93
    :cond_54
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mIsRecording:Z

    .line 94
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->updateLayoutParams(Z)V

    return-void

    :pswitch_data_5a
    .packed-switch 0x271d
        :pswitch_2c
        :pswitch_26
        :pswitch_20
        :pswitch_1a
    .end packed-switch
.end method

.method public onScreenFormChanged(IZ)V
    .registers 4

    .line 533
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mScreenFormType:I

    if-eq v0, p1, :cond_9

    .line 534
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mScreenFormType:I

    .line 535
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->updateLayoutParams(Z)V

    :cond_9
    return-void
.end method

.method public pause()V
    .registers 1

    return-void
.end method

.method public resume()V
    .registers 1

    return-void
.end method

.method public setTemplateOrientation(I)V
    .registers 3

    .line 473
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mTemplateOrientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    const/16 p1, 0x10e

    .line 476
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mCorrectOrientation:I

    goto :goto_d

    :cond_a
    const/4 p1, 0x0

    .line 478
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mCorrectOrientation:I

    .line 481
    :goto_d
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mOrientation:I

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->updateOrientation(I)V

    return-void
.end method

.method public showHint(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;)V
    .registers 5

    .line 331
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showHint, info type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 332
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;->getType()I

    move-result v0

    if-eqz v0, :cond_37

    const/4 v1, 0x1

    if-eq v0, v1, :cond_24

    return-void

    .line 337
    :cond_24
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mUIHandler:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI$UIHandler;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 338
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mUIHandler:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI$UIHandler;

    const/16 v0, 0x3ea

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 334
    :cond_37
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mUIHandler:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI$UIHandler;

    const/16 v0, 0x3e9

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public unInit()V
    .registers 2

    .line 456
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mAlwaysInfoStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    .line 457
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mCurrentAlwaysInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    .line 458
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mCurrentAutoHideInfo:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintInfo;

    const/4 v0, 0x0

    .line 459
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mIsAutoInfoShowing:Z

    .line 460
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mHintRootLayout:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public updateCurrentPage(I)V
    .registers 2

    .line 528
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mCurrentPage:I

    return-void
.end method

.method public updateOrientation(I)V
    .registers 7

    .line 486
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mOrientation:I

    .line 490
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mTemplateOrientation:I

    const/16 v1, 0x10e

    const/16 v2, 0x5a

    const/4 v3, 0x1

    if-ne v0, v3, :cond_12

    if-eq p1, v2, :cond_24

    if-eq p1, v1, :cond_24

    .line 495
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mCorrectOrientation:I

    goto :goto_24

    .line 504
    :cond_12
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mCurrentPage:I

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1d

    if-ne v0, v3, :cond_24

    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mScreenFormType:I

    if-eq v0, v3, :cond_24

    :cond_1d
    if-eq p1, v2, :cond_22

    if-eq p1, v1, :cond_22

    goto :goto_24

    .line 514
    :cond_22
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mCorrectOrientation:I

    .line 522
    :cond_24
    :goto_24
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->mCorrectOrientation:I

    .line 523
    invoke-direct {p0, v3}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogHintUI;->updateLayoutParams(Z)V

    return-void
.end method
