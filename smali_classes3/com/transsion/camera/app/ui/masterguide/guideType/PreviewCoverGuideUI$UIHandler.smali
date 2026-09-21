.class Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$UIHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation


# instance fields
.field private final mUIReference:Ljava/lang/ref/WeakReference;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;)V
    .registers 3

    .line 329
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 330
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$UIHandler;-><init>(Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 335
    iget-object p0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;

    if-nez p0, :cond_b

    goto :goto_3a

    .line 339
    :cond_b
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_3a

    .line 340
    invoke-static {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->-$$Nest$fgetmIsDescriptionScroll(Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;)Z

    move-result p1

    if-nez p1, :cond_31

    .line 341
    invoke-static {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->-$$Nest$fgetmPreviewCoverViewPager(Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 342
    invoke-static {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->-$$Nest$fgetmPreviewCoverAdapter(Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;)Lcom/transsion/camera/app/ui/masterguide/adapter/PreviewCoverAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/masterguide/adapter/PreviewCoverAdapter;->getCount()I

    move-result v1

    rem-int/2addr p1, v1

    .line 343
    invoke-static {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->-$$Nest$fgetmPreviewCoverViewPager(Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 345
    :cond_31
    invoke-static {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI;)Lcom/transsion/camera/app/ui/masterguide/guideType/PreviewCoverGuideUI$UIHandler;

    move-result-object p0

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3a
    :goto_3a
    return-void
.end method
