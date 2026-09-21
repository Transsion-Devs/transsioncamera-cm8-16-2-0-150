.class public Lcom/transsion/camera/feature/imagestyle/ImageStyleInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BROWN_SKIN_VIDEO_FILTER_ITEM_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRANSSION_FILTER_ID_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALUE_VIDEO_FILTER_1:Ljava/lang/String; = "1"

.field private static final VALUE_VIDEO_FILTER_2:Ljava/lang/String; = "2"

.field public static final VALUE_VIDEO_FILTER_ORIGIN:Ljava/lang/String; = "0"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    new-instance v0, Lcom/transsion/camera/feature/imagestyle/ImageStyleInfo$1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/imagestyle/ImageStyleInfo$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/imagestyle/ImageStyleInfo;->TRANSSION_FILTER_ID_LIST:Ljava/util/List;

    .line 25
    new-instance v0, Lcom/transsion/camera/feature/imagestyle/ImageStyleInfo$2;

    invoke-direct {v0}, Lcom/transsion/camera/feature/imagestyle/ImageStyleInfo$2;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/imagestyle/ImageStyleInfo;->BROWN_SKIN_VIDEO_FILTER_ITEM_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSupportVideoFilterIds()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 43
    sget-object v0, Lcom/transsion/camera/feature/imagestyle/ImageStyleInfo;->TRANSSION_FILTER_ID_LIST:Ljava/util/List;

    return-object v0
.end method

.method public static getVideoFilterItem(Ljava/lang/String;)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imagestyle/widget/ImageStyleItem;",
            ">;"
        }
    .end annotation

    .line 39
    sget-object p0, Lcom/transsion/camera/feature/imagestyle/ImageStyleInfo;->BROWN_SKIN_VIDEO_FILTER_ITEM_LIST:Ljava/util/List;

    return-object p0
.end method
