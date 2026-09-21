.class public Lcom/transsion/camera/feature/mode/vlog/bean/FrameSelectInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final height:I

.field private final ptsMs:J

.field private final width:I

.field private final yuvBytes:[B


# direct methods
.method public constructor <init>(IIJ[B)V
    .registers 6

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/FrameSelectInfo;->width:I

    .line 11
    iput p2, p0, Lcom/transsion/camera/feature/mode/vlog/bean/FrameSelectInfo;->height:I

    .line 12
    iput-wide p3, p0, Lcom/transsion/camera/feature/mode/vlog/bean/FrameSelectInfo;->ptsMs:J

    .line 13
    iput-object p5, p0, Lcom/transsion/camera/feature/mode/vlog/bean/FrameSelectInfo;->yuvBytes:[B

    return-void
.end method


# virtual methods
.method public getHeight()I
    .registers 1

    .line 21
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/FrameSelectInfo;->height:I

    return p0
.end method

.method public getPtsMs()J
    .registers 3

    .line 25
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/FrameSelectInfo;->ptsMs:J

    return-wide v0
.end method

.method public getWidth()I
    .registers 1

    .line 17
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/FrameSelectInfo;->width:I

    return p0
.end method

.method public getYuvBytes()[B
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/FrameSelectInfo;->yuvBytes:[B

    return-object p0
.end method
