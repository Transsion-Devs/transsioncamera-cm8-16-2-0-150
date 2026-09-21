.class public Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAvailableHeight:I

.field private mAvailableWidth:I

.field private mOrientation:I

.field private mScreenFormType:I

.field private final mUpdateHelper:Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;

.field private mViewMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$RB8lxdMZ_IV8R3dzerqqCsEFDvo(Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;->lambda$onLayout$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 19
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 24
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;->mOrientation:I

    .line 40
    new-instance p1, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;->mUpdateHelper:Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;

    return-void
.end method

.method private getAvailableWidth()I
    .registers 3

    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method private synthetic lambda$onLayout$0()V
    .registers 6

    .line 49
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;->mViewMap:Ljava/util/Map;

    if-nez v0, :cond_c

    .line 50
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "The top bar is already updated"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 54
    :cond_c
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLayout update availableWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;->getAvailableWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;->mUpdateHelper:Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;

    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;->mAvailableWidth:I

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;->mAvailableHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;->setContainerWidthAndHeight(II)V

    .line 57
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;->mUpdateHelper:Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;->mViewMap:Ljava/util/Map;

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;->mOrientation:I

    iget v3, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;->mScreenFormType:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3c

    move v3, v4

    goto :goto_3d

    :cond_3c
    const/4 v3, 0x0

    :goto_3d
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;->update(Ljava/util/Map;IZZ)V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;->mViewMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public initWidthAndHeight(II)V
    .registers 3

    .line 91
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;->mAvailableWidth:I

    .line 92
    iput p2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;->mAvailableHeight:I

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 45
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 47
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;->mViewMap:Ljava/util/Map;

    if-eqz p1, :cond_f

    .line 48
    new-instance p1, Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_f
    return-void
.end method

.method public setPaddingByTopBarScroll(IIII)V
    .registers 8

    .line 96
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPaddingByToolbarScroll left: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", top: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", right: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bottom: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 97
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;->mScreenFormType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_38

    const/4 p1, 0x0

    .line 98
    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void

    .line 100
    :cond_38
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public updateOrientation(I)V
    .registers 2

    .line 77
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;->mOrientation:I

    return-void
.end method

.method public updateScreenFormType(I)V
    .registers 2

    .line 81
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;->mScreenFormType:I

    return-void
.end method

.method public updateTopBar(Ljava/util/Map;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .line 65
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateTopBar] mAvailableWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;->mAvailableWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mAvailableHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;->mAvailableHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", viewMap.size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 68
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;->mViewMap:Ljava/util/Map;

    .line 69
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;->mAvailableWidth:I

    if-lez v0, :cond_49

    .line 70
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;->mUpdateHelper:Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;->mAvailableHeight:I

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;->setContainerWidthAndHeight(II)V

    .line 71
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;->mUpdateHelper:Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;

    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;->mOrientation:I

    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;->mScreenFormType:I

    const/4 v2, 0x1

    if-eq p0, v2, :cond_45

    goto :goto_46

    :cond_45
    const/4 v2, 0x0

    :goto_46
    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;->update(Ljava/util/Map;IZZ)V

    :cond_49
    return-void
.end method
