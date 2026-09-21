.class public Lcom/transsion/hubsdk/api/graphics/TranOutline;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;
    }
.end annotation


# static fields
.field private static final CORNER_VALUES:[I

.field private static final ROUND_RATIO:F = 1.4f


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/graphics/TranAospOutline;

.field private mThubService:Lcom/transsion/hubsdk/core/graphics/TranThubOutline;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 32
    invoke-static {}, Lcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;->values()[Lcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/transsion/hubsdk/api/graphics/TranOutline;->CORNER_VALUES:[I

    .line 35
    sget-object v1, Lcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;->TOP_LEFT:Lcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v0, v2

    .line 36
    sget-object v2, Lcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;->TOP_RIGHT:Lcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x2

    aput v4, v0, v3

    .line 37
    sget-object v3, Lcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;->BOTTOM_RIGHT:Lcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v0, v4

    .line 38
    sget-object v4, Lcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;->BOTTOM_LEFT:Lcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/16 v6, 0x8

    aput v6, v0, v5

    .line 40
    sget-object v5, Lcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;->LEFT:Lcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v0, v6

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v7, v0, v7

    or-int/2addr v6, v7

    aput v6, v0, v5

    .line 41
    sget-object v5, Lcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;->TOP:Lcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v0, v6

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v7, v0, v7

    or-int/2addr v6, v7

    aput v6, v0, v5

    .line 42
    sget-object v5, Lcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;->RIGHT:Lcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v0, v6

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v7, v0, v7

    or-int/2addr v6, v7

    aput v6, v0, v5

    .line 43
    sget-object v5, Lcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;->BOTTOM:Lcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v0, v6

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v7, v0, v7

    or-int/2addr v6, v7

    aput v6, v0, v5

    .line 45
    sget-object v5, Lcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;->ALL:Lcom/transsion/hubsdk/api/graphics/TranCanvas$CornerFlag;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v0, v1

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v0, v2

    or-int/2addr v1, v2

    .line 46
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v0, v2

    or-int/2addr v1, v2

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v0, v2

    or-int/2addr v1, v2

    aput v1, v0, v5

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/graphics/ITranOutlineAdapter;
    .registers 2

    .line 52
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 53
    iget-object p1, p0, Lcom/transsion/hubsdk/api/graphics/TranOutline;->mThubService:Lcom/transsion/hubsdk/core/graphics/TranThubOutline;

    if-nez p1, :cond_11

    new-instance p1, Lcom/transsion/hubsdk/core/graphics/TranThubOutline;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/graphics/TranThubOutline;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/graphics/TranOutline;->mThubService:Lcom/transsion/hubsdk/core/graphics/TranThubOutline;

    :cond_11
    return-object p1

    .line 55
    :cond_12
    iget-object p1, p0, Lcom/transsion/hubsdk/api/graphics/TranOutline;->mAospService:Lcom/transsion/hubsdk/aosp/graphics/TranAospOutline;

    if-nez p1, :cond_1d

    new-instance p1, Lcom/transsion/hubsdk/aosp/graphics/TranAospOutline;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/graphics/TranAospOutline;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/graphics/TranOutline;->mAospService:Lcom/transsion/hubsdk/aosp/graphics/TranAospOutline;

    :cond_1d
    return-object p1
.end method

.method public setSmoothRoundRect(Landroid/graphics/Outline;IIIIFLcom/transsion/hubsdk/api/graphics/TranOutline$CornerFlag;)V
    .registers 9

    if-eqz p1, :cond_18

    const v0, 0x3fb33333    # 1.4f

    mul-float/2addr p6, v0

    .line 77
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33431:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/graphics/TranOutline;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/graphics/ITranOutlineAdapter;

    move-result-object p0

    sget-object v0, Lcom/transsion/hubsdk/api/graphics/TranOutline;->CORNER_VALUES:[I

    invoke-virtual {p7}, Ljava/lang/Enum;->ordinal()I

    move-result p7

    aget p7, v0, p7

    invoke-interface/range {p0 .. p7}, Lcom/transsion/hubsdk/interfaces/graphics/ITranOutlineAdapter;->setSmoothRoundRect(Landroid/graphics/Outline;IIIIFI)V

    return-void

    .line 74
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal parameters outline == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public smoothcornerCubicEdgeEnabled()Z
    .registers 2

    .line 90
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33431:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/graphics/TranOutline;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/graphics/ITranOutlineAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/graphics/ITranOutlineAdapter;->smoothcornerCubicEdgeEnabled()Z

    move-result p0

    return p0
.end method
