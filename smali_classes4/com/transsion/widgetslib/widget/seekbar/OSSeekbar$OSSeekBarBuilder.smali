.class public final Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OSSeekBarBuilder"
.end annotation


# instance fields
.field private leftIcon:I

.field private max:F

.field private min:F

.field private osSectionSeekbarWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;",
            ">;"
        }
    .end annotation
.end field

.field private final osWideSeekbarNew:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

.field private progress:F

.field private rightIcon:I

.field private secondTrackColor:I

.field private secondTrackColorDisable:I

.field private secondTrackWidth:I

.field private thumbHeightHios:F

.field private thumbInMaxScal:F

.field private thumbInMaxWidth:I

.field private thumbInWidth:I

.field private thumbInsideColor:I

.field private thumbInsideColorDisable:I

.field private thumbInsideUnAbleColorHios:I

.field private thumbOutColor:I

.field private thumbOutColorDisable:I

.field private thumbOutMaxScal:F

.field private thumbOutWidth:I

.field private trackColor:I

.field private trackWidth:I

.field private trackWidthMax:I


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V
    .registers 7

    .line 1356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->osWideSeekbarNew:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    if-eqz p1, :cond_d8

    .line 1385
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->osSectionSeekbarWeakReference:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    .line 1386
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->min:F

    const/high16 v1, 0x42c80000    # 100.0f

    .line 1387
    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->max:F

    .line 1388
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->progress:F

    .line 1389
    sget v0, Lcom/transsion/widgetslib/R$attr;->os_seekbar_track_width:I

    sget-object v1, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->Companion:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$Companion;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$Companion;->dp2px(I)I

    move-result v3

    # getter for: Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/transsion/widgetslib/util/Utils;->getAttrDimen(IILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->trackWidth:I

    .line 1390
    sget v0, Lcom/transsion/widgetslib/R$attr;->os_seekbar_second_track_width:I

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$Companion;->dp2px(I)I

    move-result v3

    # getter for: Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/transsion/widgetslib/util/Utils;->getAttrDimen(IILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->secondTrackWidth:I

    .line 1391
    sget v0, Lcom/transsion/widgetslib/R$attr;->os_seekbar_t_track_width:I

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$Companion;->dp2px(I)I

    move-result v2

    # getter for: Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/transsion/widgetslib/util/Utils;->getAttrDimen(IILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->trackWidthMax:I

    .line 1392
    # getter for: Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/transsion/widgetslib/R$attr;->os_fill_weaker:I

    sget v3, Lcom/transsion/widgetslib/R$color;->os_fill_weaker_hios:I

    invoke-static {v0, v2, v3}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->trackColor:I

    .line 1393
    # getter for: Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/transsion/widgetslib/R$attr;->os_platform_basic_color:I

    sget v3, Lcom/transsion/widgetslib/R$color;->os_platform_basic_color_hios:I

    invoke-static {v0, v2, v3}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->secondTrackColor:I

    .line 1394
    # getter for: Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/transsion/widgetslib/R$attr;->os_platform_basic_color:I

    sget v3, Lcom/transsion/widgetslib/R$color;->os_platform_basic_color_hios:I

    invoke-static {v0, v2, v3}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbOutColor:I

    .line 1395
    # getter for: Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/transsion/widgetslib/R$attr;->os_seekbar_section_thumb_in_color:I

    sget v3, Lcom/transsion/widgetslib/R$color;->os_color_white100:I

    invoke-static {v0, v2, v3}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbInsideColor:I

    .line 1396
    sget v0, Lcom/transsion/widgetslib/R$attr;->os_seekbar_thumb_in_width:I

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$Companion;->dp2px(I)I

    move-result v2

    # getter for: Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/transsion/widgetslib/util/Utils;->getAttrDimen(IILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbInWidth:I

    .line 1397
    sget v0, Lcom/transsion/widgetslib/R$attr;->os_seekbar_thumb_out_width:I

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$Companion;->dp2px(I)I

    move-result v2

    # getter for: Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/transsion/widgetslib/util/Utils;->getAttrDimen(IILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbOutWidth:I

    const/16 v0, 0x14

    .line 1398
    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$Companion;->dp2px(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbInMaxWidth:I

    const/high16 v0, 0x3fa00000    # 1.25f

    .line 1399
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbInMaxScal:F

    const v0, 0x3f924923

    .line 1400
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbOutMaxScal:F

    .line 1401
    # getter for: Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$attr;->os_grayfill_base:I

    sget v2, Lcom/transsion/widgetslib/R$color;->os_grayfill_base_hios:I

    invoke-static {v0, v1, v2}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->secondTrackColorDisable:I

    .line 1402
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbOutColorDisable:I

    .line 1404
    # getter for: Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$attr;->os_seekbar_thumb_in_disable_color:I

    sget v2, Lcom/transsion/widgetslib/R$color;->os_layer_low_hios:I

    invoke-static {v0, v1, v2}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(Landroid/content/Context;II)I

    move-result v0

    .line 1403
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbInsideColorDisable:I

    .line 1405
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->initExtraHiosParams(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V

    :cond_d8
    return-void
.end method

.method private final initExtraHiosParams(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V
    .registers 3

    .line 1416
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/widgetslib/R$dimen;->os_dimen_seekbar_thumb_out_width_hios:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    int-to-float p1, p1

    .line 1415
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbHeightHios:F

    return-void
.end method


# virtual methods
.method public final build()V
    .registers 2

    .line 1449
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->osSectionSeekbarWeakReference:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->osSectionSeekbarWeakReference:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    .line 1450
    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->config(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;)V

    :cond_1c
    return-void
.end method

.method public final getLeftIcon()I
    .registers 1

    .line 1378
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->leftIcon:I

    return p0
.end method

.method public final getMax()F
    .registers 1

    .line 1359
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->max:F

    return p0
.end method

.method public final getMin()F
    .registers 1

    .line 1358
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->min:F

    return p0
.end method

.method public final getOsWideSeekbarNew()Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;
    .registers 1

    .line 1356
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->osWideSeekbarNew:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    return-object p0
.end method

.method public final getProgress()F
    .registers 1

    .line 1360
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->progress:F

    return p0
.end method

.method public final getRightIcon()I
    .registers 1

    .line 1380
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->rightIcon:I

    return p0
.end method

.method public final getSecondTrackColor()I
    .registers 1

    .line 1365
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->secondTrackColor:I

    return p0
.end method

.method public final getSecondTrackColorDisable()I
    .registers 1

    .line 1374
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->secondTrackColorDisable:I

    return p0
.end method

.method public final getSecondTrackWidth()I
    .registers 1

    .line 1362
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->secondTrackWidth:I

    return p0
.end method

.method public final getThumbHeightHios()F
    .registers 1

    .line 1373
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbHeightHios:F

    return p0
.end method

.method public final getThumbInMaxScal()F
    .registers 1

    .line 1371
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbInMaxScal:F

    return p0
.end method

.method public final getThumbInMaxWidth()I
    .registers 1

    .line 1370
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbInMaxWidth:I

    return p0
.end method

.method public final getThumbInWidth()I
    .registers 1

    .line 1368
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbInWidth:I

    return p0
.end method

.method public final getThumbInsideColor()I
    .registers 1

    .line 1367
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbInsideColor:I

    return p0
.end method

.method public final getThumbInsideColorDisable()I
    .registers 1

    .line 1376
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbInsideColorDisable:I

    return p0
.end method

.method public final getThumbInsideUnAbleColorHios()I
    .registers 1

    .line 1357
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbInsideUnAbleColorHios:I

    return p0
.end method

.method public final getThumbOutColor()I
    .registers 1

    .line 1366
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbOutColor:I

    return p0
.end method

.method public final getThumbOutColorDisable()I
    .registers 1

    .line 1375
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbOutColorDisable:I

    return p0
.end method

.method public final getThumbOutMaxScal()F
    .registers 1

    .line 1372
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbOutMaxScal:F

    return p0
.end method

.method public final getThumbOutWidth()I
    .registers 1

    .line 1369
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbOutWidth:I

    return p0
.end method

.method public final getTrackColor()I
    .registers 1

    .line 1364
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->trackColor:I

    return p0
.end method

.method public final getTrackWidth()I
    .registers 1

    .line 1361
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->trackWidth:I

    return p0
.end method

.method public final getTrackWidthMax()I
    .registers 1

    .line 1363
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->trackWidthMax:I

    return p0
.end method

.method public final initHiOS()Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;
    .registers 6

    .line 1421
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->osWideSeekbarNew:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    if-eqz v0, :cond_ac

    .line 1422
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->osWideSeekbarNew:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->osSectionSeekbarWeakReference:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    .line 1423
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->min:F

    const/high16 v1, 0x42c80000    # 100.0f

    .line 1424
    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->max:F

    .line 1425
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->progress:F

    .line 1428
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->osWideSeekbarNew:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    # getter for: Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$style;->OS_Theme_Material_hios:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1431
    sget v1, Lcom/transsion/widgetslib/R$attr;->os_seekbar_track_width:I

    sget-object v2, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->Companion:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$Companion;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$Companion;->dp2px(I)I

    move-result v4

    invoke-static {v1, v4, v0}, Lcom/transsion/widgetslib/util/Utils;->getAttrDimen(IILandroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->trackWidth:I

    .line 1432
    sget v1, Lcom/transsion/widgetslib/R$attr;->os_seekbar_second_track_width:I

    invoke-virtual {v2, v3}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$Companion;->dp2px(I)I

    move-result v4

    invoke-static {v1, v4, v0}, Lcom/transsion/widgetslib/util/Utils;->getAttrDimen(IILandroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->secondTrackWidth:I

    .line 1433
    sget v1, Lcom/transsion/widgetslib/R$attr;->os_seekbar_t_track_width:I

    invoke-virtual {v2, v3}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$Companion;->dp2px(I)I

    move-result v3

    invoke-static {v1, v3, v0}, Lcom/transsion/widgetslib/util/Utils;->getAttrDimen(IILandroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->trackWidthMax:I

    .line 1434
    sget v1, Lcom/transsion/widgetslib/R$attr;->os_fill_weaker:I

    sget v3, Lcom/transsion/widgetslib/R$color;->os_fill_weaker_hios:I

    invoke-static {v0, v1, v3}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->trackColor:I

    .line 1435
    sget v1, Lcom/transsion/widgetslib/R$attr;->os_platform_basic_color:I

    sget v3, Lcom/transsion/widgetslib/R$color;->os_platform_basic_color_hios:I

    invoke-static {v0, v1, v3}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->secondTrackColor:I

    .line 1436
    sget v1, Lcom/transsion/widgetslib/R$attr;->os_platform_basic_color:I

    sget v3, Lcom/transsion/widgetslib/R$color;->os_platform_basic_color_hios:I

    invoke-static {v0, v1, v3}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbOutColor:I

    .line 1437
    sget v1, Lcom/transsion/widgetslib/R$attr;->os_seekbar_section_thumb_in_color:I

    sget v3, Lcom/transsion/widgetslib/R$color;->os_color_white100:I

    invoke-static {v0, v1, v3}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbInsideColor:I

    .line 1438
    sget v1, Lcom/transsion/widgetslib/R$attr;->os_seekbar_thumb_in_width:I

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$Companion;->dp2px(I)I

    move-result v3

    invoke-static {v1, v3, v0}, Lcom/transsion/widgetslib/util/Utils;->getAttrDimen(IILandroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbInWidth:I

    .line 1439
    sget v1, Lcom/transsion/widgetslib/R$attr;->os_seekbar_thumb_out_width:I

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$Companion;->dp2px(I)I

    move-result v3

    invoke-static {v1, v3, v0}, Lcom/transsion/widgetslib/util/Utils;->getAttrDimen(IILandroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbOutWidth:I

    const/16 v1, 0x14

    .line 1440
    invoke-virtual {v2, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$Companion;->dp2px(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbInMaxWidth:I

    .line 1441
    sget v1, Lcom/transsion/widgetslib/R$attr;->os_grayfill_base:I

    sget v2, Lcom/transsion/widgetslib/R$color;->os_grayfill_base_hios:I

    invoke-static {v0, v1, v2}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->secondTrackColorDisable:I

    .line 1442
    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbOutColorDisable:I

    .line 1443
    sget v1, Lcom/transsion/widgetslib/R$attr;->os_seekbar_thumb_in_disable_color:I

    sget v2, Lcom/transsion/widgetslib/R$color;->os_layer_low_hios:I

    invoke-static {v0, v1, v2}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbInsideColorDisable:I

    :cond_ac
    return-object p0
.end method

.method public final leftIcon(I)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;
    .registers 2

    .line 1582
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->leftIcon:I

    return-object p0
.end method

.method public final max(F)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;
    .registers 2

    .line 1517
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->max:F

    return-object p0
.end method

.method public final min(F)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;
    .registers 2

    .line 1511
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->min:F

    .line 1512
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->progress:F

    return-object p0
.end method

.method public final progress(F)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;
    .registers 2

    .line 1522
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->progress:F

    return-object p0
.end method

.method public final rightIcon(I)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;
    .registers 2

    .line 1587
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->rightIcon:I

    return-object p0
.end method

.method public final secondTrackColor(I)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;
    .registers 2

    .line 1542
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->secondTrackColor:I

    return-object p0
.end method

.method public final secondTrackColorDisable(I)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;
    .registers 2

    .line 1496
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->secondTrackColorDisable:I

    return-object p0
.end method

.method public final secondTrackWidth(I)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;
    .registers 3

    .line 1532
    sget-object v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->Companion:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$Companion;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$Companion;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->secondTrackWidth:I

    return-object p0
.end method

.method public final setLeftIcon(I)V
    .registers 2

    .line 1378
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->leftIcon:I

    return-void
.end method

.method public final setMax(F)V
    .registers 2

    .line 1359
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->max:F

    return-void
.end method

.method public final setMin(F)V
    .registers 2

    .line 1358
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->min:F

    return-void
.end method

.method public final setProgress(F)V
    .registers 2

    .line 1360
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->progress:F

    return-void
.end method

.method public final setRightIcon(I)V
    .registers 2

    .line 1380
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->rightIcon:I

    return-void
.end method

.method public final setSecondTrackColor(I)V
    .registers 2

    .line 1365
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->secondTrackColor:I

    return-void
.end method

.method public final setSecondTrackColorDisable(I)V
    .registers 2

    .line 1374
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->secondTrackColorDisable:I

    return-void
.end method

.method public final setSecondTrackWidth(I)V
    .registers 2

    .line 1362
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->secondTrackWidth:I

    return-void
.end method

.method public final setThumbHeightHios(F)V
    .registers 2

    .line 1373
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbHeightHios:F

    return-void
.end method

.method public final setThumbInMaxScal(F)V
    .registers 2

    .line 1371
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbInMaxScal:F

    return-void
.end method

.method public final setThumbInMaxWidth(I)V
    .registers 2

    .line 1370
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbInMaxWidth:I

    return-void
.end method

.method public final setThumbInWidth(I)V
    .registers 2

    .line 1368
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbInWidth:I

    return-void
.end method

.method public final setThumbInsideColor(I)V
    .registers 2

    .line 1367
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbInsideColor:I

    return-void
.end method

.method public final setThumbInsideColorDisable(I)V
    .registers 2

    .line 1376
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbInsideColorDisable:I

    return-void
.end method

.method public final setThumbInsideUnAbleColorHios(I)V
    .registers 2

    .line 1357
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbInsideUnAbleColorHios:I

    return-void
.end method

.method public final setThumbOutColor(I)V
    .registers 2

    .line 1366
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbOutColor:I

    return-void
.end method

.method public final setThumbOutColorDisable(I)V
    .registers 2

    .line 1375
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbOutColorDisable:I

    return-void
.end method

.method public final setThumbOutMaxScal(F)V
    .registers 2

    .line 1372
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbOutMaxScal:F

    return-void
.end method

.method public final setThumbOutWidth(I)V
    .registers 2

    .line 1369
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbOutWidth:I

    return-void
.end method

.method public final setTrackColor(I)V
    .registers 2

    .line 1364
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->trackColor:I

    return-void
.end method

.method public final setTrackWidth(I)V
    .registers 2

    .line 1361
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->trackWidth:I

    return-void
.end method

.method public final setTrackWidthMax(I)V
    .registers 2

    .line 1363
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->trackWidthMax:I

    return-void
.end method

.method public final thumbHalfWidthHios(I)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;
    .registers 2

    return-object p0
.end method

.method public final thumbHeightHios(F)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;
    .registers 2

    .line 1479
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbHeightHios:F

    return-object p0
.end method

.method public final thumbInColor(I)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;
    .registers 2

    .line 1577
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbInsideColor:I

    return-object p0
.end method

.method public final thumbInMaxScal(I)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;
    .registers 2

    int-to-float p1, p1

    .line 1562
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbInMaxScal:F

    return-object p0
.end method

.method public final thumbInMaxWidth(I)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;
    .registers 2

    .line 1557
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbInMaxWidth:I

    return-object p0
.end method

.method public final thumbInWidth(I)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;
    .registers 2

    .line 1547
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbInWidth:I

    return-object p0
.end method

.method public final thumbInsideColorDisable(I)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;
    .registers 2

    .line 1506
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbInsideColorDisable:I

    return-object p0
.end method

.method public final thumbOutColor(I)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;
    .registers 2

    .line 1572
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbOutColor:I

    return-object p0
.end method

.method public final thumbOutColorDisable(I)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;
    .registers 2

    .line 1501
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbOutColorDisable:I

    return-object p0
.end method

.method public final thumbOutMaxScal(I)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;
    .registers 2

    int-to-float p1, p1

    .line 1567
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbOutMaxScal:F

    return-object p0
.end method

.method public final thumbOutWidth(I)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;
    .registers 2

    .line 1552
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbOutWidth:I

    return-object p0
.end method

.method public final thumbShadowColor(I)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;
    .registers 2

    return-object p0
.end method

.method public final thumbShadowColorAlphaMax(I)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;
    .registers 2

    return-object p0
.end method

.method public final thumbShadowColorAlphaMin(I)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;
    .registers 2

    return-object p0
.end method

.method public final thumbShadowDyMax(I)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;
    .registers 2

    return-object p0
.end method

.method public final thumbShadowDyMin(I)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;
    .registers 2

    return-object p0
.end method

.method public final thumbShadowRadiusHiosMax(I)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;
    .registers 2

    return-object p0
.end method

.method public final thumbShadowRadiusHiosMin(I)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;
    .registers 2

    return-object p0
.end method

.method public final trackColor(I)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;
    .registers 2

    .line 1537
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->trackColor:I

    return-object p0
.end method

.method public final trackWidth(I)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;
    .registers 3

    .line 1527
    sget-object v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->Companion:Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$Companion;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$Companion;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->trackWidth:I

    return-object p0
.end method
