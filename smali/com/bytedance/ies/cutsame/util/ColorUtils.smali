.class public final Lcom/bytedance/ies/cutsame/util/ColorUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/bytedance/ies/cutsame/util/ColorUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bytedance/ies/cutsame/util/ColorUtils;

    invoke-direct {v0}, Lcom/bytedance/ies/cutsame/util/ColorUtils;-><init>()V

    sput-object v0, Lcom/bytedance/ies/cutsame/util/ColorUtils;->INSTANCE:Lcom/bytedance/ies/cutsame/util/ColorUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic parseColor$default(Lcom/bytedance/ies/cutsame/util/ColorUtils;Ljava/lang/String;IILjava/lang/Object;)I
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 41
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/cutsame/util/ColorUtils;->parseColor(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static synthetic rgbaStrToArgbInt$default(Lcom/bytedance/ies/cutsame/util/ColorUtils;Ljava/lang/String;IILjava/lang/Object;)I
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, -0x1

    .line 15
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/cutsame/util/ColorUtils;->rgbaStrToArgbInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final argbIntToRgbaStr(I)Ljava/lang/String;
    .registers 2

    .line 12
    sget-object p0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    shl-int/lit8 p0, p1, 0x8

    ushr-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "#%08X"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "java.lang.String.format(format, *args)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final parseColor(Ljava/lang/String;I)I
    .registers 6

    if-nez p1, :cond_3

    return p2

    :cond_3
    const/4 p0, 0x2

    const/4 v0, 0x0

    .line 45
    const-string v1, "#"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, p0, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    .line 47
    :try_start_e
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_17

    .line 53
    :cond_13
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_17

    :catchall_17
    :goto_17
    return p2
.end method

.method public final rgbaStrToArgbInt(Ljava/lang/String;I)I
    .registers 8

    if-eqz p1, :cond_32

    .line 16
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_32

    .line 19
    :cond_9
    const-string p0, "#"

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, p0, v0, v1, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 21
    :try_start_14
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_19

    goto :goto_1e

    :catchall_19
    return p2

    .line 27
    :cond_1a
    :try_start_1a
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_32

    .line 32
    :goto_1e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_2c

    invoke-static {p1, p0, v0, v1, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2c

    return p2

    :cond_2c
    shl-int/lit8 p0, p2, 0x18

    ushr-int/lit8 p1, p2, 0x8

    or-int/2addr p0, p1

    return p0

    :catchall_32
    :cond_32
    :goto_32
    return p2
.end method
