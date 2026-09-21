.class public Lcom/transsion/camera/feature/mode/longexposure/capture/SceneManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CAPTURE_CANCEL:I = -0x1

.field public static final CAPTURE_STOP:I = 0x0

.field private static final STAR_MIN_CAPTURE:I = 0x3

.field private static final STELLAR_TRACK_MIN_CAPTURE:I = 0xa


# instance fields
.field private mScene:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isFlowingWaterMode(Ljava/lang/String;)Z
    .registers 2

    .line 48
    const-string v0, "flowingwater"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isTrafficOrPaintingMode(Ljava/lang/String;)Z
    .registers 2

    .line 43
    const-string/jumbo v0, "traffic"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "lightpainting"

    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    goto :goto_14

    :cond_12
    const/4 p0, 0x0

    return p0

    :cond_14
    :goto_14
    const/4 p0, 0x1

    return p0
.end method

.method public static picTraceMode(Ljava/lang/String;)Z
    .registers 2

    .line 37
    const-string/jumbo v0, "traffic"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "flowingwater"

    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "lightpainting"

    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 p0, 0x0

    return p0

    :cond_1c
    :goto_1c
    const/4 p0, 0x1

    return p0
.end method

.method public static stopCapture(Ljava/lang/String;I)I
    .registers 4

    .line 53
    const-string v0, "star"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_d

    const/4 p0, 0x3

    if-ge p1, p0, :cond_1a

    return v1

    .line 57
    :cond_d
    const-string v0, "stellartrack"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/16 p0, 0xa

    if-ge p1, p0, :cond_1a

    return v1

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getScene()Ljava/lang/String;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/SceneManager;->mScene:Ljava/lang/String;

    return-object p0
.end method

.method public updateScene(Ljava/lang/String;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/SceneManager;->mScene:Ljava/lang/String;

    return-void
.end method
