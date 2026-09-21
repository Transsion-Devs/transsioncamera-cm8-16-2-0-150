.class public final Lcom/transsion/camera/feature/imageryguide/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/imageryguide/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static ImageryGuideAutoPlayVideoView:[I = null

.field public static ImageryGuideAutoPlayVideoView_imagery_is_autoplay:I = 0x0

.field public static ImageryGuideAutoPlayVideoView_imagery_video_id:I = 0x1

.field public static ImageryGuidePageIndicator:[I = null

.field public static ImageryGuidePageIndicator_imagery_horizontalInterval:I = 0x0

.field public static ImageryGuidePageIndicator_imagery_normalColor:I = 0x1

.field public static ImageryGuidePageIndicator_imagery_normalRadius:I = 0x2

.field public static ImageryGuidePageIndicator_imagery_selectColor:I = 0x3

.field public static ImageryGuidePageIndicator_imagery_selectRadius:I = 0x4

.field public static ImageryGuidePageIndicator_imagery_verticalInterval:I = 0x5


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const v0, 0x7f04027e

    const v1, 0x7f040284

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/imageryguide/R$styleable;->ImageryGuideAutoPlayVideoView:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_16

    sput-object v0, Lcom/transsion/camera/feature/imageryguide/R$styleable;->ImageryGuidePageIndicator:[I

    return-void

    nop

    :array_16
    .array-data 4
        0x7f04027d
        0x7f04027f
        0x7f040280
        0x7f040281
        0x7f040282
        0x7f040283
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
