.class public final Lcom/opensource/svgaplayer/bitmap/BitmapSampleSizeCalculator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/opensource/svgaplayer/bitmap/BitmapSampleSizeCalculator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/opensource/svgaplayer/bitmap/BitmapSampleSizeCalculator;

    invoke-direct {v0}, Lcom/opensource/svgaplayer/bitmap/BitmapSampleSizeCalculator;-><init>()V

    sput-object v0, Lcom/opensource/svgaplayer/bitmap/BitmapSampleSizeCalculator;->INSTANCE:Lcom/opensource/svgaplayer/bitmap/BitmapSampleSizeCalculator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final calculate(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 6

    const-string p0, "options"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget p0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-lez p3, :cond_42

    if-gtz p2, :cond_2f

    goto :goto_42

    :cond_2f
    if-gt p1, p3, :cond_33

    if-le p0, p2, :cond_42

    .line 21
    :cond_33
    div-int/lit8 p1, p1, 0x2

    .line 22
    div-int/lit8 p0, p0, 0x2

    .line 26
    :goto_37
    div-int v1, p1, v0

    if-lt v1, p3, :cond_42

    div-int v1, p0, v0

    if-lt v1, p2, :cond_42

    mul-int/lit8 v0, v0, 0x2

    goto :goto_37

    :cond_42
    :goto_42
    return v0
.end method
