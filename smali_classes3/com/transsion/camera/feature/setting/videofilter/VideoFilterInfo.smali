.class public Lcom/transsion/camera/feature/setting/videofilter/VideoFilterInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final VIDEO_FILTER_SEEKBAR_BLACK_GOLD:Ljava/lang/String; = "golden_city"

.field private static final VIDEO_FILTER_SEEKBAR_CLASSIC_NEG:Ljava/lang/String; = "classic_neg"

.field private static final VIDEO_FILTER_SEEKBAR_CYBERPUNK:Ljava/lang/String; = "cyberpunk"

.field private static final VIDEO_FILTER_SEEKBAR_DAYDREAM:Ljava/lang/String; = "pink_dream"

.field private static final VIDEO_FILTER_SEEKBAR_MONOCHROME:Ljava/lang/String; = "monochrome"

.field private static final VIDEO_FILTER_SEEKBAR_MOROCCO:Ljava/lang/String; = "morocco"

.field private static final VIDEO_FILTER_SEEKBAR_ORIGIN:Ljava/lang/String; = "origin"

.field private static final VIDEO_FILTER_SEEKBAR_PRAIRIE:Ljava/lang/String; = "prairie"

.field private static final VIDEO_FILTER_SEEKBAR_PROFESSIONAL:Ljava/lang/String; = "professional"

.field private static final VIDEO_FILTER_SEEKBAR_TEAL_ORANGE:Ljava/lang/String; = "teal_orange"

.field private static final VIDEO_FILTER_SEEKBAR_VALUE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final VIDEO_FILTER_SEEKBAR_VIBRANT:Ljava/lang/String; = "vibrant"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    new-instance v0, Lcom/transsion/camera/feature/setting/videofilter/VideoFilterInfo$1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/videofilter/VideoFilterInfo$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/setting/videofilter/VideoFilterInfo;->VIDEO_FILTER_SEEKBAR_VALUE_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFilterSeekBarValueListSize()I
    .registers 1

    .line 36
    sget-object v0, Lcom/transsion/camera/feature/setting/videofilter/VideoFilterInfo;->VIDEO_FILTER_SEEKBAR_VALUE_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public static getFilterSeekbarValueList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 40
    sget-object v0, Lcom/transsion/camera/feature/setting/videofilter/VideoFilterInfo;->VIDEO_FILTER_SEEKBAR_VALUE_LIST:Ljava/util/List;

    return-object v0
.end method
