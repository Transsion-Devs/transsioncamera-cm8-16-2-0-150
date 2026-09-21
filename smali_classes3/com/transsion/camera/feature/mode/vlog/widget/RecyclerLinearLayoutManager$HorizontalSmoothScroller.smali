.class Lcom/transsion/camera/feature/mode/vlog/widget/RecyclerLinearLayoutManager$HorizontalSmoothScroller;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/widget/RecyclerLinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HorizontalSmoothScroller"
.end annotation


# static fields
.field private static final MILLISECONDS_PER_INCH:F = 45.0f


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 42
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public calculateDtToFit(IIIII)I
    .registers 6

    sub-int/2addr p3, p1

    return p3
.end method

.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .registers 2

    .line 52
    iget p0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    const/high16 p1, 0x42340000    # 45.0f

    div-float/2addr p1, p0

    return p1
.end method

.method protected getVerticalSnapPreference()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method
