.class public Lcom/transsion/camera/feature/mode/aigc/info/IndicatorInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mIndicator:Ljava/lang/String;

.field private final mTitle:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/transsion/camera/feature/mode/aigc/info/IndicatorInfo;->mTitle:I

    .line 22
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/info/IndicatorInfo;->mIndicator:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public indicator()Ljava/lang/String;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/info/IndicatorInfo;->mIndicator:Ljava/lang/String;

    return-object p0
.end method

.method public title()I
    .registers 1

    .line 26
    iget p0, p0, Lcom/transsion/camera/feature/mode/aigc/info/IndicatorInfo;->mTitle:I

    return p0
.end method
