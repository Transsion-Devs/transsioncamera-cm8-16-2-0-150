.class public Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilterInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FILTER_ID_FILTER_NAME_MAP:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap;"
        }
    .end annotation
.end field

.field private static final FILTER_ID_INFO_MAP:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap;"
        }
    .end annotation
.end field

.field private static final FILTER_NAME_ABAO:Ljava/lang/String; = "abao"

.field private static final FILTER_NAME_BGOLD:Ljava/lang/String; = "black_gold"

.field private static final FILTER_NAME_BLACK_GOLD:Ljava/lang/String; = "black_gold"

.field private static final FILTER_NAME_BLUES:Ljava/lang/String; = "blues"

.field private static final FILTER_NAME_BRIGHT:Ljava/lang/String; = "bright"

.field private static final FILTER_NAME_CYBERPUNK:Ljava/lang/String; = "cybepunk"

.field private static final FILTER_NAME_DEEP:Ljava/lang/String; = "deep"

.field private static final FILTER_NAME_ELECTRONIC:Ljava/lang/String; = "electronic"

.field private static final FILTER_NAME_GREEN_ORANGE:Ljava/lang/String; = "green_orange"

.field private static final FILTER_NAME_MOVIE:Ljava/lang/String; = "film"

.field private static final FILTER_NAME_ORIGIN:Ljava/lang/String; = "supernight_filter_off"

.field private static final FILTER_NAME_PARIS:Ljava/lang/String; = "paris"

.field private static final FILTER_NAME_SUNSET:Ljava/lang/String; = "sunset"

.field private static final SUPERNIGHT_FILTER_STR_IDS:[Ljava/lang/String;

.field private static final TRANSSION_FILTER_ID_FILTER_NAME_MAP:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap;"
        }
    .end annotation
.end field

.field private static final TRANSSION_FILTER_ID_INFO_MAP:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap;"
        }
    .end annotation
.end field

.field private static final TRANSSION_SUPERNIGHT_FILTER_STR_IDS:[Ljava/lang/String;

.field public static final USE_NVS_ALGO_TYPE:I = 0x1

.field public static final USE_TRANSSION_ALGO_TYPE:I = 0x2

.field private static final VALUE_FILTER_ABAO:I = 0x5

.field private static final VALUE_FILTER_BGOLD:I = 0x6

.field private static final VALUE_FILTER_BLACK_GOLD:I = 0x2

.field private static final VALUE_FILTER_BLUES:I = 0x3

.field private static final VALUE_FILTER_BRIGHT:I = 0x2

.field private static final VALUE_FILTER_CYBERPUNK:I = 0x4

.field private static final VALUE_FILTER_DEEP:I = 0x1

.field private static final VALUE_FILTER_ELECTRONIC:I = 0x3

.field private static final VALUE_FILTER_GREEN_ORANGE:I = 0x1

.field private static final VALUE_FILTER_MOVIE:I = 0x5

.field private static final VALUE_FILTER_OIL:I = 0x7

.field private static final VALUE_FILTER_ORIGIN:I = 0x0

.field private static final VALUE_FILTER_PARIS:I = 0x6

.field private static final VALUE_FILTER_SUNSET:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 49
    const-string v5, "paris"

    const-string v6, "abao"

    const-string v0, "supernight_filter_off"

    const-string v1, "black_gold"

    const-string v2, "green_orange"

    const-string v3, "blues"

    const-string v4, "cybepunk"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilterInfo;->SUPERNIGHT_FILTER_STR_IDS:[Ljava/lang/String;

    .line 55
    const-string v6, "film"

    const-string v7, "black_gold"

    const-string v1, "supernight_filter_off"

    const-string v2, "deep"

    const-string v3, "bright"

    const-string v4, "electronic"

    const-string v5, "sunset"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilterInfo;->TRANSSION_SUPERNIGHT_FILTER_STR_IDS:[Ljava/lang/String;

    .line 61
    new-instance v0, Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilterInfo$1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilterInfo$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilterInfo;->FILTER_ID_INFO_MAP:Landroidx/collection/ArrayMap;

    .line 73
    new-instance v0, Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilterInfo$2;

    invoke-direct {v0}, Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilterInfo$2;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilterInfo;->TRANSSION_FILTER_ID_INFO_MAP:Landroidx/collection/ArrayMap;

    .line 85
    new-instance v0, Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilterInfo$3;

    invoke-direct {v0}, Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilterInfo$3;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilterInfo;->FILTER_ID_FILTER_NAME_MAP:Landroidx/collection/ArrayMap;

    .line 97
    new-instance v0, Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilterInfo$4;

    invoke-direct {v0}, Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilterInfo$4;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilterInfo;->TRANSSION_FILTER_ID_FILTER_NAME_MAP:Landroidx/collection/ArrayMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCaptureFilterIdByFilterName(Ljava/lang/String;I)I
    .registers 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_16

    .line 112
    sget-object v0, Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilterInfo;->FILTER_ID_FILTER_NAME_MAP:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p0}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 113
    invoke-virtual {v0, p0}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2d

    .line 115
    sget-object p1, Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilterInfo;->TRANSSION_FILTER_ID_FILTER_NAME_MAP:Landroidx/collection/ArrayMap;

    invoke-virtual {p1, p0}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 116
    invoke-virtual {p1, p0}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_2d
    return v0
.end method

.method public static getItemInfoByFilterId(Ljava/lang/String;I)Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;
    .registers 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_12

    .line 123
    sget-object v0, Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilterInfo;->FILTER_ID_INFO_MAP:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p0}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 124
    invoke-virtual {v0, p0}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    const/4 v1, 0x2

    if-ne p1, v1, :cond_25

    .line 126
    sget-object p1, Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilterInfo;->TRANSSION_FILTER_ID_INFO_MAP:Landroidx/collection/ArrayMap;

    invoke-virtual {p1, p0}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 127
    invoke-virtual {p1, p0}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    return-object p0

    :cond_25
    return-object v0
.end method

.method public static getSupportFilterIds(Z)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_9

    .line 133
    sget-object p0, Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilterInfo;->TRANSSION_SUPERNIGHT_FILTER_STR_IDS:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_9
    sget-object p0, Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilterInfo;->SUPERNIGHT_FILTER_STR_IDS:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
