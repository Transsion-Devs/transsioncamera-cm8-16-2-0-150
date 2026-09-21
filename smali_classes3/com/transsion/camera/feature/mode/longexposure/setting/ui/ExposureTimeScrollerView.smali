.class public Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerView;
.super Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mRunnable:Ljava/lang/Runnable;

.field private mValue:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmValue(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerView;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerView;->mValue:Ljava/lang/String;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 13
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    new-instance p1, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerView$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerView$1;-><init>(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerView;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerView;->mRunnable:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mNeedDoStartScroll:Z

    .line 41
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerView;Ljava/lang/String;)I
    .registers 2

    .line 12
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->getPointXByValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerView;)F
    .registers 1

    .line 12
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerView;II)V
    .registers 3

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->doScroll(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerView;)Z
    .registers 1

    .line 12
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mIsValueAuto:Z

    return p0
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 59
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mValueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 60
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerView;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 46
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public scrollToPosition(Ljava/lang/String;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerView;->mValue:Ljava/lang/String;

    .line 52
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerView;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 53
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerView;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
