.class Lcom/transsion/camera/app/ui/SellingPointGuideUI$UIHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/SellingPointGuideUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation


# instance fields
.field private final mUIReference:Ljava/lang/ref/WeakReference;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)V
    .registers 3

    .line 1191
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1192
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/SellingPointGuideUI;Lcom/transsion/camera/app/ui/SellingPointGuideUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/SellingPointGuideUI$UIHandler;-><init>(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 1197
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/SellingPointGuideUI;

    if-nez p0, :cond_25

    .line 1199
    invoke-static {}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[handleMessage] return. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1203
    :cond_25
    iget p1, p1, Landroid/os/Message;->what:I

    const-wide/16 v0, 0xbb8

    const/16 v2, 0x3e8

    if-eq p1, v2, :cond_4b

    const/16 v2, 0x3e9

    if-eq p1, v2, :cond_32

    return-void

    .line 1213
    :cond_32
    invoke-static {p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->-$$Nest$fgetmFloatingWindowViewPager(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 1215
    invoke-static {p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->-$$Nest$fgetmFloatingWindowViewPager(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 1217
    invoke-static {p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 1205
    :cond_4b
    invoke-static {p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->-$$Nest$fgetmOverlayGuideViewPager(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 1207
    invoke-static {p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->-$$Nest$fgetmOverlayGuideViewPager(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 1209
    invoke-static {p0}, Lcom/transsion/camera/app/ui/SellingPointGuideUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/app/ui/SellingPointGuideUI;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
