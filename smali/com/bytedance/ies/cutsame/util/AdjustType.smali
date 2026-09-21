.class public final Lcom/bytedance/ies/cutsame/util/AdjustType;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/bytedance/ies/cutsame/util/AdjustType;

.field public static final LIGHT_SENSATION:Ljava/lang/String; = "light_sensation"

.field public static final PARTICLE:Ljava/lang/String; = "particle"

.field public static final TYPE_BRIGHTNESS:Ljava/lang/String; = "brightness"

.field public static final TYPE_COLOR_TEMPERATURE:Ljava/lang/String; = "temperature"

.field public static final TYPE_CONTRAST:Ljava/lang/String; = "contrast"

.field public static final TYPE_FADE:Ljava/lang/String; = "fade"

.field public static final TYPE_HIGHLIGHT:Ljava/lang/String; = "highlight"

.field public static final TYPE_HUE:Ljava/lang/String; = "tone"

.field public static final TYPE_SATURATION:Ljava/lang/String; = "saturation"

.field public static final TYPE_SHADOW:Ljava/lang/String; = "shadow"

.field public static final TYPE_SHARPENING:Ljava/lang/String; = "sharpen"

.field public static final VIGNETTING:Ljava/lang/String; = "vignetting"

.field private static final allTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 13

    new-instance v0, Lcom/bytedance/ies/cutsame/util/AdjustType;

    invoke-direct {v0}, Lcom/bytedance/ies/cutsame/util/AdjustType;-><init>()V

    sput-object v0, Lcom/bytedance/ies/cutsame/util/AdjustType;->INSTANCE:Lcom/bytedance/ies/cutsame/util/AdjustType;

    .line 247
    const-string v11, "vignetting"

    const-string v12, "particle"

    const-string v1, "brightness"

    const-string v2, "contrast"

    const-string v3, "saturation"

    const-string v4, "sharpen"

    const-string v5, "highlight"

    const-string v6, "shadow"

    const-string v7, "temperature"

    const-string v8, "tone"

    const-string v9, "fade"

    const-string v10, "light_sensation"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/bytedance/ies/cutsame/util/AdjustType;->allTypes:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAllTypes()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 245
    sget-object p0, Lcom/bytedance/ies/cutsame/util/AdjustType;->allTypes:Ljava/util/List;

    return-object p0
.end method

.method public final isAdjustType(Ljava/lang/String;)Z
    .registers 2

    const-string p0, "type"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    sget-object p0, Lcom/bytedance/ies/cutsame/util/AdjustType;->allTypes:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
